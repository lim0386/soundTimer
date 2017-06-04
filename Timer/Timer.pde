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
String hourString, minuteString, secondString;
String[] a;
char hour1, hour2, minute1, minute2, second1, second2;

void setup() {   
  pd = new PureData(this, 44100, 0, 2);
  //pd.openPatch("time.pd");
  //pd.start();
}

void draw() {
  background(0);
  
  hourString = String.format("%02d", hour());
  minuteString = String.format("%02d", minute());
  secondString = String.format("%02d", second());
  
  //hour1 = hourString.substring(0,1);
  //hour2 = hourString.substring(1,2);
  //minute1 = minuteString.substring(0,1);
  //minute2 = minuteString.substring(1,2);
  //second1 = secondString.substring(0,1);
  //second2 = secondString.substring(1,2);
  
  hour1 = hourString.charAt(0);
  hour2 = hourString.charAt(1);
  minute1 = hourString.charAt(0);
  minute2 = hourString.charAt(1);
  second1 = hourString.charAt(0);
  second2 = hourString.charAt(1);
 //println(hourString.substring(0,1));
 println(hour1, hour2);
 //System.out.printf("%2d", second());

  //println(hourString, minuteString, secondString);
  //pd.sendFloat("hour", hour());
  //pd.sendFloat("minute", minute());
  //pd.sendFloat("second", second());
}