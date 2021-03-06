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
import java.io.*;
import java.sql.*;
import newpackage.*;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFRow;

public class CreateExceacctrec {

    public void mainm() {
        try {
            String filename = "c:/result.xls";
            HSSFWorkbook hwb = new HSSFWorkbook();
            HSSFSheet sheet = hwb.createSheet("Account Receivable");

            HSSFRow rowhead = sheet.createRow((short) 0);
            rowhead.createCell((short) 0).setCellValue("branch");
            rowhead.createCell((short) 1).setCellValue("Date");
            rowhead.createCell((short) 2).setCellValue("invoiceid");
            rowhead.createCell((short) 3).setCellValue("Customer");
           
            rowhead.createCell((short) 4).setCellValue("Grand Total");
            rowhead.createCell((short) 5).setCellValue("Amount Paid");
            rowhead.createCell((short) 6).setCellValue("Balance");

//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();


            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery( "select branch, date, invoiceid, custname, grandtotal, amtpaid, balance  from ourinvoice ORDER by date DESC");
            int i = 1;
            while (rs.next()) {
                HSSFRow row = sheet.createRow((short) i);
                row.createCell((short) 0).setCellValue(rs.getString("branch"));
                row.createCell((short) 1).setCellValue(rs.getString("date"));
                row.createCell((short) 2).setCellValue(rs.getString("Invoiceid"));
                row.createCell((short) 3).setCellValue(rs.getString("Custname"));
                row.createCell((short) 4).setCellValue(Float.toString(rs.getFloat("grandtotal")));
                row.createCell((short) 5).setCellValue(Float.toString(rs.getFloat("amtpaid")));
                row.createCell((short) 6).setCellValue(Float.toString(rs.getFloat("balance")));

                i++;
            }
            File file = new File("results.xls");
            FileOutputStream fileOut = new FileOutputStream(file);
            hwb.write(fileOut);
            ExcelOpener opn = new ExcelOpener();
            opn.openTable(file);

            fileOut.close();
            System.out.println("Your excel file has been generated!");

        } catch (Exception ex) {
            System.out.println(ex);

        }
    }
}
