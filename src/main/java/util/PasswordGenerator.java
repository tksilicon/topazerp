/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.LinkedList;
import java.util.Random;

/**
 *
 * @author THANKGOD
 */
public class PasswordGenerator {

    public static String generatePassword(int randy) {

        Random rand = new Random(randy);
        Random rand2 = new Random(randy);


        String[] bigAlpha = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "k", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
        int[] nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
        String str = "";

        Random randr = new Random();
        for (int i = 0; i < 7; i++) {

            if (randr.nextInt() % 2 == 0) {
                str += bigAlpha[rand.nextInt(25)];
            } else {
                str += nums[rand2.nextInt(9)];

            }
        }

        return str;

    }

    public static String returnPassword(LinkedList allPasswords, String str) {


        String toReturn = "";
        Random rand = new Random();
        int counter = 0;
        String pass = "";
        while (counter < allPasswords.size()) {
            pass = (String) allPasswords.get(counter);
            if (pass.equals(str)) {
                str = generatePassword(rand.nextInt());
                counter = 0;
                continue;
            } else if (counter == allPasswords.size() - 1) {
                toReturn = str;
                break;
            }
            counter++;
        }

        return toReturn;
    }

    public static String generateUserName(int randy, String firstName) {

        Random rand = new Random(randy);

        int[] nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};

        for (int i = 0; i < 4; i++) {
            firstName += nums[rand.nextInt(9)];
        }

        return firstName;

    }

    public static String returnUserName(LinkedList allPasswords, String str, String firstName) {


        String toReturn = "";
        Random rand = new Random();
        int counter = 0;
        String pass = "";
        while (counter < allPasswords.size()) {
            pass = (String) allPasswords.get(counter);
            if (pass.equals(str)) {
                str = generateUserName(rand.nextInt(), firstName);
                counter = 0;
                continue;
            } else if (counter == allPasswords.size() - 1) {
                toReturn = str;
                break;
            }
            counter++;
        }

        return toReturn;
    }

    public static String MD5(String md5) {

        //return DigestUtils.md5Hex(md5);
        return null;
    }
}
