package ua.kpi.lab7.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kpi.lab7.exceptions.IllegalTriangleSides;
import ua.kpi.lab7.models.Triangle;

@Controller
@RequestMapping("/lab7")
public class TriangleController {

	@RequestMapping("/showTriangleForm")
	public String show(Model theModel) {
		Triangle triangle = new Triangle();
		theModel.addAttribute(triangle);
		return "triangle-form";
	}

	@RequestMapping("/calculate")
	public String calculate(@ModelAttribute Triangle triangle, HttpServletRequest request, Model theModel) throws IllegalTriangleSides {
		String button = request.getParameter("calcButton");
		
		if (button.equals("calculate")) {
			theModel.addAttribute("perimeter", triangle.calculatePerimeter());
			
		} else if (button.equals("calculateNoSpec")) {
			theModel.addAttribute("perimeter", triangle.calculatePerimeterNoSpec());
			
		}else if (button.equals("calculateStandart")) {
			theModel.addAttribute("perimeter", triangle.calculatePerimeterStandart());
			
		}else if (button.equals("calculateOwn")) {
			theModel.addAttribute("perimeter", triangle.calculatePerimeterOwn());
			
		}
		return "triangle-result";
	}

}
