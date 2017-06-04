/*
  Time & Date
 day()
 hour()
 millis()
 minute()
 month()
 second()
 year()
 */

import org.puredata.processing.PureData;

PureData pd;

int hour;
int minute;
int second;
int time;
String timeString, hourString, minuteString, secondString;
String[] a;
char hour1, hour2, minute1, minute2, second1, second2;

void setup() {   
  //frameRate(10);
  pd = new PureData(this, 44100, 0, 2);
  //pd.openPatch("time.pd");
  //pd.start();
}

void draw() {
  background(0);
  timeString = String.format("%02d%02d%02d", hour(), minute(), second());
  hourString = String.format("%02d", hour());
  minuteString = String.format("%02d", minute());
  secondString = String.format("%02d", second());
  
  //hour1 = hourString.substring(0,1);
  //hour2 = hourString.substring(1,2);
  //minute1 = minuteString.substring(0,1);
  //minute2 = minuteString.substring(1,2);
  //second1 = secondString.substring(0,1);
  //second2 = secondString.substring(1,2);
  
  hour1 = timeString.charAt(0);
  hour2 = timeString.charAt(1);
  minute1 = timeString.charAt(2);
  minute2 = timeString.charAt(3);
  second1 = timeString.charAt(4); 
  second2 = timeString.charAt(5);
 //println(hourString.substring(0,1));
 println(second1,second2);
 //println(timeString);
 //System.out.printf("%2d", second());

  //println(hourString, minuteString, secondString);
  //pd.sendFloat("hour", hour());
  //pd.sendFloat("minute", minute());
  //pd.sendFloat("second", second());
}