package ads_mobile_sdk;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class uj2 {
    public Integer A;
    public af3 B;
    public ar2 C;
    public final Boolean D;
    public final Integer E;
    public final Integer F;
    public hz3 G;
    public ep2 H;
    public u61 I;
    public kh1 J;
    public ie K;
    public hv L;
    public on3 M;
    public kk2 N;
    public final Integer O;
    public r11 P;
    public int Q;
    public int R;
    public wt2 S;
    public int a;
    public final ks3 b;
    public final s11 c;
    public final List d;
    public final UUID e;
    public final int f;
    public final int g;
    public final long h;
    public final long i;
    public final long j;
    public final boolean k;
    public u11 l;
    public boolean m;
    public Throwable n;
    public Throwable o;
    public long p;
    public long q;
    public long r;
    public final List s;
    public gh3 t;
    public ea3 u;
    public k51 v;
    public qx1 w;
    public w11 x;
    public cs1 y;
    public String z;

    public uj2(int i, ks3 traceMetaSet, s11 cuiName, List tags, UUID rootTraceId, int i2, int i3, long j, long j2, long j3, boolean z, u11 u11Var, boolean z2, Throwable th, Throwable th2, long j4, long j5, long j6, List errorMessages, gh3 gh3Var, ea3 ea3Var, k51 k51Var, qx1 qx1Var, w11 processState, cs1 cs1Var, String str, Integer num, af3 af3Var, ar2 ar2Var, Boolean bool, Integer num2, Integer num3, hz3 hz3Var, ep2 ep2Var, u61 u61Var, kh1 kh1Var, ie ieVar, hv hvVar, on3 on3Var, kk2 kk2Var, Integer num4, r11 r11Var, int i4, int i5, wt2 wt2Var) {
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(rootTraceId, "rootTraceId");
        Intrinsics.checkNotNullParameter(errorMessages, "errorMessages");
        Intrinsics.checkNotNullParameter(processState, "processState");
        this.a = i;
        this.b = traceMetaSet;
        this.c = cuiName;
        this.d = tags;
        this.e = rootTraceId;
        this.f = i2;
        this.g = i3;
        this.h = j;
        this.i = j2;
        this.j = j3;
        this.k = z;
        this.l = u11Var;
        this.m = z2;
        this.n = th;
        this.o = th2;
        this.p = j4;
        this.q = j5;
        this.r = j6;
        this.s = errorMessages;
        this.t = gh3Var;
        this.u = ea3Var;
        this.v = k51Var;
        this.w = qx1Var;
        this.x = processState;
        this.y = cs1Var;
        this.z = str;
        this.A = num;
        this.B = af3Var;
        this.C = ar2Var;
        this.D = bool;
        this.E = num2;
        this.F = num3;
        this.G = hz3Var;
        this.H = ep2Var;
        this.I = u61Var;
        this.J = kh1Var;
        this.K = ieVar;
        this.L = hvVar;
        this.M = on3Var;
        this.N = kk2Var;
        this.O = num4;
        this.P = r11Var;
        this.Q = i4;
        this.R = i5;
        this.S = wt2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uj2)) {
            return false;
        }
        uj2 uj2Var = (uj2) obj;
        return this.a == uj2Var.a && Intrinsics.areEqual(this.b, uj2Var.b) && this.c == uj2Var.c && Intrinsics.areEqual(this.d, uj2Var.d) && Intrinsics.areEqual(this.e, uj2Var.e) && this.f == uj2Var.f && this.g == uj2Var.g && this.h == uj2Var.h && this.i == uj2Var.i && this.j == uj2Var.j && this.k == uj2Var.k && this.l == uj2Var.l && this.m == uj2Var.m && Intrinsics.areEqual(this.n, uj2Var.n) && Intrinsics.areEqual(this.o, uj2Var.o) && Duration.m2875equalsimpl0(this.p, uj2Var.p) && Duration.m2875equalsimpl0(this.q, uj2Var.q) && Duration.m2875equalsimpl0(this.r, uj2Var.r) && Intrinsics.areEqual(this.s, uj2Var.s) && Intrinsics.areEqual(this.t, uj2Var.t) && Intrinsics.areEqual(this.u, uj2Var.u) && Intrinsics.areEqual(this.v, uj2Var.v) && Intrinsics.areEqual(this.w, uj2Var.w) && this.x == uj2Var.x && Intrinsics.areEqual(this.y, uj2Var.y) && Intrinsics.areEqual(this.z, uj2Var.z) && Intrinsics.areEqual(this.A, uj2Var.A) && Intrinsics.areEqual(this.B, uj2Var.B) && Intrinsics.areEqual(this.C, uj2Var.C) && Intrinsics.areEqual(this.D, uj2Var.D) && Intrinsics.areEqual(this.E, uj2Var.E) && Intrinsics.areEqual(this.F, uj2Var.F) && Intrinsics.areEqual(this.G, uj2Var.G) && Intrinsics.areEqual(this.H, uj2Var.H) && Intrinsics.areEqual(this.I, uj2Var.I) && Intrinsics.areEqual(this.J, uj2Var.J) && Intrinsics.areEqual(this.K, uj2Var.K) && Intrinsics.areEqual(this.L, uj2Var.L) && Intrinsics.areEqual(this.M, uj2Var.M) && Intrinsics.areEqual(this.N, uj2Var.N) && Intrinsics.areEqual(this.O, uj2Var.O) && this.P == uj2Var.P && this.Q == uj2Var.Q && this.R == uj2Var.R && Intrinsics.areEqual(this.S, uj2Var.S);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v120 */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v15, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3 */
    public final int hashCode() {
        int iHashCode = (Long.hashCode(this.j) + ((Long.hashCode(this.i) + ((Long.hashCode(this.h) + y1.a(this.g, y1.a(this.f, (this.e.hashCode() + h93.a(this.d, (this.c.hashCode() + ((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31)) * 31, 31)) * 31, 31), 31)) * 31)) * 31)) * 31;
        boolean z = this.k;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = (iHashCode + r0) * 31;
        u11 u11Var = this.l;
        int iHashCode2 = (i + (u11Var == null ? 0 : u11Var.hashCode())) * 31;
        boolean z2 = this.m;
        int i2 = (iHashCode2 + (z2 ? 1 : z2)) * 31;
        Throwable th = this.n;
        int iHashCode3 = (i2 + (th == null ? 0 : th.hashCode())) * 31;
        Throwable th2 = this.o;
        int iA = h93.a(this.s, (Duration.m2889hashCodeimpl(this.r) + ((Duration.m2889hashCodeimpl(this.q) + ((Duration.m2889hashCodeimpl(this.p) + ((iHashCode3 + (th2 == null ? 0 : th2.hashCode())) * 31)) * 31)) * 31)) * 31, 31);
        gh3 gh3Var = this.t;
        int iHashCode4 = (iA + (gh3Var == null ? 0 : gh3Var.hashCode())) * 31;
        ea3 ea3Var = this.u;
        int iHashCode5 = (iHashCode4 + (ea3Var == null ? 0 : ea3Var.hashCode())) * 31;
        k51 k51Var = this.v;
        int iHashCode6 = (iHashCode5 + (k51Var == null ? 0 : k51Var.hashCode())) * 31;
        qx1 qx1Var = this.w;
        int iHashCode7 = (this.x.hashCode() + ((iHashCode6 + (qx1Var == null ? 0 : qx1Var.hashCode())) * 31)) * 31;
        cs1 cs1Var = this.y;
        int iHashCode8 = (iHashCode7 + (cs1Var == null ? 0 : cs1Var.hashCode())) * 31;
        String str = this.z;
        int iHashCode9 = (iHashCode8 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.A;
        int iHashCode10 = (iHashCode9 + (num == null ? 0 : num.hashCode())) * 31;
        af3 af3Var = this.B;
        int iHashCode11 = (iHashCode10 + (af3Var == null ? 0 : af3Var.hashCode())) * 31;
        ar2 ar2Var = this.C;
        int iHashCode12 = (iHashCode11 + (ar2Var == null ? 0 : ar2Var.hashCode())) * 31;
        Boolean bool = this.D;
        int iHashCode13 = (iHashCode12 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num2 = this.E;
        int iHashCode14 = (iHashCode13 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.F;
        int iHashCode15 = (iHashCode14 + (num3 == null ? 0 : num3.hashCode())) * 31;
        hz3 hz3Var = this.G;
        int iHashCode16 = (iHashCode15 + (hz3Var == null ? 0 : hz3Var.hashCode())) * 31;
        ep2 ep2Var = this.H;
        int iHashCode17 = (iHashCode16 + (ep2Var == null ? 0 : ep2Var.hashCode())) * 31;
        u61 u61Var = this.I;
        int iHashCode18 = (iHashCode17 + (u61Var == null ? 0 : u61Var.hashCode())) * 31;
        kh1 kh1Var = this.J;
        int iHashCode19 = (iHashCode18 + (kh1Var == null ? 0 : kh1Var.hashCode())) * 31;
        ie ieVar = this.K;
        int iHashCode20 = (iHashCode19 + (ieVar == null ? 0 : ieVar.hashCode())) * 31;
        hv hvVar = this.L;
        int iHashCode21 = (iHashCode20 + (hvVar == null ? 0 : hvVar.hashCode())) * 31;
        on3 on3Var = this.M;
        int iHashCode22 = (iHashCode21 + (on3Var == null ? 0 : on3Var.hashCode())) * 31;
        kk2 kk2Var = this.N;
        int iHashCode23 = (iHashCode22 + (kk2Var == null ? 0 : kk2Var.hashCode())) * 31;
        Integer num4 = this.O;
        int iHashCode24 = (iHashCode23 + (num4 == null ? 0 : num4.hashCode())) * 31;
        r11 r11Var = this.P;
        int iA2 = y1.a(this.R, y1.a(this.Q, (iHashCode24 + (r11Var == null ? 0 : r11Var.hashCode())) * 31, 31), 31);
        wt2 wt2Var = this.S;
        return iA2 + (wt2Var != null ? wt2Var.hashCode() : 0);
    }

    public final String toString() {
        return "PerTraceMeta(id=" + this.a + ", traceMetaSet=" + this.b + ", cuiName=" + this.c + ", tags=" + this.d + ", rootTraceId=" + this.e + ", parentTraceId=" + this.f + ", traceDepth=" + this.g + ", startTimeMillis=" + this.h + ", timeSinceSdkInitStartMillis=" + this.i + ", timeSinceSdkInitCompleteMillis=" + this.j + ", useAsyncAndroidTrace=" + this.k + ", gmsgName=" + this.l + ", isSuccess=" + this.m + ", exception=" + this.n + ", causingException=" + this.o + ", latency=" + Duration.m2903toStringimpl(this.p) + ", cpuTime=" + Duration.m2903toStringimpl(this.q) + ", childCpuTime=" + Duration.m2903toStringimpl(this.r) + ", errorMessages=" + this.s + ", signalMeta=" + this.t + ", scarCacheEvictionData=" + this.u + ", h5Data=" + this.v + ", mraidData=" + this.w + ", processState=" + this.x + ", jsEngineData=" + this.y + ", cronetProvider=" + this.z + ", customTabsNavigationEvent=" + this.A + ", signalCacheData=" + this.B + ", preloadData=" + this.C + ", hasNetworkConnectivity=" + this.D + ", networkType=" + this.E + ", networkTypeCoarse=" + this.F + ", webViewData=" + this.G + ", postClickLifecycleMonitoringData=" + this.H + ", hsdpServiceData=" + this.I + ", installReferrerDetails=" + this.J + ", adapterInitializationData=" + this.K + ", centralizedManagerPreloadData=" + this.L + ", swipeableInterstitialSettleData=" + this.M + ", persistentCacheEventData=" + this.N + ", liveWebViewCount=" + this.O + ", contentProviderType=" + this.P + ", previousAppExitReason=" + this.Q + ", previousAppExitSignal=" + this.R + ", preloadValidatorData=" + this.S + ")";
    }

    public final long c() {
        return this.p;
    }

    public final long b() {
        return this.q;
    }

    public final long a() {
        return this.r;
    }

    public /* synthetic */ uj2(int i, ks3 ks3Var, s11 s11Var, List list, UUID uuid, int i2, int i3, long j, long j2, long j3, boolean z, u11 u11Var, boolean z2, Throwable th, Throwable th2, long j4, long j5, long j6, List list2, gh3 gh3Var, ea3 ea3Var, k51 k51Var, qx1 qx1Var, w11 w11Var, cs1 cs1Var, String str, Integer num, af3 af3Var, ar2 ar2Var, Boolean bool, Integer num2, Integer num3, hz3 hz3Var, ep2 ep2Var, u61 u61Var, kh1 kh1Var, ie ieVar, hv hvVar, on3 on3Var, kk2 kk2Var, Integer num4, r11 r11Var, int i4, int i5, wt2 wt2Var, int i6) {
        this(i, ks3Var, s11Var, list, uuid, i2, i3, j, j2, j3, z, u11Var, z2, th, th2, j4, j5, j6, list2, gh3Var, ea3Var, k51Var, qx1Var, w11Var, cs1Var, str, num, af3Var, ar2Var, bool, num2, num3, hz3Var, ep2Var, u61Var, kh1Var, ieVar, hvVar, on3Var, kk2Var, num4, r11Var, i4, i5, wt2Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ uj2(int i, ks3 ks3Var, s11 s11Var, List list, UUID uuid, int i2, int i3, long j, long j2, long j3, boolean z, Boolean bool, Integer num, Integer num2, int i4) {
        int i5 = -1;
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        this(i, ks3Var, s11Var, list, uuid, i2, i3, j, j2, j3, z, null, true, null, null, DurationKt.toDuration(0, durationUnit), DurationKt.toDuration(0, durationUnit), DurationKt.toDuration(0, durationUnit), new ArrayList(), null, null, null, null, w11.PROCESS_STATE_UNKNOWN, null, null, null, null, null, (i4 & 536870912) != 0 ? null : bool, (i4 & 1073741824) != 0 ? null : num, (i4 & Integer.MIN_VALUE) != 0 ? null : num2, null, null, null, null, null, null, null, null, i5, null, -1, -1, null, 0);
    }

    public final void b(long j) {
        this.q = j;
    }

    public final void a(long j) {
        this.r = j;
    }
}
