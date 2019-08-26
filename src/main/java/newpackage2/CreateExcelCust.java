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

public class CreateExcelCust {

    public void mainm() {
        try {
            String filename = "c:/result.xls";
            HSSFWorkbook hwb = new HSSFWorkbook();
            HSSFSheet sheet = hwb.createSheet("new sheet");
            HSSFRow rowhead = sheet.createRow((short) 0);
            rowhead.createCell((short) 0).setCellValue("Branch");
            rowhead.createCell((short) 1).setCellValue("RegDate");
            rowhead.createCell((short) 2).setCellValue("RegNo");
            rowhead.createCell((short) 3).setCellValue("SurName");
            rowhead.createCell((short) 4).setCellValue("FirstName");
            rowhead.createCell((short) 5).setCellValue("Customer Type");
            rowhead.createCell((short) 6).setCellValue("Address");
            rowhead.createCell((short) 7).setCellValue("State");
            rowhead.createCell((short) 8).setCellValue("Country");
            rowhead.createCell((short) 9).setCellValue("Birth Day");
            rowhead.createCell((short) 10).setCellValue("Birth Month");
            rowhead.createCell((short) 11).setCellValue("Gender");
            rowhead.createCell((short) 12).setCellValue("PhoneNo");
            rowhead.createCell((short) 13).setCellValue("E_mail");

//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from customers");
            int i = 1;
            while (rs.next()) {
                HSSFRow row = sheet.createRow((short) i);
                row.createCell((short) 0).setCellValue(rs.getString("Branch"));
                row.createCell((short) 1).setCellValue(rs.getString("RegDate"));
                row.createCell((short) 2).setCellValue(rs.getString("RegNo"));
                row.createCell((short) 3).setCellValue(rs.getString("SurName"));
                row.createCell((short) 4).setCellValue(rs.getString("FirstName"));
                row.createCell((short) 5).setCellValue(rs.getString("custtype"));
                row.createCell((short) 6).setCellValue(rs.getString("Address"));
                row.createCell((short) 7).setCellValue(rs.getString("State"));
                row.createCell((short) 8).setCellValue(rs.getString("Country"));
                row.createCell((short) 9).setCellValue(rs.getString("day"));
                row.createCell((short) 10).setCellValue(rs.getString("month"));
                row.createCell((short) 11).setCellValue(rs.getString("Gender"));
                row.createCell((short) 12).setCellValue(rs.getString("phoneno"));
                row.createCell((short) 13).setCellValue(rs.getString("email"));
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
