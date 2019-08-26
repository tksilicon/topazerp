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

public class CreateExceexpenses {

    public void mainm() {
        try {
            String filename = "c:/result.xls";
            HSSFWorkbook hwb = new HSSFWorkbook();
            HSSFSheet sheet = hwb.createSheet("Expenses");

            HSSFRow rowhead = sheet.createRow((short) 0);
            rowhead.createCell((short) 0).setCellValue("Id");
            rowhead.createCell((short) 1).setCellValue("Branch");
            rowhead.createCell((short) 2).setCellValue("Date");
            rowhead.createCell((short) 3).setCellValue("Account Name");
            rowhead.createCell((short) 4).setCellValue("Receiver");
            rowhead.createCell((short) 5).setCellValue("Address");
            rowhead.createCell((short) 6).setCellValue("Phone number");
            rowhead.createCell((short) 7).setCellValue("Total Amount");
            rowhead.createCell((short) 8).setCellValue("Description");
            rowhead.createCell((short) 9).setCellValue("Amount Paid");
            rowhead.createCell((short) 10).setCellValue("Balance");
            rowhead.createCell((short) 11).setCellValue("Approved By");

//Class.forName("com.mysql.jdbc.Driver");
//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
            SQLconnector sqlcon = new SQLconnector();
            Connection con = sqlcon.getCon();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from expenses ");
            int i = 1;
            while (rs.next()) {
                HSSFRow row = sheet.createRow((short) i);
                row.createCell((short) 0).setCellValue(Integer.toString(rs.getInt("id")));
                row.createCell((short) 1).setCellValue(rs.getString("Branch"));
                row.createCell((short) 2).setCellValue(rs.getString("expense_Date"));
                row.createCell((short) 3).setCellValue(rs.getString("AccountName"));
                row.createCell((short) 4).setCellValue(rs.getString("Receiver"));
                row.createCell((short) 5).setCellValue(rs.getString("Address"));
                row.createCell((short) 6).setCellValue(rs.getString("phoneno"));
                row.createCell((short) 7).setCellValue(Float.toString(rs.getFloat("Total_Amount")));
                row.createCell((short) 8).setCellValue(rs.getString("description"));
                row.createCell((short) 9).setCellValue(Float.toString(rs.getFloat("AmountPaid")));
                row.createCell((short) 10).setCellValue(Float.toString(rs.getFloat("Balance")));
                row.createCell((short) 11).setCellValue(rs.getString("approved_by"));

                i++;
            }
            File file = new File("results.xls");
            FileOutputStream fileOut = new FileOutputStream(file);
            hwb.write(fileOut);
            ExcelOpener opn = new ExcelOpener();
            opn.openTable(file);

            fileOut.close();
//System.out.println("Your excel file has been generated!");

        } catch (Exception ex) {
            System.out.println(ex);

        }
    }
}
