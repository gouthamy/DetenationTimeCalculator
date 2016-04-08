package org.nalashaa.dtc.model;

/**
 * 
 * @author Goutham
 *
 */
public class Offenses {

	private String id;
	private String offenseName;
	private String detenationPeriod;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOffenseName() {
		return offenseName;
	}
	public void setOffenseName(String offenseName) {
		this.offenseName = offenseName;
	}
	public String getDetenationPeriod() {
		return detenationPeriod;
	}
	public void setDetenationPeriod(String detenationPeriod) {
		this.detenationPeriod = detenationPeriod;
	}
	@Override
	public String toString() {
		return "Offenses [id=" + id + ", offenseName=" + offenseName + ", detenationPeriod=" + detenationPeriod + "]";
	}
	
}
