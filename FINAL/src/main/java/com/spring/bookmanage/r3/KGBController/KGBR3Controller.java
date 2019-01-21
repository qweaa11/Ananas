package com.spring.bookmanage.r3.KGBController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KGBR3Controller {

	@RequestMapping(value="/r3.ana", method= {RequestMethod.GET})
	public String r3Main() {
		
		return "r3/r3Main.tiles1";
		
	}// end of r3
	
}
