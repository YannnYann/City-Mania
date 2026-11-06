package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eb0 {
    public final String a;
    public final ir3 b;
    public final long c;

    public eb0(String event, ir3 label, long j) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(label, "label");
        this.a = event;
        this.b = label;
        this.c = j;
    }

    public final long a() {
        return this.c;
    }
}
