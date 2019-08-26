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

public class CreateExcepayrol {

    public void mainm() {
        try {
            String filename = "c:/result.xls";
            HSSFWorkbook hwb = new HSSFWorkbook();
            HSSFSheet sheet = hwb.createSheet("Payroll Records");

            HSSFRow rowhead = sheet.createRow((short) 0);
            rowhead.createCell((short) 0).setCellValue("Id");
            rowhead.createCell((short) 1).setCellValue("Branch");
            rowhead.createCell((short) 2).setCellValue("Date");
            rowhead.createCell((short) 3).setCellValue("Account Name");
            rowhead.createCell((short) 4).setCellValue("Employee Name");
            rowhead.createCell((short) 5).setCellValue("Basic_Salary");
            rowhead.createCell((short) 6).setCellValue("Feeding");
            rowhead.createCell((short) 7).setCellValue("Transport");
            rowhead.createCell((short) 8).setCellValue("Housing");
            rowhead.createCell((short) 9).setCellValue("Tax");
            rowhead.createCell((short) 10).setCellValue("Medical");
            rowhead.createCell((short) 11).setCellValue("Loan");

            rowhead.createCell((short) 12).setCellValue("GrossPay");
            rowhead.createCell((short) 13).setCellValue("NetPay");

//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * from paysolution");
            int i = 1;
            while (rs.next()) {
                HSSFRow row = sheet.createRow((short) i);
                row.createCell((short) 0).setCellValue(Integer.toString(rs.getInt("Id")));
                row.createCell((short) 1).setCellValue(rs.getString("branch"));
                row.createCell((short) 2).setCellValue(rs.getString("date"));
                row.createCell((short) 3).setCellValue(rs.getString("accountno"));
                row.createCell((short) 4).setCellValue(rs.getString("employee"));
                row.createCell((short) 5).setCellValue(Float.toString(rs.getFloat("basicsalary")));
                row.createCell((short) 6).setCellValue(Float.toString(rs.getFloat("feeding")));
                row.createCell((short) 7).setCellValue(Float.toString(rs.getFloat("transport")));
                row.createCell((short) 8).setCellValue(Float.toString(rs.getFloat("housing")));
                row.createCell((short) 9).setCellValue(Float.toString(rs.getFloat("tax")));
                row.createCell((short) 10).setCellValue(Float.toString(rs.getFloat("medical")));
                row.createCell((short) 11).setCellValue(Float.toString(rs.getFloat("loan")));

                row.createCell((short) 12).setCellValue(Float.toString(rs.getFloat("grosspay")));
                row.createCell((short) 13).setCellValue(Float.toString(rs.getFloat("netpay")));











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
