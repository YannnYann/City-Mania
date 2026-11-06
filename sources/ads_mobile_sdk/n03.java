package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n03 {
    public String a;
    public String b;
    public j53 c;
    public String d;
    public String e;
    public boolean f;
    public String g;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n03)) {
            return false;
        }
        n03 n03Var = (n03) obj;
        return Intrinsics.areEqual(this.a, n03Var.a) && Intrinsics.areEqual(this.b, n03Var.b) && this.c == n03Var.c && Intrinsics.areEqual(this.d, n03Var.d) && Intrinsics.areEqual(this.e, n03Var.e) && this.f == n03Var.f && Intrinsics.areEqual(this.g, n03Var.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final int hashCode() {
        int iA = ob.a(this.e, ob.a(this.d, (this.c.hashCode() + ob.a(this.b, this.a.hashCode() * 31, 31)) * 31, 31), 31);
        boolean z = this.f;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        return this.g.hashCode() + ((iA + r2) * 31);
    }

    public final String toString() {
        return "PublisherRequestTraceMeta(publisherRequestId=" + this.a + ", adUnitId=" + this.b + ", publisherRequestType=" + this.c + ", signalGenerationRequestId=" + this.d + ", preloadId=" + this.e + ", skipUninitializedAdapters=" + this.f + ", requestAgent=" + this.g + ")";
    }

    public /* synthetic */ n03() {
        this("", "", j53.d, "", "", false, "");
    }

    public n03(String publisherRequestId, String adUnitId, j53 publisherRequestType, String signalGenerationRequestId, String preloadId, boolean z, String requestAgent) {
        Intrinsics.checkNotNullParameter(publisherRequestId, "publisherRequestId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(publisherRequestType, "publisherRequestType");
        Intrinsics.checkNotNullParameter(signalGenerationRequestId, "signalGenerationRequestId");
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestAgent, "requestAgent");
        this.a = publisherRequestId;
        this.b = adUnitId;
        this.c = publisherRequestType;
        this.d = signalGenerationRequestId;
        this.e = preloadId;
        this.f = z;
        this.g = requestAgent;
    }
}
