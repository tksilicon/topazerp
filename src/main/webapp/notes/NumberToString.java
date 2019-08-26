/**
 * 
 */
package com.odic.sales;

/**

This Program will display the given number in words from 0 to 999,999,999

@author Manoj Kumar Dunna

Mail Id : manojdunna@gmail.com

 **/
public class NumberToString {

    public enum hundreds {

        OneHundred, TwoHundred, ThreeHundred, FourHundred, FiveHundred, SixHundred, SevenHundred, EightHundred, NineHundred
    }

    public enum tens {

        Twenty, Thirty, Forty, Fifty, Sixty, Seventy, Eighty, Ninty
    }

    public enum ones {

        One, Two, Three, Four, Five, Six, Seven, Eight, Nine
    }

    public enum denom {

        Thousand, Lakhs, Crores
    }

    public enum splNums {

        Ten, Eleven, Twelve, Thirteen, Fourteen, Fifteen, Sixteen, Seventeen, Eighteen, Nineteen
    }
    public static String text = "";

    public static String getValue(int num) {
        String str = "";
        int rem = 0;
        int i = 0;
        
        while (num > 0) {
            if (i == 0) {
                rem = (int) (num % 1000);
                str = printText(rem);
                num = num / 1000;
                i++;
            } else if (num > 0) {
                rem = (int) (num % 100);
                if (rem > 0) {
                    text = denom.values()[i - 1] + " " + text;
                }
                str = printText(rem);
                num = num / 100;
                i++;
            }
        }

        if (i > 0) {
            return str;
        } else {
            return "";
        }

    }

    public static String printText(int num) {
        String str = "";

        if (!(num > 9 && num < 19)) {
            if (num % 10 > 0) {
                str = getOnes(num % 10);
            }

            num = num / 10;

            if (num % 10 > 0) {
                str = getTens(num % 10);
            }

            num = num / 10;
            if (num > 0) {
                str = getHundreds(num);
            }
        } else {
            str = getSplNums(num % 10);
        }

        return str;
    }

    public static String getSplNums(int num) {
        text = splNums.values()[num] + " " + text + " ";
        return text;
    }

    public static String getHundreds(int num) {
        text = hundreds.values()[num - 1] + " " + text + " ";
        return text;
    }

    public static String getTens(int num) {
        text = tens.values()[num - 2] + " " + text + " ";
        return text;
    }

    public static String getOnes(int num) {
        text = ones.values()[num - 1] + " " + text + " ";
        return text;
    }

    public static void main(String[] args) {
        System.out.println(getValue(5431000));


    }
}
