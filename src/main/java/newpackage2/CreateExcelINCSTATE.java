/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package newpackage2;

/**
 *
 * @author user
 */
import newpackage.*;
import  java.io.*;
import  java.sql.*;
import newpackage.*;
import  org.apache.poi.hssf.usermodel.HSSFSheet;
import  org.apache.poi.hssf.usermodel.HSSFWorkbook;
import  org.apache.poi.hssf.usermodel.HSSFRow;

public class CreateExcelINCSTATE{
    public  void mainm(){
try{
String filename="c:/result.xls" ;
HSSFWorkbook hwb=new HSSFWorkbook();
HSSFSheet sheet =  hwb.createSheet("new sheet");

HSSFRow rowhead=   sheet.createRow((short)0);
rowhead.createCell((short) 0).setCellValue("SerialNumber");
rowhead.createCell((short) 1).setCellValue("Branch");
rowhead.createCell((short) 2).setCellValue("Trans_Date");
rowhead.createCell((short) 3).setCellValue("Particular");
rowhead.createCell((short) 4).setCellValue("Debit");
rowhead.createCell((short) 5).setCellValue("Credit");
rowhead.createCell((short) 6).setCellValue("Balance");

//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
 SQLconnector sqlcon = new SQLconnector();
                Connection con = sqlcon.getCon();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from cashfloaw ");
int i=1;
while(rs.next()){
HSSFRow row=   sheet.createRow((short)i);
row.createCell((short) 0).setCellValue(Integer.toString(rs.getInt("id")));
row.createCell((short) 1).setCellValue(rs.getString("branch"));
row.createCell((short) 2).setCellValue(rs.getString("date"));
row.createCell((short) 3).setCellValue(rs.getString("Particular"));
row.createCell((short) 4).setCellValue(Float.toString(rs.getFloat("Debit")));
row.createCell((short) 5).setCellValue(Float.toString(rs.getFloat("Credit")));
row.createCell((short) 6).setCellValue(Float.toString(rs.getFloat("Balance")));

i++;
}
 File file = new File("results.xls");
FileOutputStream fileOut =  new FileOutputStream(file);
hwb.write(fileOut);
 ExcelOpener opn = new ExcelOpener();
opn.openTable(file);

fileOut.close();
System.out.println("Your excel file has been generated!");

} catch ( Exception ex ) {
    System.out.println(ex);

}
    }
}
