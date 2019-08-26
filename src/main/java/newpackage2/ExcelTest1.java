/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage2;

import newpackage.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

/**
 *
 * @author deji
 */
public class ExcelTest1 {

    public static void mainmain(String[] args) {
// An array of book titles and their associated ISBN numbers
        String[][] data = {
            {"Summerall", "0785214925"},
            {"The Secret Message of Jesus", "084990000X"},
            {"Buck Wild", "159555064X"},
            {"25 Ways to Win with People", "0785260943"},
            {"Aesop and the CEO ", "0785260102"},
            {"ALL Business is Show Business ", "0785206086"},
            {"Becoming A Person of Influence", "0785271007"},
            {"Checklist for Life for Leaders", "0785260013"},
            {"Duct Tape Marketing ", "078522100X"},
            {"38 Values to Live By ", "0849916631"},
            {"Blue Moon", "0785260641"},
            {"Blue Like Jazz ", "9780785263708"},
            {"Wild at Heart ", "0785262989"},
            {"Wild Men, Wild Alaska ", "078521772X "},
            {"The Duct Tape Bible, NCV", "0718018249"}
        };
        String[] headers = {"Title", "ISBN"};
        final JFrame frame = new JFrame("JTable to Excel Hack");
        DefaultTableModel model = new DefaultTableModel(data, headers);
        final JTable table = new JTable(model);
        JScrollPane scroll = new JScrollPane(table);

// my JPopupMenu component
        final JPopupMenu popup = new JPopupMenu();

// the save JMenuItem and its associated ActionListener
        JMenuItem save = new JMenuItem("save to file");
        save.addActionListener((ActionListener) new ActionListener() {

            public void actionPerformed(ActionEvent action) {
                try {
                    ExcelExporter exp = new ExcelExporter();
                    exp.exportTable(table, new File("results.xls"));
                } catch (IOException ex) {
                   // System.out.println(ex.getMessage());
                    ex.printStackTrace();
                }
            }
        });
        popup.add(save);

// The open JMenuItem and its associated ActionListener
        JMenuItem open = new JMenuItem("open in Excel");
        open.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent action) {
                try {
// Note that i'm actually saving the file first
                    ExcelExporter exp = new ExcelExporter();
                    File file = new File("results1.docx");
                    exp.exportTable(table, file);
                    ExcelOpener opn = new ExcelOpener();
                    opn.openTable(file);
                } catch (IOException ex) {
                    System.out.println(ex.getMessage());
                    ex.printStackTrace();
                }

            }
        });
        popup.add(open);

// the following method only works in JDK 5.0 or greater
// table.setComponentPopupMenu(popup);

        JLabel label1 = new JLabel("Right Click to Export Data...", JLabel.CENTER);

// the following code is needed for JDK 1.4
        table.addMouseListener(new MouseAdapter() {

            public void mousePressed(MouseEvent event) {
                if (popup.isPopupTrigger(event)) {
                    popup.show(event.getComponent(), event.getX(), event.getY());
                }
            }

            public void mouseReleased(MouseEvent event) {
                if (popup.isPopupTrigger(event)) {
                    popup.show(event.getComponent(), event.getX(), event.getY());
                }
            }
        });

        frame.getContentPane().add("Center", scroll);
        frame.getContentPane().add("South", label1);
        frame.pack();
        frame.setVisible(true);
    }
}

class ExcelExporter {

    public ExcelExporter() {
    }

    public void exportTable(JTable table, File file) throws IOException {
        TableModel model = table.getModel();
        FileWriter out = new FileWriter(file);

        for (int i = 0; i < model.getColumnCount(); i++) {
            out.write(model.getColumnName(i) + "\t");
        }
        out.write("\n");

        for (int i = 0; i < model.getRowCount(); i++) {
            for (int j = 0; j < model.getColumnCount(); j++) {
// I added this check for the ISBN conversion
                if (j == 0) {
// the book Title
                    out.write(model.getValueAt(i, j).toString() + "\t");
                } else {
                    /*
                    the ISBN Number
                    Note that I added a \" to the front of the string
                    and a \t followed by a closing \" to let Excel know
                    that this field is to be converted as text
                     */
                    out.write("\"" + model.getValueAt(i, j).toString() + "\t" + "\"");
                }
            }
            out.write("\n");
        }
        out.close();
        System.out.println("write to " + file);
    }
}

class ExcelOpener {

    public ExcelOpener() {
    }

    public void openTable(File file) throws IOException {
        Runtime run = Runtime.getRuntime();
// I make the assumption that the client has Excel and
// the file type .XLS is associated with Excel

// This is a simple check to find out the operating system
        String lcOSName = System.getProperty("os.name").toLowerCase();
        boolean MAC_OS_X = lcOSName.startsWith("mac os x");
        if (MAC_OS_X) {
            run.exec("open" + file);
        } else {
            run.exec("cmd.exe /c start " + file);
        }
        System.out.println(file + "opened");
    }
}
