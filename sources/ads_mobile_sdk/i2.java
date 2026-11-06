package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class i2 {
    public static final List J0 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"com.google.ads.mediation.customevent.CustomEventAdapter", "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"});
    public final JsonObject A;
    public final boolean A0;
    public final boolean B;
    public final boolean B0;
    public final JsonObject C;
    public final long C0;
    public final List D;
    public final String D0;
    public final List E;
    public final String E0;
    public final boolean F;
    public final String F0;
    public final String G;
    public final JsonObject G0;
    public final e2 H;
    public final boolean H0;
    public final List I;
    public final int I0;
    public final vc1 J;
    public final String K;
    public final int L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    public final boolean P;
    public final boolean Q;
    public final List R;
    public final List S;
    public final dg2 T;
    public final String U;
    public final List V;
    public final long W;
    public final List X;
    public final String Y;
    public final JsonObject Z;
    public final String a;
    public final JsonArray a0;
    public final List b;
    public final List b0;
    public final JsonObject c;
    public final boolean c0;
    public final String d;
    public final boolean d0;
    public final List e;
    public final long e0;
    public final String f;
    public final String f0;
    public final List g;
    public final List g0;
    public final String h;
    public final String h0;
    public final String i;
    public final String i0;
    public final String j;
    public final List j0;
    public final String k;
    public final List k0;
    public final bc l;
    public final RewardItem l0;
    public final xc m;
    public final JsonObject m0;
    public final String n;
    public final String n0;
    public final boolean o;
    public final o93 o0;
    public final boolean p;
    public final boolean p0;
    public final Bundle q;
    public final h2 q0;
    public final String r;
    public final boolean r0;
    public final boolean s;
    public final boolean s0;
    public final List t;
    public final String t0;
    public final boolean u;
    public final qb2 u0;
    public final List v;
    public final qm3 v0;
    public final int w;
    public final uo2 w0;
    public final String x;
    public final ga2 x0;
    public final List y;
    public final double y0;
    public final String z;
    public final st2 z0;

    public i2(String activeViewJSON, ArrayList adapterClasses, JsonObject adapterData, String adapterResponseInfoKey, ArrayList adLoadUrls, String adNetworkClassName, ArrayList adSizes, String adSourceName, String adSourceId, String adSourceInstanceName, String adSourceInstanceId, bc adType, xc xcVar, String allocationId, boolean z, boolean z2, Bundle analyticsEventNameToParametersMap, String bidResponse, boolean z3, ArrayList cacheHitUrls, boolean z4, ArrayList clickUrls, int i, String str, ArrayList containerSizes, String debugDialog, JsonObject debugSignals, boolean z5, JsonObject extras, ArrayList fillUrls, ArrayList adQualityUrls, boolean z6, String id, e2 impressionType, ArrayList impressionUrls, vc1 vc1Var, String integerRequestId, int i2, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, ArrayList manualTrackingUrls, ArrayList noFillUrls, dg2 omidSettings, String str2, ArrayList presentationUrls, long j, ArrayList presentationErrorUrls, String qData, JsonObject recursiveRequestParameters, JsonArray jsonArray, ArrayList renderers, boolean z12, boolean z13, long j2, String responseId, ArrayList rewardGrantedUrls, String rewardTransactionId, String rewardValidFromTimestamp, ArrayList rewardVideoCompleteUrls, ArrayList rewardVideoStartUrls, l63 l63Var, JsonObject rtbNativeRequiredAssets, String ruleLineExternalId, o93 safeBrowsingConfig, boolean z14, h2 showableImpressionType, boolean z15, boolean z16, String watermark, qb2 qb2Var, qm3 qm3Var, uo2 uo2Var, ga2 ga2Var, double d, st2 preloadSortType, boolean z17, boolean z18, long j3, String str3, String str4, String str5, JsonObject responseInfoExtrasOverride, boolean z19, int i3) {
        Intrinsics.checkNotNullParameter(activeViewJSON, "activeViewJSON");
        Intrinsics.checkNotNullParameter(adapterClasses, "adapterClasses");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        Intrinsics.checkNotNullParameter(adapterResponseInfoKey, "adapterResponseInfoKey");
        Intrinsics.checkNotNullParameter(adLoadUrls, "adLoadUrls");
        Intrinsics.checkNotNullParameter(adNetworkClassName, "adNetworkClassName");
        Intrinsics.checkNotNullParameter(adSizes, "adSizes");
        Intrinsics.checkNotNullParameter(adSourceName, "adSourceName");
        Intrinsics.checkNotNullParameter(adSourceId, "adSourceId");
        Intrinsics.checkNotNullParameter(adSourceInstanceName, "adSourceInstanceName");
        Intrinsics.checkNotNullParameter(adSourceInstanceId, "adSourceInstanceId");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(allocationId, "allocationId");
        Intrinsics.checkNotNullParameter(analyticsEventNameToParametersMap, "analyticsEventNameToParametersMap");
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        Intrinsics.checkNotNullParameter(cacheHitUrls, "cacheHitUrls");
        Intrinsics.checkNotNullParameter(clickUrls, "clickUrls");
        Intrinsics.checkNotNullParameter(containerSizes, "containerSizes");
        Intrinsics.checkNotNullParameter(debugDialog, "debugDialog");
        Intrinsics.checkNotNullParameter(debugSignals, "debugSignals");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(fillUrls, "fillUrls");
        Intrinsics.checkNotNullParameter(adQualityUrls, "adQualityUrls");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(impressionType, "impressionType");
        Intrinsics.checkNotNullParameter(impressionUrls, "impressionUrls");
        Intrinsics.checkNotNullParameter(integerRequestId, "integerRequestId");
        Intrinsics.checkNotNullParameter(manualTrackingUrls, "manualTrackingUrls");
        Intrinsics.checkNotNullParameter(noFillUrls, "noFillUrls");
        Intrinsics.checkNotNullParameter(omidSettings, "omidSettings");
        Intrinsics.checkNotNullParameter(presentationUrls, "presentationUrls");
        Intrinsics.checkNotNullParameter(presentationErrorUrls, "presentationErrorUrls");
        Intrinsics.checkNotNullParameter(qData, "qData");
        Intrinsics.checkNotNullParameter(recursiveRequestParameters, "recursiveRequestParameters");
        Intrinsics.checkNotNullParameter(renderers, "renderers");
        Intrinsics.checkNotNullParameter(responseId, "responseId");
        Intrinsics.checkNotNullParameter(rewardGrantedUrls, "rewardGrantedUrls");
        Intrinsics.checkNotNullParameter(rewardTransactionId, "rewardTransactionId");
        Intrinsics.checkNotNullParameter(rewardValidFromTimestamp, "rewardValidFromTimestamp");
        Intrinsics.checkNotNullParameter(rewardVideoCompleteUrls, "rewardVideoCompleteUrls");
        Intrinsics.checkNotNullParameter(rewardVideoStartUrls, "rewardVideoStartUrls");
        Intrinsics.checkNotNullParameter(rtbNativeRequiredAssets, "rtbNativeRequiredAssets");
        Intrinsics.checkNotNullParameter(ruleLineExternalId, "ruleLineExternalId");
        Intrinsics.checkNotNullParameter(safeBrowsingConfig, "safeBrowsingConfig");
        Intrinsics.checkNotNullParameter(showableImpressionType, "showableImpressionType");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(preloadSortType, "preloadSortType");
        Intrinsics.checkNotNullParameter(responseInfoExtrasOverride, "responseInfoExtrasOverride");
        this.a = activeViewJSON;
        this.b = adapterClasses;
        this.c = adapterData;
        this.d = adapterResponseInfoKey;
        this.e = adLoadUrls;
        this.f = adNetworkClassName;
        this.g = adSizes;
        this.h = adSourceName;
        this.i = adSourceId;
        this.j = adSourceInstanceName;
        this.k = adSourceInstanceId;
        this.l = adType;
        this.m = xcVar;
        this.n = allocationId;
        this.o = z;
        this.p = z2;
        this.q = analyticsEventNameToParametersMap;
        this.r = bidResponse;
        this.s = z3;
        this.t = cacheHitUrls;
        this.u = z4;
        this.v = clickUrls;
        this.w = i;
        this.x = str;
        this.y = containerSizes;
        this.z = debugDialog;
        this.A = debugSignals;
        this.B = z5;
        this.C = extras;
        this.D = fillUrls;
        this.E = adQualityUrls;
        this.F = z6;
        this.G = id;
        this.H = impressionType;
        this.I = impressionUrls;
        this.J = vc1Var;
        this.K = integerRequestId;
        this.L = i2;
        this.M = z7;
        this.N = z8;
        this.O = z9;
        this.P = z10;
        this.Q = z11;
        this.R = manualTrackingUrls;
        this.S = noFillUrls;
        this.T = omidSettings;
        this.U = str2;
        this.V = presentationUrls;
        this.W = j;
        this.X = presentationErrorUrls;
        this.Y = qData;
        this.Z = recursiveRequestParameters;
        this.a0 = jsonArray;
        this.b0 = renderers;
        this.c0 = z12;
        this.d0 = z13;
        this.e0 = j2;
        this.f0 = responseId;
        this.g0 = rewardGrantedUrls;
        this.h0 = rewardTransactionId;
        this.i0 = rewardValidFromTimestamp;
        this.j0 = rewardVideoCompleteUrls;
        this.k0 = rewardVideoStartUrls;
        this.l0 = l63Var;
        this.m0 = rtbNativeRequiredAssets;
        this.n0 = ruleLineExternalId;
        this.o0 = safeBrowsingConfig;
        this.p0 = z14;
        this.q0 = showableImpressionType;
        this.r0 = z15;
        this.s0 = z16;
        this.t0 = watermark;
        this.u0 = qb2Var;
        this.v0 = qm3Var;
        this.w0 = uo2Var;
        this.x0 = ga2Var;
        this.y0 = d;
        this.z0 = preloadSortType;
        this.A0 = z17;
        this.B0 = z18;
        this.C0 = j3;
        this.D0 = str3;
        this.E0 = str4;
        this.F0 = str5;
        this.G0 = responseInfoExtrasOverride;
        this.H0 = z19;
        this.I0 = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return false;
        }
        i2 i2Var = (i2) obj;
        return Intrinsics.areEqual(this.a, i2Var.a) && Intrinsics.areEqual(this.b, i2Var.b) && Intrinsics.areEqual(this.c, i2Var.c) && Intrinsics.areEqual(this.d, i2Var.d) && Intrinsics.areEqual(this.e, i2Var.e) && Intrinsics.areEqual(this.f, i2Var.f) && Intrinsics.areEqual(this.g, i2Var.g) && Intrinsics.areEqual(this.h, i2Var.h) && Intrinsics.areEqual(this.i, i2Var.i) && Intrinsics.areEqual(this.j, i2Var.j) && Intrinsics.areEqual(this.k, i2Var.k) && this.l == i2Var.l && Intrinsics.areEqual(this.m, i2Var.m) && Intrinsics.areEqual(this.n, i2Var.n) && this.o == i2Var.o && this.p == i2Var.p && Intrinsics.areEqual(this.q, i2Var.q) && Intrinsics.areEqual(this.r, i2Var.r) && this.s == i2Var.s && Intrinsics.areEqual(this.t, i2Var.t) && this.u == i2Var.u && Intrinsics.areEqual(this.v, i2Var.v) && this.w == i2Var.w && Intrinsics.areEqual(this.x, i2Var.x) && Intrinsics.areEqual(this.y, i2Var.y) && Intrinsics.areEqual(this.z, i2Var.z) && Intrinsics.areEqual(this.A, i2Var.A) && this.B == i2Var.B && Intrinsics.areEqual(this.C, i2Var.C) && Intrinsics.areEqual(this.D, i2Var.D) && Intrinsics.areEqual(this.E, i2Var.E) && this.F == i2Var.F && Intrinsics.areEqual(this.G, i2Var.G) && this.H == i2Var.H && Intrinsics.areEqual(this.I, i2Var.I) && Intrinsics.areEqual(this.J, i2Var.J) && Intrinsics.areEqual(this.K, i2Var.K) && this.L == i2Var.L && this.M == i2Var.M && this.N == i2Var.N && this.O == i2Var.O && this.P == i2Var.P && this.Q == i2Var.Q && Intrinsics.areEqual(this.R, i2Var.R) && Intrinsics.areEqual(this.S, i2Var.S) && Intrinsics.areEqual(this.T, i2Var.T) && Intrinsics.areEqual(this.U, i2Var.U) && Intrinsics.areEqual(this.V, i2Var.V) && Duration.m2875equalsimpl0(this.W, i2Var.W) && Intrinsics.areEqual(this.X, i2Var.X) && Intrinsics.areEqual(this.Y, i2Var.Y) && Intrinsics.areEqual(this.Z, i2Var.Z) && Intrinsics.areEqual(this.a0, i2Var.a0) && Intrinsics.areEqual(this.b0, i2Var.b0) && this.c0 == i2Var.c0 && this.d0 == i2Var.d0 && Duration.m2875equalsimpl0(this.e0, i2Var.e0) && Intrinsics.areEqual(this.f0, i2Var.f0) && Intrinsics.areEqual(this.g0, i2Var.g0) && Intrinsics.areEqual(this.h0, i2Var.h0) && Intrinsics.areEqual(this.i0, i2Var.i0) && Intrinsics.areEqual(this.j0, i2Var.j0) && Intrinsics.areEqual(this.k0, i2Var.k0) && Intrinsics.areEqual(this.l0, i2Var.l0) && Intrinsics.areEqual(this.m0, i2Var.m0) && Intrinsics.areEqual(this.n0, i2Var.n0) && Intrinsics.areEqual(this.o0, i2Var.o0) && this.p0 == i2Var.p0 && this.q0 == i2Var.q0 && this.r0 == i2Var.r0 && this.s0 == i2Var.s0 && Intrinsics.areEqual(this.t0, i2Var.t0) && Intrinsics.areEqual(this.u0, i2Var.u0) && Intrinsics.areEqual(this.v0, i2Var.v0) && Intrinsics.areEqual(this.w0, i2Var.w0) && Intrinsics.areEqual(this.x0, i2Var.x0) && Double.compare(this.y0, i2Var.y0) == 0 && this.z0 == i2Var.z0 && this.A0 == i2Var.A0 && this.B0 == i2Var.B0 && Duration.m2875equalsimpl0(this.C0, i2Var.C0) && Intrinsics.areEqual(this.D0, i2Var.D0) && Intrinsics.areEqual(this.E0, i2Var.E0) && Intrinsics.areEqual(this.F0, i2Var.F0) && Intrinsics.areEqual(this.G0, i2Var.G0) && this.H0 == i2Var.H0 && this.I0 == i2Var.I0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v132 */
    /* JADX WARN: Type inference failed for: r0v90, types: [int] */
    /* JADX WARN: Type inference failed for: r2v105, types: [int] */
    /* JADX WARN: Type inference failed for: r2v107, types: [int] */
    /* JADX WARN: Type inference failed for: r2v126, types: [int] */
    /* JADX WARN: Type inference failed for: r2v128, types: [int] */
    /* JADX WARN: Type inference failed for: r2v139 */
    /* JADX WARN: Type inference failed for: r2v140 */
    /* JADX WARN: Type inference failed for: r2v145 */
    /* JADX WARN: Type inference failed for: r2v146 */
    /* JADX WARN: Type inference failed for: r2v148 */
    /* JADX WARN: Type inference failed for: r2v149 */
    /* JADX WARN: Type inference failed for: r2v151 */
    /* JADX WARN: Type inference failed for: r2v152 */
    /* JADX WARN: Type inference failed for: r2v153 */
    /* JADX WARN: Type inference failed for: r2v154 */
    /* JADX WARN: Type inference failed for: r2v155 */
    /* JADX WARN: Type inference failed for: r2v157 */
    /* JADX WARN: Type inference failed for: r2v158 */
    /* JADX WARN: Type inference failed for: r2v160 */
    /* JADX WARN: Type inference failed for: r2v161 */
    /* JADX WARN: Type inference failed for: r2v162 */
    /* JADX WARN: Type inference failed for: r2v163 */
    /* JADX WARN: Type inference failed for: r2v164 */
    /* JADX WARN: Type inference failed for: r2v165 */
    /* JADX WARN: Type inference failed for: r2v166 */
    /* JADX WARN: Type inference failed for: r2v167 */
    /* JADX WARN: Type inference failed for: r2v168 */
    /* JADX WARN: Type inference failed for: r2v169 */
    /* JADX WARN: Type inference failed for: r2v17, types: [int] */
    /* JADX WARN: Type inference failed for: r2v170 */
    /* JADX WARN: Type inference failed for: r2v171 */
    /* JADX WARN: Type inference failed for: r2v172 */
    /* JADX WARN: Type inference failed for: r2v173 */
    /* JADX WARN: Type inference failed for: r2v174 */
    /* JADX WARN: Type inference failed for: r2v175 */
    /* JADX WARN: Type inference failed for: r2v176 */
    /* JADX WARN: Type inference failed for: r2v177 */
    /* JADX WARN: Type inference failed for: r2v178 */
    /* JADX WARN: Type inference failed for: r2v179 */
    /* JADX WARN: Type inference failed for: r2v180 */
    /* JADX WARN: Type inference failed for: r2v19, types: [int] */
    /* JADX WARN: Type inference failed for: r2v25, types: [int] */
    /* JADX WARN: Type inference failed for: r2v28, types: [int] */
    /* JADX WARN: Type inference failed for: r2v38, types: [int] */
    /* JADX WARN: Type inference failed for: r2v43, types: [int] */
    /* JADX WARN: Type inference failed for: r2v55, types: [int] */
    /* JADX WARN: Type inference failed for: r2v57, types: [int] */
    /* JADX WARN: Type inference failed for: r2v59, types: [int] */
    /* JADX WARN: Type inference failed for: r2v61, types: [int] */
    /* JADX WARN: Type inference failed for: r2v63, types: [int] */
    /* JADX WARN: Type inference failed for: r2v82, types: [int] */
    /* JADX WARN: Type inference failed for: r2v84, types: [int] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public final int hashCode() {
        int iHashCode = (this.l.hashCode() + ob.a(this.k, ob.a(this.j, ob.a(this.i, ob.a(this.h, h93.a(this.g, ob.a(this.f, h93.a(this.e, ob.a(this.d, z1.a(this.c, h93.a(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31)) * 31;
        xc xcVar = this.m;
        int iA = ob.a(this.n, (iHashCode + (xcVar == null ? 0 : xcVar.hashCode())) * 31, 31);
        boolean z = this.o;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iA + r2) * 31;
        boolean z2 = this.p;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int iA2 = ob.a(this.r, (this.q.hashCode() + ((i + r22) * 31)) * 31, 31);
        boolean z3 = this.s;
        ?? r23 = z3;
        if (z3) {
            r23 = 1;
        }
        int iA3 = h93.a(this.t, (iA2 + r23) * 31, 31);
        boolean z4 = this.u;
        ?? r24 = z4;
        if (z4) {
            r24 = 1;
        }
        int iA4 = y1.a(this.w, h93.a(this.v, (iA3 + r24) * 31, 31), 31);
        String str = this.x;
        int iA5 = z1.a(this.A, ob.a(this.z, h93.a(this.y, (iA4 + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31);
        boolean z5 = this.B;
        ?? r25 = z5;
        if (z5) {
            r25 = 1;
        }
        int iA6 = h93.a(this.E, h93.a(this.D, z1.a(this.C, (iA5 + r25) * 31, 31), 31), 31);
        boolean z6 = this.F;
        ?? r26 = z6;
        if (z6) {
            r26 = 1;
        }
        int iA7 = h93.a(this.I, (this.H.hashCode() + ob.a(this.G, (iA6 + r26) * 31, 31)) * 31, 31);
        vc1 vc1Var = this.J;
        int iA8 = y1.a(this.L, ob.a(this.K, (iA7 + (vc1Var == null ? 0 : vc1Var.hashCode())) * 31, 31), 31);
        boolean z7 = this.M;
        ?? r27 = z7;
        if (z7) {
            r27 = 1;
        }
        int i2 = (iA8 + r27) * 31;
        boolean z8 = this.N;
        ?? r28 = z8;
        if (z8) {
            r28 = 1;
        }
        int i3 = (i2 + r28) * 31;
        boolean z9 = this.O;
        ?? r29 = z9;
        if (z9) {
            r29 = 1;
        }
        int i4 = (i3 + r29) * 31;
        boolean z10 = this.P;
        ?? r210 = z10;
        if (z10) {
            r210 = 1;
        }
        int i5 = (i4 + r210) * 31;
        boolean z11 = this.Q;
        ?? r211 = z11;
        if (z11) {
            r211 = 1;
        }
        int iHashCode2 = (this.T.hashCode() + h93.a(this.S, h93.a(this.R, (i5 + r211) * 31, 31), 31)) * 31;
        String str2 = this.U;
        int iA9 = z1.a(this.Z, ob.a(this.Y, h93.a(this.X, (Duration.m2889hashCodeimpl(this.W) + h93.a(this.V, (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31)) * 31, 31), 31), 31);
        JsonArray jsonArray = this.a0;
        int iA10 = h93.a(this.b0, (iA9 + (jsonArray == null ? 0 : jsonArray.hashCode())) * 31, 31);
        boolean z12 = this.c0;
        ?? r212 = z12;
        if (z12) {
            r212 = 1;
        }
        int i6 = (iA10 + r212) * 31;
        boolean z13 = this.d0;
        ?? r213 = z13;
        if (z13) {
            r213 = 1;
        }
        int iA11 = h93.a(this.k0, h93.a(this.j0, ob.a(this.i0, ob.a(this.h0, h93.a(this.g0, ob.a(this.f0, (Duration.m2889hashCodeimpl(this.e0) + ((i6 + r213) * 31)) * 31, 31), 31), 31), 31), 31), 31);
        RewardItem rewardItem = this.l0;
        int iHashCode3 = (this.o0.hashCode() + ob.a(this.n0, z1.a(this.m0, (iA11 + (rewardItem == null ? 0 : rewardItem.hashCode())) * 31, 31), 31)) * 31;
        boolean z14 = this.p0;
        ?? r0 = z14;
        if (z14) {
            r0 = 1;
        }
        int iHashCode4 = (this.q0.hashCode() + ((iHashCode3 + r0) * 31)) * 31;
        boolean z15 = this.r0;
        ?? r214 = z15;
        if (z15) {
            r214 = 1;
        }
        int i7 = (iHashCode4 + r214) * 31;
        boolean z16 = this.s0;
        ?? r215 = z16;
        if (z16) {
            r215 = 1;
        }
        int iA12 = ob.a(this.t0, (i7 + r215) * 31, 31);
        qb2 qb2Var = this.u0;
        int iHashCode5 = (iA12 + (qb2Var == null ? 0 : qb2Var.hashCode())) * 31;
        qm3 qm3Var = this.v0;
        int iHashCode6 = (iHashCode5 + (qm3Var == null ? 0 : qm3Var.hashCode())) * 31;
        uo2 uo2Var = this.w0;
        int iHashCode7 = (iHashCode6 + (uo2Var == null ? 0 : uo2Var.hashCode())) * 31;
        ga2 ga2Var = this.x0;
        int iHashCode8 = (this.z0.hashCode() + ((Double.hashCode(this.y0) + ((iHashCode7 + (ga2Var == null ? 0 : ga2Var.a.hashCode())) * 31)) * 31)) * 31;
        boolean z17 = this.A0;
        ?? r216 = z17;
        if (z17) {
            r216 = 1;
        }
        int i8 = (iHashCode8 + r216) * 31;
        boolean z18 = this.B0;
        ?? r217 = z18;
        if (z18) {
            r217 = 1;
        }
        int iM2889hashCodeimpl = (Duration.m2889hashCodeimpl(this.C0) + ((i8 + r217) * 31)) * 31;
        String str3 = this.D0;
        int iHashCode9 = (iM2889hashCodeimpl + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.E0;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.F0;
        int iA13 = z1.a(this.G0, (iHashCode10 + (str5 != null ? str5.hashCode() : 0)) * 31, 31);
        boolean z19 = this.H0;
        return Integer.hashCode(this.I0) + ((iA13 + (z19 ? 1 : z19)) * 31);
    }

    public final String toString() {
        return "AdConfiguration(activeViewJSON=" + this.a + ", adapterClasses=" + this.b + ", adapterData=" + this.c + ", adapterResponseInfoKey=" + this.d + ", adLoadUrls=" + this.e + ", adNetworkClassName=" + this.f + ", adSizes=" + this.g + ", adSourceName=" + this.h + ", adSourceId=" + this.i + ", adSourceInstanceName=" + this.j + ", adSourceInstanceId=" + this.k + ", adType=" + this.l + ", adValueParcel=" + this.m + ", allocationId=" + this.n + ", allowPubOwnedAdView=" + this.o + ", allowPubRenderedAttribution=" + this.p + ", analyticsEventNameToParametersMap=" + this.q + ", bidResponse=" + this.r + ", bufferClickUrlAsReadyToPing=" + this.s + ", cacheHitUrls=" + this.t + ", checkNativeRequiredAssetViewability=" + this.u + ", clickUrls=" + this.v + ", configIndex=" + this.w + ", contentUrl=" + this.x + ", containerSizes=" + this.y + ", debugDialog=" + this.z + ", debugSignals=" + this.A + ", enableLockScreenAd=" + this.B + ", extras=" + this.C + ", fillUrls=" + this.D + ", adQualityUrls=" + this.E + ", forceSoftwareRenderingAdWebview=" + this.F + ", id=" + this.G + ", impressionType=" + this.H + ", impressionUrls=" + this.I + ", inlineAd=" + this.J + ", integerRequestId=" + this.K + ", interstitialOrientation=" + this.L + ", isClosableAreaDisabled=" + this.M + ", isCollapsible=" + this.N + ", isCustomCloseBlocked=" + this.O + ", isOmidEnabled=" + this.P + ", isScrollAware=" + this.Q + ", manualTrackingUrls=" + this.R + ", noFillUrls=" + this.S + ", omidSettings=" + this.T + ", parallelExclusionKey=" + this.U + ", presentationUrls=" + this.V + ", presentationErrorTimeout=" + Duration.m2903toStringimpl(this.W) + ", presentationErrorUrls=" + this.X + ", qData=" + this.Y + ", recursiveRequestParameters=" + this.Z + ", recursiveSignalCollectionConfig=" + this.a0 + ", renderers=" + this.b0 + ", renderSerially=" + this.c0 + ", renderTestAdLabel=" + this.d0 + ", renderTimeout=" + Duration.m2903toStringimpl(this.e0) + ", responseId=" + this.f0 + ", rewardGrantedUrls=" + this.g0 + ", rewardTransactionId=" + this.h0 + ", rewardValidFromTimestamp=" + this.i0 + ", rewardVideoCompleteUrls=" + this.j0 + ", rewardVideoStartUrls=" + this.k0 + ", rewardItem=" + this.l0 + ", rtbNativeRequiredAssets=" + this.m0 + ", ruleLineExternalId=" + this.n0 + ", safeBrowsingConfig=" + this.o0 + ", scionLoggingEnabled=" + this.p0 + ", showableImpressionType=" + this.q0 + ", testModeEnabled=" + this.r0 + ", useThirdPartyContainerHeight=" + this.s0 + ", watermark=" + this.t0 + ", offlineAdConfig=" + this.u0 + ", swipeableInterstitialAdConfig=" + this.v0 + ", playPrewarmOptions=" + this.w0 + ", networkPingConfig=" + this.x0 + ", preloadSortValue=" + this.y0 + ", preloadSortType=" + this.z0 + ", isMultiAd=" + this.A0 + ", shouldFetchAdValueFromImpression=" + this.B0 + ", postClickLifecycleMonitoringDuration=" + Duration.m2903toStringimpl(this.C0) + ", postClickLifecycleInteractionLabel=" + this.D0 + ", postClickLifecycleInteractionMacroedParams=" + this.E0 + ", baseCreativeConversionUrl=" + this.F0 + ", responseInfoExtrasOverride=" + this.G0 + ", isConsentForm=" + this.H0 + ", consentFormActionIdentifier=" + this.I0 + ")";
    }

    public /* synthetic */ i2(String str, ArrayList arrayList, JsonObject jsonObject, String str2, ArrayList arrayList2, String str3, ArrayList arrayList3, String str4, String str5, String str6, String str7, bc bcVar, xc xcVar, String str8, boolean z, boolean z2, Bundle bundle, String str9, boolean z3, ArrayList arrayList4, boolean z4, ArrayList arrayList5, int i, String str10, ArrayList arrayList6, String str11, JsonObject jsonObject2, boolean z5, JsonObject jsonObject3, ArrayList arrayList7, ArrayList arrayList8, boolean z6, String str12, e2 e2Var, ArrayList arrayList9, vc1 vc1Var, String str13, int i2, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, ArrayList arrayList10, ArrayList arrayList11, dg2 dg2Var, String str14, ArrayList arrayList12, long j, ArrayList arrayList13, String str15, JsonObject jsonObject4, JsonArray jsonArray, ArrayList arrayList14, boolean z12, boolean z13, long j2, String str16, ArrayList arrayList15, String str17, String str18, ArrayList arrayList16, ArrayList arrayList17, l63 l63Var, JsonObject jsonObject5, String str19, o93 o93Var, boolean z14, h2 h2Var, boolean z15, boolean z16, String str20, qb2 qb2Var, qm3 qm3Var, uo2 uo2Var, ga2 ga2Var, double d, st2 st2Var, boolean z17, boolean z18, long j3, String str21, String str22, String str23, JsonObject jsonObject6, boolean z19, int i3, int i4) {
        this(str, arrayList, jsonObject, str2, arrayList2, str3, arrayList3, str4, str5, str6, str7, bcVar, xcVar, str8, z, z2, bundle, str9, z3, arrayList4, z4, arrayList5, i, str10, arrayList6, str11, jsonObject2, z5, jsonObject3, arrayList7, arrayList8, z6, str12, e2Var, arrayList9, vc1Var, str13, i2, z7, z8, z9, z10, z11, arrayList10, arrayList11, dg2Var, str14, arrayList12, j, arrayList13, str15, jsonObject4, jsonArray, arrayList14, z12, z13, j2, str16, arrayList15, str17, str18, arrayList16, arrayList17, l63Var, jsonObject5, str19, o93Var, z14, h2Var, z15, z16, str20, qb2Var, qm3Var, uo2Var, ga2Var, d, st2Var, z17, z18, j3, str21, str22, str23, jsonObject6, z19, i3);
    }

    public final long e() {
        return this.e0;
    }

    public final String c() {
        return this.D0;
    }

    public final String d() {
        return this.E0;
    }

    public final String b() {
        return this.F0;
    }

    public final boolean f() {
        return this.u0 != null;
    }

    public final int a() {
        vc1 vc1Var;
        JsonObject jsonObject;
        JsonArray jsonArrayE;
        if (!this.A0 || (vc1Var = this.J) == null || (jsonObject = vc1Var.d) == null || (jsonArrayE = ds1.e(jsonObject, "slots")) == null) {
            return 1;
        }
        int size = 0;
        for (JsonElement jsonElement : jsonArrayE) {
            ds1 ds1Var = ds1.a;
            JsonArray jsonArrayE2 = ds1.e(jsonElement.getAsJsonObject(), "ads");
            size += jsonArrayE2 != null ? jsonArrayE2.size() : 0;
        }
        return size;
    }
}
