package org.nalashaa.dtc.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.nalashaa.dtc.model.Detenation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 
 * @author Goutham
 *
 */
@Controller
public class DTCController {

	private static final Logger LOGGER = LoggerFactory.getLogger(DTCController.class);

	@RequestMapping("/")
	@ResponseBody
	public String index() throws IOException {
		LOGGER.debug("Started index");
		try{
		ClassPathResource classPathResource = new ClassPathResource("offensesType.json");
		InputStream inputStream = classPathResource.getInputStream();
		ObjectMapper mapper = new ObjectMapper();
		Detenation detenation = mapper.readValue(inputStream, Detenation.class);
		System.out.println(detenation);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "Greetings from Dtc controller";
	}

}
