package co.grandcircus.famouslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.famouslab.ApiService;

@Controller
public class FamousLabController {
	
	@Autowired
	private ApiService apiService;
	
	@RequestMapping("/")
	public ModelAndView showTiny() {
		return new ModelAndView("tiny", "tiny", apiService.showTiny());
	}
	
	@RequestMapping("/complete")
	public ModelAndView showComplete() {
		return new ModelAndView("complete", "complete", apiService.showComplete());
	}
	
}
