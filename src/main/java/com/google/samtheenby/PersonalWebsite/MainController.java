package com.google.samtheenby.PersonalWebsite;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MainController {
	
	@Autowired
	private EmailConfig emailConf;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index", "message", "message");
	}
	
	@PostMapping("/")
	public ModelAndView submitEmail(
			@RequestParam String name,
			@RequestParam String email,
			@RequestParam String message,
			RedirectAttributes redir
			) {
		
		// create a mail sender SOURCE Romanian coder youtube
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost(emailConf.getHost());
		mailSender.setPort(emailConf.getPort());
		mailSender.setUsername(emailConf.getUsername());
		mailSender.setPassword(emailConf.getPassword());
		
		// create email instance
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom(name);
		mailMessage.setTo("SamTheEnby@gmail.com");
		mailMessage.setSubject("New Message from " + name);
		mailMessage.setText(message + "\nReplies to : " + email);
		
		
		// set properties baledung.com/spring-email
	    Properties props = mailSender.getJavaMailProperties();
	    props.put("mail.transport.protocol", "smtp");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.debug", "true");
		
		// send mail
		mailSender.send(mailMessage);
		
		redir.addFlashAttribute("message", "message");
		return new ModelAndView("redirect:/");
	}
}
