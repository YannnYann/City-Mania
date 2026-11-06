package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gc2 {
    public final i2 a;
    public final zy b;
    public final ca2 c;
    public final ac2 d;
    public final ex0 e;

    public gc2(i2 adConfiguration, zy commonConfiguration, ca2 networkConnectivityManager, ac2 offlineDatabase, ex0 flags) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(networkConnectivityManager, "networkConnectivityManager");
        Intrinsics.checkNotNullParameter(offlineDatabase, "offlineDatabase");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = adConfiguration;
        this.b = commonConfiguration;
        this.c = networkConnectivityManager;
        this.d = offlineDatabase;
        this.e = flags;
    }
}
