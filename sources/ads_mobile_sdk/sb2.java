package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sb2 {
    public final long a;
    public final String b;
    public final String c;

    public sb2(long j, String gwsQueryId, String url) {
        rb2 eventState = rb2.a;
        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventState, "eventState");
        this.a = j;
        this.b = gwsQueryId;
        this.c = url;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sb2)) {
            return false;
        }
        sb2 sb2Var = (sb2) obj;
        if (this.a != sb2Var.a || !Intrinsics.areEqual(this.b, sb2Var.b) || !Intrinsics.areEqual(this.c, sb2Var.c)) {
            return false;
        }
        rb2 rb2Var = rb2.a;
        return true;
    }

    public final int hashCode() {
        return rb2.a.hashCode() + ob.a(this.c, ob.a(this.b, Long.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "OfflineBufferedPingRecord(timestamp=" + this.a + ", gwsQueryId=" + this.b + ", url=" + this.c + ", eventState=" + rb2.a + ")";
    }
}
