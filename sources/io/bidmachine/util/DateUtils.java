package io.bidmachine.util;

import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DateUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DateUtils {
    public static final DateUtils INSTANCE = new DateUtils();

    public static final Calendar createCalendar() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance()");
        return calendar;
    }
}
