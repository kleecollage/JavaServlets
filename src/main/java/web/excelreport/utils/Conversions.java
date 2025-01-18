package web.excelreport.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Conversions {
    private static final String DATE_FORMAT = "yyyy-MM-dd";
    public static String format(Date date) {
        var formatter = new SimpleDateFormat(DATE_FORMAT);
        return formatter.format(date);
    }

    public static String format(String date) {
        var formatter = new SimpleDateFormat(DATE_FORMAT);
        return formatter.format(date);
    }
}
