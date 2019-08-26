package Classespack;

/**
 *
 * @author user
 */
import java.io.*;
import java.sql.*;
import java.util.*;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class InsertExcelFileData {

    //public static void main(String[] args) {
    //    String fileName = "c:/data.xls";
    //    Vector dataHolder = read(fileName);
    //    saveToDatabase(dataHolder);
   // }

    public static Vector read(String fileName) {
        Vector cellVectorHolder = new Vector();
        try {
            FileInputStream myInput = new FileInputStream(fileName);
            POIFSFileSystem myFileSystem = new POIFSFileSystem(myInput);
            HSSFWorkbook myWorkBook = new HSSFWorkbook(myFileSystem);
            HSSFSheet mySheet = myWorkBook.getSheetAt(0);
            Iterator rowIter = mySheet.rowIterator();
            while (rowIter.hasNext()) {
                HSSFRow myRow = (HSSFRow) rowIter.next();
                Iterator cellIter = myRow.cellIterator();
                Vector cellStoreVector = new Vector();
                while (cellIter.hasNext()) {
                    HSSFCell myCell = (HSSFCell) cellIter.next();
                    cellStoreVector.addElement(myCell);
                }
                cellVectorHolder.addElement(cellStoreVector);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cellVectorHolder;
    }

    public static void saveToDatabase(Vector dataHolder) throws java.lang.NullPointerException {
       
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easywashweb", "root", "");
            PreparedStatement ps = null;
            ps = con.prepareStatement("insert into branch(id, branch_name, address, branch_manager, commissioned_date) value(null, ?, ?, ?, ?)");

           
            ArrayList cellStoreArrayList = null;
            DateFormat ff = new DateFormat();
            //For inserting into database
            int i;
            for (i = 0; i < dataHolder.size(); i++) {
                
                Vector cellStoreVector=(Vector)dataHolder.elementAt(i);
                ps.setString(1, ((HSSFCell) cellStoreVector.get(0)).toString());
                ps.setString(2, ((HSSFCell) cellStoreVector.get(1)).toString());
                ps.setString(3, ((HSSFCell) cellStoreVector.get(2)).toString());
                ps.setString(4, ((HSSFCell) cellStoreVector.get(3)).toString()) ;
                
                ps.executeUpdate();

            }
            
            System.out.println("Data is inserted");
            System.out.println(i);
            
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
