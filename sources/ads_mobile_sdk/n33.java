package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n33 {
    public final i2 a;
    public bs0 b;
    public final long c;
    public final Integer d;

    public n33(i2 adConfiguration, bs0 fillStatus, long j, Integer num) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(fillStatus, "fillStatus");
        this.a = adConfiguration;
        this.b = fillStatus;
        this.c = j;
        this.d = num;
    }

    public final String toString() {
        return l33.a(this.a, this.b, this.c, this.d);
    }
}
