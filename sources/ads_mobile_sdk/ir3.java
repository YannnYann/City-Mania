package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ir3 {
    public final String a;
    public final long b;

    public ir3(long j, String label) {
        Intrinsics.checkNotNullParameter(label, "label");
        this.a = label;
        this.b = j;
    }

    public final long a() {
        return this.b;
    }
}
