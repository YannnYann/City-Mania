package com.google.android.material.datepicker;

import android.content.Context;
import com.google.android.material.R$string;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class DateStrings {
    public static String getYearMonth(long j) {
        return UtcDates.getYearMonthFormat(Locale.getDefault()).format(new Date(j));
    }

    public static String getMonthDayOfWeekDay(long j) {
        return getMonthDayOfWeekDay(j, Locale.getDefault());
    }

    public static String getMonthDayOfWeekDay(long j, Locale locale) {
        return UtcDates.getMonthWeekdayDayFormat(locale).format(new Date(j));
    }

    public static String getYearMonthDayOfWeekDay(long j) {
        return getYearMonthDayOfWeekDay(j, Locale.getDefault());
    }

    public static String getYearMonthDayOfWeekDay(long j, Locale locale) {
        return UtcDates.getYearMonthWeekdayDayFormat(locale).format(new Date(j));
    }

    public static String getOptionalYearMonthDayOfWeekDay(long j) {
        if (isDateWithinCurrentYear(j)) {
            return getMonthDayOfWeekDay(j);
        }
        return getYearMonthDayOfWeekDay(j);
    }

    public static boolean isDateWithinCurrentYear(long j) {
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(j);
        return todayCalendar.get(1) == utcCalendar.get(1);
    }

    public static String getDayContentDescription(Context context, long j, boolean z, boolean z2, boolean z3) {
        String optionalYearMonthDayOfWeekDay = getOptionalYearMonthDayOfWeekDay(j);
        if (z) {
            optionalYearMonthDayOfWeekDay = String.format(context.getString(R$string.mtrl_picker_today_description), optionalYearMonthDayOfWeekDay);
        }
        if (z2) {
            return String.format(context.getString(R$string.mtrl_picker_start_date_description), optionalYearMonthDayOfWeekDay);
        }
        return z3 ? String.format(context.getString(R$string.mtrl_picker_end_date_description), optionalYearMonthDayOfWeekDay) : optionalYearMonthDayOfWeekDay;
    }

    public static String getYearContentDescription(Context context, int i) {
        if (UtcDates.getTodayCalendar().get(1) == i) {
            return String.format(context.getString(R$string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i));
        }
        return String.format(context.getString(R$string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i));
    }
}
