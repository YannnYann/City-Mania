package ads_mobile_sdk;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.libraries.ads.mobile.sdk.R$string;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class yn3 {
    public static String a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            String string = context.getResources().getString(R$string.test_ad);
            Intrinsics.checkNotNull(string);
            return string;
        } catch (Resources.NotFoundException unused) {
            return "Test Ad";
        }
    }
}
