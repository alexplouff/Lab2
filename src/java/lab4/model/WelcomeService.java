/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab4.model;

import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Alex
 */
public class WelcomeService {
    
    private final String dateFormat_AsString = "hh:mm:ss aa MM:dd:yyyy";
    private final String date_AsString;
    private final Calendar calendar;
    private final Date date;
    private String welcomeMessage;
    private String name;
    
    private final SimpleDateFormat sdf; 
    
    public WelcomeService(String name){
        calendar = Calendar.getInstance();
        setTimeAnnotation();
        sdf = new SimpleDateFormat(dateFormat_AsString);
        date = calendar.getTime();
        date_AsString = sdf.format(date);
        setName(name);
    }
    
    public final void setTimeAnnotation(){
        if(calendar.get(Calendar.AM_PM) == Calendar.PM){
            if(calendar.get(Calendar.HOUR) < 5){
                welcomeMessage = "Good Afternoon";
                return;
            }
             if(calendar.get(Calendar.HOUR) < 12){
                welcomeMessage = "Good Evening";
            }
           
      } else {
                welcomeMessage = "Good Morning";
            }
    }
    
    public final void setName(String name){
        this.name = name;
    }
    
    @Override
    public String toString(){
        return welcomeMessage + " " + name + "\n" + date_AsString;
    } 
}
