package info.flowersoft.theotown.util;

import java.util.GregorianCalendar;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DateUtil.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DateUtil {
    public static final DateUtil INSTANCE = new DateUtil();

    public final boolean checkDate(int i, int i2, int i3) {
        if (i <= 0 || i2 <= 0 || i3 <= 0) {
            return false;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        int i4 = i2 - 1;
        gregorianCalendar2.set(gregorianCalendar.get(1), i4, i);
        if (gregorianCalendar2.after(gregorianCalendar)) {
            gregorianCalendar2.set(gregorianCalendar.get(1) - 1, i4, i);
        }
        Object objClone = gregorianCalendar2.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.GregorianCalendar");
        GregorianCalendar gregorianCalendar3 = (GregorianCalendar) objClone;
        gregorianCalendar3.add(6, i3);
        return gregorianCalendar.before(gregorianCalendar3);
    }
}
