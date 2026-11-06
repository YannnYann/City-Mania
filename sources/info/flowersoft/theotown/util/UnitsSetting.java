package info.flowersoft.theotown.util;

import java.util.Locale;
import java.util.MissingResourceException;

/* JADX INFO: loaded from: classes4.dex */
public enum UnitsSetting {
    Metric("km", 1.0f, "km²"),
    Imperial("mi", 0.621371f, "sqmi");

    public final String areaUnit;
    public final String distanceUnit;
    public final float unitsPerKm;

    UnitsSetting(String str, float f, String str2) {
        this.distanceUnit = str;
        this.unitsPerKm = f;
        this.areaUnit = str2;
    }

    public String localizeDistance(float f) {
        return format(this.distanceUnit, f * this.unitsPerKm);
    }

    public String localizeArea(float f) {
        float f2 = this.unitsPerKm;
        return format(this.areaUnit, f * f2 * f2);
    }

    public final String format(String str, float f) {
        String str2;
        if (f < 1.0f) {
            str2 = "%.2f";
        } else if (f >= 10.0f) {
            str2 = "%.0f";
        } else {
            str2 = "%.1f";
        }
        return StringFormatter.format(str2 + " " + str, Float.valueOf(f));
    }

    public static UnitsSetting getDefault() {
        Locale defaultLocaleInit = AssetBasedTranslationManager.getDefaultLocaleInit();
        if (defaultLocaleInit == null) {
            return Metric;
        }
        try {
            String iSO3Country = defaultLocaleInit.getISO3Country();
            if (iSO3Country != null && (iSO3Country.equalsIgnoreCase("usa") || iSO3Country.equalsIgnoreCase("mmr"))) {
                return Imperial;
            }
            return Metric;
        } catch (MissingResourceException e) {
            e.printStackTrace();
            return Metric;
        }
    }
}
