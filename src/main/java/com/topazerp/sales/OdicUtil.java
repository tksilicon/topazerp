/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales;


import java.io.File;
import java.io.FileNotFoundException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;
import java.util.TimeZone;

/**
 *
 * @author THANKGOD
 */
public class OdicUtil {

    public static Calendar convertCalendar(final Calendar calendar, final TimeZone timeZone) {
        Calendar ret = new GregorianCalendar(timeZone);
        ret.setTimeInMillis(calendar.getTimeInMillis()
                + timeZone.getOffset(calendar.getTimeInMillis())
                - TimeZone.getDefault().getOffset(calendar.getTimeInMillis()));
        ret.getTime();
        return ret;
    }

    public static java.sql.Date convertJavaDateToSqlDate(java.util.Date date) {
        return new java.sql.Date(date.getTime());
    }
    
      public static java.util.Date convertJavaSqlDateToNormalDate(java.sql.Date date) {
        return new java.util.Date(date.getTime());
    }
    
    
    public static Calendar  generateDate(){
        Calendar cal = new GregorianCalendar();
        cal = convertCalendar(cal, TimeZone.getTimeZone("Africa/Lagos"));
        
        return cal;
        
    }
    
    public String amountInWords(Double amount){
        String amountInWords = "";        
        return amountInWords;
    }
    
    public static String generateExpensesId(int randy) {

        Random rand = new Random(randy);
        Random rand2 = new Random(randy);

        String[] bigAlpha = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
            "k", "l", "m", "n", "o", "p", "k", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
        int[] nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
        String str = "";

        Random randr = new Random();
        for (int i = 0; i < 10; i++) {
            if (randr.nextInt() % 2 == 0) {
                str += bigAlpha[rand.nextInt(25)];
            } else {
                str += nums[rand2.nextInt(9)];

            }
        }
        return str;
    }
    
    public static String generateStockId(int randy) {

        Random rand = new Random(randy);
        Random rand2 = new Random(randy);

        String[] bigAlpha = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
            "k", "l", "m", "n", "o", "p", "k", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
        int[] nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
        String str = "";

        Random randr = new Random();
        for (int i = 0; i < 10; i++) {
            if (randr.nextInt() % 2 == 0) {
                str += bigAlpha[rand.nextInt(25)];
            } else {
                str += nums[rand2.nextInt(9)];

            }
        }
        return str;
    }
    
    public static void loadProducts(SalesConnection con) throws FileNotFoundException{
        
        File file = new File( System.getProperty("user.dir") + "/src/products/products.in");
        
        System.out.println(System.getProperty("user.dir"));
        Scanner in = new Scanner(file);
        
        String s = "";
        
        OdicProduct prod = null;
        
        List<OdicProduct> products = new LinkedList<OdicProduct>();
        
        System.out.println(" Item Id" + "   " + "Item Desc");
        System.out.println("----------------------------------");
        
        while(in.hasNext()){
            s = in.next();
            
            String[] result = s.split(",");            
                      
            prod = new OdicProduct();
            prod.setItemId(result[0]);
            prod.setItemDescription(result[1]);
            
            products.add(prod);
            
            System.out.println(result[0] + "   " + result[1]);
            
            
        }
        
    }
    
    public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException{
        
        SalesConnection con = new SalesConnection();
        OdicUtil.loadProducts(con);
    }
}
