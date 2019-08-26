/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classespack;

import java.util.Calendar;

/**
 *
 * @author user
 */
public class aDDdATE {

    public static void main(String[] args) {

        Calendar ca1 = Calendar.getInstance();


        // Addition of date in java        
        ca1.add(Calendar.DATE, 23); // Add 23 days in Dates in Calendar
        //ca1.add(Calendar.MONTH, 2); // Add 2 Month in Date in Calendar
        //ca1.add(Calendar.YEAR, 4); // Add 4 Year in Date in Calendar

        /*
         *  Subtracting Date in Calendar
         *  
         *  ca1.add(Calendar.DATE, -23); // Subtracting 23 days from date
         *  //ca1.add(Calendar.MONTH, -2); // Subtracting 2 Month in Date in Calendar
         *  //ca1.add(Calendar.YEAR, -4); // Subtracting 4 Year in Date in Calendar
         */

        System.out.println("Date :" + ca1.get(Calendar.DAY_OF_MONTH  ) + "-" + ca1.get(Calendar.MONTH) + "-" + ca1.get(Calendar.YEAR));
        System.out.println("Month :" + ca1.get(Calendar.MONTH));
        System.out.println("Year :" + ca1.get(Calendar.YEAR));
        
         int d = ca1.get(Calendar.DAY_OF_MONTH );
        int day = ca1.get(Calendar.MONTH);
         System.out.println(day);
    }
}
