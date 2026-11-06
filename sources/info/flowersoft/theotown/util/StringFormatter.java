package info.flowersoft.theotown.util;

import info.flowersoft.theotown.crossplatform.TheoTown;

/* JADX INFO: loaded from: classes4.dex */
public final class StringFormatter {
    public static String format(String str, Object... objArr) {
        if (str == null) {
            return null;
        }
        try {
            return String.format(str, objArr);
        } catch (Exception e) {
            TheoTown.analytics.logException(e);
            TheoTown.analytics.logEvent("StringFormatter", "Exception", str + " in " + AssetBasedTranslationManager.getDefaultLocaleInit().toString() + " lead to: " + e.getMessage());
            return str;
        }
    }
}
