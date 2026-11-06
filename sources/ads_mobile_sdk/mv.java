package ads_mobile_sdk;

import android.util.Base64;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mv {
    public final String a;
    public final lv b;
    public final xw c;

    public mv(String rawData, lv chromeVariations, xw xwVar) {
        Intrinsics.checkNotNullParameter(rawData, "rawData");
        Intrinsics.checkNotNullParameter(chromeVariations, "chromeVariations");
        this.a = rawData;
        this.b = chromeVariations;
        this.c = xwVar;
    }

    public final lv b() {
        return this.b;
    }

    public final xw c() {
        return this.c;
    }

    public final String a() {
        xw xwVar = this.c;
        if (xwVar != null) {
            return Base64.encodeToString(xwVar.c(), 10);
        }
        return null;
    }
}
