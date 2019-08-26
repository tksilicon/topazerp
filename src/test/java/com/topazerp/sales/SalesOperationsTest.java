package com.topazerp.sales;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.util.ArrayList;
import static org.junit.Assert.assertEquals;
import org.junit.Test;
import static org.mockito.Mockito.*;






/**
 *
 * @author frankukachukwu
 */

public class SalesOperationsTest {

   

    @Test
    public void testgetBranchesIndexPage() {

        //Given
        SalesOperations sales = mock(SalesOperations.class);

        ArrayList<String> branches = new ArrayList<String>();
        branches.add("HEADOFFICE");

        //When
        when(sales.getBranchesIndexPage()).thenReturn(branches);

        //Then
        assertEquals(sales.getBranchesIndexPage(), branches);

    }
    
    @Test
    public void testSignIn() {

        //Given
        SalesOperations sales = mock(SalesOperations.class);

        ArrayList<String> branches = new ArrayList<String>();
        
        StaffStatus staff = new StaffStatus();
        staff.setUsername("lawretta");
       

        //When
        when(sales.Signin("lawretta", "lawretta")).thenReturn(staff);

        //Then
        assertEquals(sales.Signin("lawretta", "lawretta").getUsername(), staff.getUsername());

    }
}
