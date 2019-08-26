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

public class CreateExcelstaff {

    public void mainm() {
        try {
            String filename = "c:/result.xls";
            HSSFWorkbook hwb = new HSSFWorkbook();
            HSSFSheet sheet = hwb.createSheet("Staff Database");

            HSSFRow rowhead = sheet.createRow((short) 0);
            rowhead.createCell((short) 0).setCellValue("Branch");
            rowhead.createCell((short) 1).setCellValue("Date");
            rowhead.createCell((short) 2).setCellValue("Staff No");
            rowhead.createCell((short) 3).setCellValue("SurName");
            rowhead.createCell((short) 4).setCellValue("First Name");
            rowhead.createCell((short) 5).setCellValue("Other Name");
            rowhead.createCell((short) 6).setCellValue("Phone No");
            rowhead.createCell((short) 7).setCellValue("Address");
            rowhead.createCell((short) 8).setCellValue("State");
            rowhead.createCell((short) 9).setCellValue("Country");
            rowhead.createCell((short) 10).setCellValue("DOB");
            rowhead.createCell((short) 11).setCellValue("Emp. Type");

            rowhead.createCell((short) 12).setCellValue("UserName");
            rowhead.createCell((short) 13).setCellValue("Department");

//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * from admin");
            int i = 1;
            while (rs.next()) {
                HSSFRow row = sheet.createRow((short) i);
                row.createCell((short) 0).setCellValue(rs.getString("branch"));
                row.createCell((short) 1).setCellValue(rs.getString("date"));
                row.createCell((short) 2).setCellValue(rs.getString("staffno"));
                row.createCell((short) 3).setCellValue(rs.getString("surname"));
                row.createCell((short) 4).setCellValue(rs.getString("firstname"));
                row.createCell((short) 5).setCellValue(rs.getString("othername"));
                row.createCell((short) 6).setCellValue(rs.getString("phoneno"));
                row.createCell((short) 7).setCellValue(rs.getString("address"));
                row.createCell((short) 8).setCellValue(rs.getString("state"));
                row.createCell((short) 9).setCellValue(rs.getString("country"));
                row.createCell((short) 10).setCellValue(rs.getString("dob"));
                row.createCell((short) 11).setCellValue(rs.getString("emptype"));
                row.createCell((short) 12).setCellValue(rs.getString("username"));
                row.createCell((short) 13).setCellValue(rs.getString("department"));
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
