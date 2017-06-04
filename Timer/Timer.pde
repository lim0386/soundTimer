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
void setup() {   
  pd = new PureData(this, 44100, 0, 2);
  //pd.openPatch("time.pd");
  //pd.start();
}

void draw() {
  background(0);
  //println(hour(),":",minute(),":",second());
  
  hour = hour();
  minute = minute();
  second = second();
  
 
  
  if (hour() < 10){
    hourString = "0"+String.valueOf(hour());
  }else{
    hourString = String.valueOf(hour());
  }
    if (minute() < 10){
    minuteString = "0"+String.valueOf(minute());
  }else{
    minuteString = String.valueOf(minute());
  }
    if (second() < 10){
    secondString = "0"+String.valueOf(second());
  }else{
    secondString = String.valueOf(second());
  }
  
  println(hourString, minuteString, secondString);
  //pd.sendFloat("hour", hour());
  //pd.sendFloat("minute", minute());
  //pd.sendFloat("second", second());
}