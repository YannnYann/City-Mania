package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cl2 extends yr {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cl2(xw0 flagValueProvider) {
        super(flagValueProvider);
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
    }

    public final boolean a() {
        Intrinsics.checkNotNullParameter("gads:pc:evict_ad_on_impression", C3522b4.i.W);
        return ((Boolean) a("gads:pc:evict_ad_on_impression", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean b() {
        Intrinsics.checkNotNullParameter("gads:pc:pause_auto_refresh_on_app_background", C3522b4.i.W);
        return ((Boolean) a("gads:pc:pause_auto_refresh_on_app_background", Boolean.FALSE, yr.b)).booleanValue();
    }
}
