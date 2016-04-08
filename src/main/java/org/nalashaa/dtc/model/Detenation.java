package org.nalashaa.dtc.model;

import java.util.Arrays;

/**
 * 
 * @author Goutham
 *
 */
public class Detenation {

	private String type;
	private Offenses[] offenses;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Offenses[] getOffenses() {
		return offenses;
	}
	public void setOffenses(Offenses[] offenses) {
		this.offenses = offenses;
	}
	@Override
	public String toString() {
		return "Detenation [type=" + type + ", offenses=" + Arrays.toString(offenses) + "]";
	}

}
