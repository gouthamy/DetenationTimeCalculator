#Detenation Time Calculator

PMP Service that's responsible for ingesting contents of HFN Excel Spreadsheets into our DB

#Environment Setup
DTC('Detenation Time Calculator') is built on Spring Boot which makes it very easy to setup and build Java/spring based applications. All we need is JDK (Oracle JDK 8) and Maven (v 3.3).

 * JDK can be downloaded from [Oracle download site](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
 * Maven can be downloaded from [Maven site](https://maven.apache.org/download.html)
 


#Build using maven
 >>  mvn clean package (-DskipTests to skip tests)

#To run PMP locally
 >> java -jar target/detenation-time-calculator-0.0.1-SNAPSHOT.war
This one command runs the DTC application within an embedded tomcat server that's included within Spring Boot
