/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Classespack;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/**
 *
 * @author user
 */
public class OurMap extends HashMap {

    @Override
    public String toString() {
        
        String s = "";
        
        Set set = this.keySet();
        
       Iterator itil = set.iterator();
       
       String key = null;
       
       while (itil.hasNext()){
           key = (String) itil.next();
           s += this.get(key);
           s += " ";
           s += key;
           
           s += " ";
       }
        
        return s;
        
    }
    
    
   
    
    
}
