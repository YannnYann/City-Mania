package info.flowersoft.theotown.util;

import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: compiled from: VersionFormatter.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class VersionFormatter {
    public static final VersionFormatter INSTANCE = new VersionFormatter();

    public final String format(int i) {
        int i2 = i / 1000;
        int i3 = i / 100;
        int i4 = i3 % 10;
        int i5 = i % 100;
        if (i2 >= 10) {
            int i6 = i / UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format(Locale.ENGLISH, "%d.%02d.%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i6), Integer.valueOf(i3 % 100), Integer.valueOf(i5)}, 3));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            return str;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String str2 = String.format(Locale.ENGLISH, "%d.%01d.%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(i5)}, 3));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return str2;
    }
}
