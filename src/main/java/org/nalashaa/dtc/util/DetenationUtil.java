package org.nalashaa.dtc.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.nalashaa.dtc.model.Detenation;
import org.nalashaa.dtc.model.Offenses;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 
 * @author Goutham
 *
 */
public class DetenationUtil {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(DetenationUtil.class);

	/**
	 * This method is used to fetch existing offenses type(similar to database)
	 * 
	 * @return
	 */
	public static Offenses[] getOffenses(){
		ClassPathResource classPathResource = new ClassPathResource("offensesType.json");
		Detenation detenation = null;
		InputStream inputStream;
		try {
			inputStream = classPathResource.getInputStream();
			ObjectMapper mapper = new ObjectMapper();
			detenation = mapper.readValue(inputStream, Detenation.class);
			return detenation.getOffenses();
		} catch (IOException e) {
			LOGGER.error("Exception occured while parsing offensesType.json : %d",e.getMessage());
		}
		return null;
	}
	
	public static void updateOffense(Detenation detenation){
		ClassPathResource classPathResource = new ClassPathResource("offensesType.json");
		File file = classPathResource.getFile();
		try {
			detenation.getOffenses().
			ObjectMapper mapper = new ObjectMapper();
			detenation = mapper.readValue(inputStream, Detenation.class);
			return detenation.getOffenses();
		} catch (IOException e) {
			LOGGER.error("Exception occured while parsing offensesType.json : %d",e.getMessage());
		}
		return null;
	}

}
