package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yd {
    public final AdapterStatus a;
    public final AdapterVersionData b;
    public final long c;

    public yd(ke adapterStatus, AdapterVersionData adapterVersionData, long j) {
        Intrinsics.checkNotNullParameter(adapterStatus, "adapterStatus");
        this.a = adapterStatus;
        this.b = adapterVersionData;
        this.c = j;
    }
}
