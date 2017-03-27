package ua.kpi.email;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("request")
public class EmailController {

	@Autowired
	private EmailService emailService;

	@RequestMapping("/email")
	public String sendEmail(HttpServletRequest request) {
		String from = request.getParameter("Email");
		String name = request.getParameter("Name");
		String subject = request.getParameter("Subject");
		String msg = request.getParameter("Comment");
		String sendData = name + ", " + from + ": " + msg;
		emailService.sendEmail("vitaliaventel@gmail.com", from, subject, sendData);

		return "redirect:/";
	}
}
