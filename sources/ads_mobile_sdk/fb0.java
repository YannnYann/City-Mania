package ads_mobile_sdk;

import android.os.Build;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class fb0 {
    public static String b() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        Intrinsics.checkNotNull(str2);
        Intrinsics.checkNotNull(str);
        if (StringsKt__StringsJVMKt.startsWith$default(str2, str, false, 2, null)) {
            return str2;
        }
        return str + " " + str2;
    }
}
