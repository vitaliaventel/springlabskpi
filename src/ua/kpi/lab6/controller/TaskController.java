package ua.kpi.lab6.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ua.kpi.lab6.models.Task;
import ua.kpi.lab6.models.TaskContent;
import ua.kpi.lab6.models.TestFactory;

@Controller
@RequestMapping("/lab6_2")
@Scope("session")
public class TaskController {

	@RequestMapping("/taskForm")
	public String showForm(Model theModel) {
		theModel.addAttribute("task", new Task());
		return "taskForm";
	}

	@RequestMapping("/createTask")
	public String processForm(@ModelAttribute("task") Task theTask, HttpServletRequest request, Model theModel) {
		String message = "";
		TaskContent taskContent = (TaskContent) request.getSession().getAttribute("content");
		String button = request.getParameter("taskButton");
		if (button.equals("Create")) {
			if (taskContent.addTask(theTask)) {
				message += "Success! Task was created: " + theTask.toString();
			} else {
				message += "Task wasn't created :(";
			}
		} else if (button.equals("Delete")) {
			if (taskContent.removeTask(theTask.getQuestion())) {
				message += "Success! Task was deleted: " + theTask.toString();
			} else {
				message += "Task wasn't deleted :(";
			}
		}
		request.getSession().setAttribute("content", taskContent);
		request.getSession().setAttribute("message", message);
		theModel.addAttribute("task", new Task());
		return "taskForm";
	}

	@RequestMapping("/createTaskContent")
	public String createContent(@RequestParam("tcName") String name, HttpServletRequest request, Model theModel) {
		String button = request.getParameter("tc");
		String page = "taskForm";
		if (button.equals("New")) {
			TaskContent tc = new TaskContent();
			tc.setName(name);
			request.getSession().setAttribute("contentName", name);
			request.getSession().setAttribute("content", tc);
		} else if (button.equals("Show all")) {
			TaskContent taskContent = (TaskContent) request.getSession().getAttribute("content");
			if (taskContent != null) {
				request.getSession().setAttribute("taskList", taskContent.getContent().values());
			}
			page = "infoTask";
		}
		theModel.addAttribute("task", new Task());
		return page;
	}

	@RequestMapping("/createTest")
	public String createContent(@RequestParam("testSize") int testSize, HttpServletRequest request, Model theModel) {
		TaskContent taskContent = (TaskContent) request.getSession().getAttribute("content");
		TaskContent test = TestFactory.createTest(taskContent, testSize);
		int total = 0;
		int yourResult = 0;
		for (Task t : test.getContent().values()) {
			total += t.getMark();
		}
		request.getSession().setAttribute("totalMark", total);
		request.getSession().setAttribute("yourResult", yourResult);
		request.getSession().setAttribute("testContent", test);
		request.getSession().setAttribute("test", test.getContent().keySet());
		return "test-page";
	}

	@RequestMapping("/chooseQuestion")
	public String chooseQuestion(HttpServletRequest request) {
		String qst = request.getParameter("question");
		TaskContent taskContent = (TaskContent) request.getSession().getAttribute("testContent");
		request.setAttribute("testTask", taskContent.getTask(qst));
		String msg = "Test in process";
		request.setAttribute("status", msg);
		return "test-page";
	}

	@RequestMapping("/checkTest")
	public String testPerform(HttpServletRequest request) {
		String msg = "";
		String page = "test-page";
		int correctAns = Integer.parseInt(request.getParameter("answer"));
		String question = request.getParameter("question");
		TaskContent taskContent = (TaskContent) request.getSession().getAttribute("testContent");
		Task theTask = taskContent.getTask(question);
		if (theTask.getCorrectAnswer() == correctAns) {
			int temp = theTask.getMark() + (int) request.getSession().getAttribute("yourResult");
			request.getSession().setAttribute("yourResult", temp);
			msg = "Correct answer!!!";
		} else {
			msg = "Wrong answer ;(";
		}
		taskContent.removeTask(theTask.getQuestion());
		if (taskContent.getContent().size() == 0) {
			page = "testResult";
			msg = "No questions! Test already done :)";
		}
		request.getSession().setAttribute("test", taskContent.getContent().keySet());
		request.setAttribute("status", msg);
		return page;
	}

}
