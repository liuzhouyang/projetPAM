package com.pam.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static String dateFormat(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
}
