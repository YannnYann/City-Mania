package info.flowersoft.theotown.util;

import com.google.android.gms.ads.RequestConfiguration;
import info.flowersoft.theotown.resources.Settings;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.gamestack.Translator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class Localizer {
    public static final String[] UNITS;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("");
        arrayList.add("K");
        arrayList.add("M");
        arrayList.add("B");
        arrayList.add(RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        for (int i = 0; i < 26; i++) {
            for (int i2 = 0; i2 < 26; i2++) {
                arrayList.add("" + "abcdefghijklmnopqrstuvwxyz".charAt(i) + "abcdefghijklmnopqrstuvwxyz".charAt(i2));
            }
        }
        UNITS = (String[]) arrayList.toArray(new String[0]);
    }

    public static String localizeDiamonds(long j) {
        return StringFormatter.format("%,d", Long.valueOf(j));
    }

    public static String localizeRegionCoins(long j) {
        return StringFormatter.format("%,d", Long.valueOf(j));
    }

    public static String localizeMoney(double d) {
        return localizeMoney(d, false);
    }

    public static String localizeMoney(double d, boolean z) {
        if (Settings.shortMoney) {
            return localizeBigNumber(d, z) + "₮";
        }
        return localizeSmallNumber(d, z) + "₮";
    }

    public static String localizeSmallNumber(double d, boolean z) {
        return StringFormatter.format(z ? "%+,.0f" : "%,.0f", Double.valueOf(d));
    }

    public static String localizeBigNumber(double d) {
        return localizeBigNumber(d, false);
    }

    public static String localizeBigNumber(double d, boolean z) {
        String[] strArr = UNITS;
        int iMax = 0;
        String str = strArr[0];
        if (d != 0.0d) {
            iMax = Math.max((int) Math.floor(Math.log10(Math.abs(d))), 0) / 3;
            str = iMax < strArr.length ? strArr[iMax] : "#";
            d /= Math.pow(10.0d, iMax * 3);
        }
        if (Math.abs(d) >= 100.0d || (iMax == 0 && Math.abs(d) % 1.0d < 0.005d)) {
            StringBuilder sb = new StringBuilder();
            sb.append(StringFormatter.format(z ? "%+d" : "%d", Long.valueOf(Math.round(d))));
            sb.append(str);
            return sb.toString();
        }
        if (Math.abs(d) >= 10.0d) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(StringFormatter.format(z ? "%+.1f" : "%.1f", Double.valueOf(d)));
            sb2.append(str);
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(StringFormatter.format(z ? "%+.2f" : "%.2f", Double.valueOf(d)));
        sb3.append(str);
        return sb3.toString();
    }

    public static String localizeFileSize(Translator translator, long j) {
        if (j < 1024) {
            return StringFormatter.format(translator.translate(358), Long.valueOf(j));
        }
        if (j < 1048576) {
            return StringFormatter.format(translator.translate(1125), Double.valueOf(j / 1024.0d));
        }
        if (j < 1073741824) {
            return StringFormatter.format(translator.translate(EventTypeExtended.EVENT_TYPE_CLICK_BY_SOURCE_VALUE), Double.valueOf((j / 1024.0d) / 1024.0d));
        }
        return StringFormatter.format(translator.translate(736), Double.valueOf(((j / 1024.0d) / 1024.0d) / 1024.0d));
    }
}
