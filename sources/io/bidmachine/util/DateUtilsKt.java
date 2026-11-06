package io.bidmachine.util;

import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DateUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DateUtilsKt {
    public static final long DAY_IN_MS = TimeUnit.DAYS.toMillis(1);

    public static final int daysBetween(Date date, Date other) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return (int) (Math.abs(getBeginOfDayMs(other) - getBeginOfDayMs(date)) / DAY_IN_MS);
    }

    public static final long getBeginOfDayMs(Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Calendar calendar = toCalendar(date);
        setupCalendarStartOfDay(calendar);
        return calendar.getTimeInMillis();
    }

    public static final Calendar toCalendar(Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Calendar calendarCreateCalendar = DateUtils.createCalendar();
        calendarCreateCalendar.setTime(date);
        return calendarCreateCalendar;
    }

    public static final void setupCalendarStartOfDay(Calendar calendar) {
        Intrinsics.checkNotNullParameter(calendar, "<this>");
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
    }
}
