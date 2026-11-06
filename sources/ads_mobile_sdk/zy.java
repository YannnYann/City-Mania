package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class zy {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final JsonObject e;
    public final JsonObject f;
    public final et g;
    public final String h;
    public final JsonObject i;
    public final boolean j;
    public final long k;
    public final int l;
    public final List m;
    public final long n;
    public final long o;
    public final int p;
    public final JsonObject q;
    public final String r;
    public final boolean s;
    public final JsonObject t;
    public final boolean u;
    public final yy v;
    public final String w;

    public zy(String adapterResponseReplacementKey, String adRequestPostBody, String adRequestUrl, String adResponseBody, JsonObject adResponseHeaders, JsonObject biddingData, et etVar, String gwsQueryId, JsonObject inspectorExtras, boolean z, long j, int i, ArrayList noFillUrls, long j2, long j3, int i2, JsonObject responseInfoExtras, String scionQueryEventId, boolean z2, JsonObject jsonObject, boolean z3, yy fullscreenOnShowAfmaTrigger, String responseId) {
        Intrinsics.checkNotNullParameter(adapterResponseReplacementKey, "adapterResponseReplacementKey");
        Intrinsics.checkNotNullParameter(adRequestPostBody, "adRequestPostBody");
        Intrinsics.checkNotNullParameter(adRequestUrl, "adRequestUrl");
        Intrinsics.checkNotNullParameter(adResponseBody, "adResponseBody");
        Intrinsics.checkNotNullParameter(adResponseHeaders, "adResponseHeaders");
        Intrinsics.checkNotNullParameter(biddingData, "biddingData");
        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
        Intrinsics.checkNotNullParameter(inspectorExtras, "inspectorExtras");
        Intrinsics.checkNotNullParameter(noFillUrls, "noFillUrls");
        Intrinsics.checkNotNullParameter(responseInfoExtras, "responseInfoExtras");
        Intrinsics.checkNotNullParameter(scionQueryEventId, "scionQueryEventId");
        Intrinsics.checkNotNullParameter(fullscreenOnShowAfmaTrigger, "fullscreenOnShowAfmaTrigger");
        Intrinsics.checkNotNullParameter(responseId, "responseId");
        this.a = adapterResponseReplacementKey;
        this.b = adRequestPostBody;
        this.c = adRequestUrl;
        this.d = adResponseBody;
        this.e = adResponseHeaders;
        this.f = biddingData;
        this.g = etVar;
        this.h = gwsQueryId;
        this.i = inspectorExtras;
        this.j = z;
        this.k = j;
        this.l = i;
        this.m = noFillUrls;
        this.n = j2;
        this.o = j3;
        this.p = i2;
        this.q = responseInfoExtras;
        this.r = scionQueryEventId;
        this.s = z2;
        this.t = jsonObject;
        this.u = z3;
        this.v = fullscreenOnShowAfmaTrigger;
        this.w = responseId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zy)) {
            return false;
        }
        zy zyVar = (zy) obj;
        return Intrinsics.areEqual(this.a, zyVar.a) && Intrinsics.areEqual(this.b, zyVar.b) && Intrinsics.areEqual(this.c, zyVar.c) && Intrinsics.areEqual(this.d, zyVar.d) && Intrinsics.areEqual(this.e, zyVar.e) && Intrinsics.areEqual(this.f, zyVar.f) && Intrinsics.areEqual(this.g, zyVar.g) && Intrinsics.areEqual(this.h, zyVar.h) && Intrinsics.areEqual(this.i, zyVar.i) && this.j == zyVar.j && this.k == zyVar.k && this.l == zyVar.l && Intrinsics.areEqual(this.m, zyVar.m) && Duration.m2875equalsimpl0(this.n, zyVar.n) && Duration.m2875equalsimpl0(this.o, zyVar.o) && this.p == zyVar.p && Intrinsics.areEqual(this.q, zyVar.q) && Intrinsics.areEqual(this.r, zyVar.r) && this.s == zyVar.s && Intrinsics.areEqual(this.t, zyVar.t) && this.u == zyVar.u && this.v == zyVar.v && Intrinsics.areEqual(this.w, zyVar.w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [int] */
    /* JADX WARN: Type inference failed for: r2v23, types: [int] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public final int hashCode() {
        int iA = z1.a(this.f, z1.a(this.e, ob.a(this.d, ob.a(this.c, ob.a(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31);
        et etVar = this.g;
        int iA2 = z1.a(this.i, ob.a(this.h, (iA + (etVar == null ? 0 : etVar.hashCode())) * 31, 31), 31);
        boolean z = this.j;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iA3 = ob.a(this.r, z1.a(this.q, y1.a(this.p, (Duration.m2889hashCodeimpl(this.o) + ((Duration.m2889hashCodeimpl(this.n) + h93.a(this.m, y1.a(this.l, (Long.hashCode(this.k) + ((iA2 + r2) * 31)) * 31, 31), 31)) * 31)) * 31, 31), 31), 31);
        boolean z2 = this.s;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int i = (iA3 + r22) * 31;
        JsonObject jsonObject = this.t;
        int iHashCode = (i + (jsonObject != null ? jsonObject.hashCode() : 0)) * 31;
        boolean z3 = this.u;
        return this.w.hashCode() + ((this.v.hashCode() + ((iHashCode + (z3 ? 1 : z3)) * 31)) * 31);
    }

    public final String toString() {
        return "CommonConfiguration(adapterResponseReplacementKey=" + this.a + ", adRequestPostBody=" + this.b + ", adRequestUrl=" + this.c + ", adResponseBody=" + this.d + ", adResponseHeaders=" + this.e + ", biddingData=" + this.f + ", bowResponseError=" + this.g + ", gwsQueryId=" + this.h + ", inspectorExtras=" + this.i + ", isIdless=" + this.j + ", latency=" + this.k + ", maxParallelRenderers=" + this.l + ", noFillUrls=" + this.m + ", refreshInterval=" + Duration.m2903toStringimpl(this.n) + ", proactiveRefreshLoadDelayInterval=" + Duration.m2903toStringimpl(this.o) + ", responseCode=" + this.p + ", responseInfoExtras=" + this.q + ", scionQueryEventId=" + this.r + ", isPersistentAdEnabled=" + this.s + ", throttleConfiguration=" + this.t + ", isCrossProcessAdEnabled=" + this.u + ", fullscreenOnShowAfmaTrigger=" + this.v + ", responseId=" + this.w + ")";
    }
}
