/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.topazerp.sales.autocomplete;

import com.topazerp.sales.Customer;
import com.topazerp.sales.SalesConnection;
import java.util.ArrayList;
import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author THANKGOD
 */
public class ExistingCustomers {

    List<Customer> existingCustomers = null;
    private int totalCustomers;

    public ExistingCustomers() {

        existingCustomers = getCustomers();
        totalCustomers = existingCustomers.size();
    }

    private ArrayList<Customer> getCustomers() {

        Customer customer;

        ArrayList<Customer> odicCustomers = new ArrayList<Customer>();

        String branch = "";
        String regdate = "";
        String regno = "";
        String surname = "";
        String firstname = "";
        String custtype = "";
        String address = "";
        String state = "";
        String country = "";
        String day = "";
        String month = "";
        String gender = "";
        String phoneno = "";
        String email = "";
        Connection con = null;

        try {

            SalesConnection salesCon = new SalesConnection();
            con = salesCon.getCon();

            String sql = "SELECT branch, regdate,regno,surname, firstname, custtype, address, state, country, day, month, gender, phoneno, email FROM customers";
            PreparedStatement pstmt = con.prepareStatement(sql);

            ResultSet results = pstmt.executeQuery();

            while (results.next()) {
                customer = new Customer();

                branch = results.getString(1);
                customer.setBranch(branch);

                regdate = results.getString(2);
                customer.setRegdate(regdate);

                regno = results.getString(3);
                customer.setRegno(regno);

                surname = results.getString(4);
                customer.setSurname(surname);

                firstname = results.getString(5);
                customer.setFirstname(firstname);

                custtype = results.getString(6);
                customer.setCusttype(custtype);

                address = results.getString(7);
                customer.setAddress(address);

                state = results.getString(8);
                customer.setState(state);

                country = results.getString(9);
                customer.setCountry(country);

                day = results.getString(10);
                customer.setDay(day);

                month = results.getString(11);
                customer.setMonth(month);

                gender = results.getString(12);
                customer.setGender(gender);

                phoneno = results.getString(13);
                customer.setPhoneno(phoneno);

                email = results.getString(14);
                customer.setEmail(email);

                odicCustomers.add(customer);

            }

        } catch (Exception ex) {
            Logger.getLogger(ExistingCustomers.class.getName()).log(Level.SEVERE, "We have a problem with getting customers", ex);
            try {
                con.close();
            } catch (SQLException ex1) {
                Logger.getLogger(ExistingCustomers.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return odicCustomers;
    }

    public List<Customer> getData(String query) {

        Pattern pattern = Pattern.compile("(([A-Z]\\.?\\s?)*([A-Z][a-z]+\\.?\\s?)+([A-Z]\\.?\\s?[a-z]*)*)", Pattern.CASE_INSENSITIVE);


        String customerLastName = null;
        String customerFirstName = null;
        Customer searched = null;
        query = query.toLowerCase();
        List<Customer> matched = new ArrayList<Customer>();

        for (int i = 0; i < totalCustomers; i++) {
            searched = existingCustomers.get(i);
            customerLastName = searched.getSurname().toLowerCase();
            customerFirstName = searched.getFirstname().toLowerCase();




            /* if (customerLastName.startsWith(query)) {
            matched.add(existingCustomers.get(i));
            }
            
            if (customerFirstName.startsWith(query)) {
            matched.add(existingCustomers.get(i));
            }*/

            Matcher matcher = pattern.matcher(customerLastName);
            //Matcher matcher2 = pattern.matcher(customerFirstName);
            if (matcher.find()) {
                  matched.add(existingCustomers.get(i));
            }


        }
        return matched;
    }
}
