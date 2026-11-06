package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.common.collect.ImmutableMap;
import com.google.gson.JsonObject;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nh0 implements a62 {
    public e63 A;
    public vh1 A0;
    public dw2 B;
    public dw2 B0;
    public j72 C;
    public dw2 C0;
    public i72 D;
    public dw2 D0;
    public dw2 E;
    public dw2 E0;
    public d82 F;
    public dw2 F0;
    public ol0 G;
    public dw2 G0;
    public b82 H;
    public dw2 H0;
    public dw2 I;
    public dw2 I0;
    public qg2 J;
    public dw2 J0;
    public vh1 K;
    public dw2 K0;
    public av3 L;
    public dw2 L0;
    public dw2 M;
    public dw2 M0;
    public bv3 N;
    public dw2 N0;
    public fv3 O;
    public dw2 O0;
    public hv3 P;
    public dw2 P0;
    public ol0 Q;
    public sh0 Q0;
    public iv3 R;
    public dw2 R0;
    public jv3 S;
    public w12 S0;
    public lv3 T;
    public dw2 T0;
    public mv3 U;
    public dw2 U0;
    public cv3 V;
    public dw2 V0;
    public dv3 W;
    public dw2 W0;
    public ev3 X;
    public dw2 X0;
    public nv3 Y;
    public dw2 Y0;
    public kv3 Z;
    public dw2 Z0;
    public final i2 a;
    public gv3 a0;
    public dw2 a1;
    public final vf0 b;
    public ou3 b0;
    public dw2 b1;
    public dw2 c;
    public hc2 c0;
    public dw2 c1;
    public vh1 d;
    public vh1 d0;
    public dw2 d1;
    public vh1 e;
    public dw2 e0;
    public dw2 e1;
    public sh0 f;
    public dw2 f0;
    public dw2 f1;
    public sh0 g;
    public c82 g0;
    public dw2 g1;
    public sh0 h;
    public iu1 h0;
    public dw2 h1;
    public dw2 i;
    public z72 i0;
    public dw2 i1;
    public vh1 j;
    public dw2 j0;
    public dw2 j1;
    public sh0 k;
    public vh1 k0;
    public dw2 k1;
    public dw2 l;
    public dw2 l0;
    public dw2 l1;
    public vh1 m;
    public a82 m0;
    public dw2 m1;
    public ol0 n;
    public sh0 n0;
    public dw2 n1;
    public my1 o;
    public vh1 o0;
    public iu1 o1;
    public dw2 p;
    public dw2 p0;
    public dw2 p1;
    public ny1 q;
    public dw2 q0;
    public dw2 q1;
    public dw2 r;
    public v12 r0;
    public dw2 r1;
    public vh1 s;
    public sc3 s0;
    public vh1 t;
    public dw2 t0;
    public vh1 u;
    public vh1 u0;
    public vh1 v;
    public e53 v0;
    public vh1 w;
    public dw2 w0;
    public dw2 x;
    public dw2 x0;
    public dw2 y;
    public dw2 y0;
    public dw2 z;
    public dw2 z0;

    public nh0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, q52 q52Var, s02 s02Var, PerAdNativeJavscriptEngineJsContext perAdNativeJavscriptEngineJsContext, mb0 mb0Var, JsonObject jsonObject, NativeRequest nativeRequest, View view, r31 r31Var) {
        this.b = vf0Var;
        this.a = i2Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, jsonObject, r31Var);
        a(j53Var, q52Var, s02Var, mb0Var, nativeRequest);
        a(ec3Var);
        a(baseRequest, num, eo2Var, t91Var, view);
        a(perAdNativeJavscriptEngineJsContext);
        g();
        h();
    }

    @Override // ads_mobile_sdk.x1
    public final zh1 a() {
        return (InternalNativeAd) this.T0.get();
    }

    @Override // ads_mobile_sdk.cs
    public final hp2 d() {
        ImmutableMap.Builder builderBuilderWithExpectedSize = ImmutableMap.builderWithExpectedSize(12);
        i2 adConfiguration = this.a;
        ah2 openGmsgHandler = (ah2) this.Q.get();
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(openGmsgHandler, "openGmsgHandler");
        builderBuilderWithExpectedSize.put("/open", new kp2(adConfiguration, openGmsgHandler));
        i2 adConfiguration2 = this.a;
        dw clickGmsgHandler = (dw) this.M.get();
        Intrinsics.checkNotNullParameter(adConfiguration2, "adConfiguration");
        Intrinsics.checkNotNullParameter(clickGmsgHandler, "clickGmsgHandler");
        builderBuilderWithExpectedSize.put("/click", new kp2(adConfiguration2, clickGmsgHandler));
        i2 adConfiguration3 = this.a;
        gc0 customClickGmsgHandler = (gc0) this.W0.get();
        Intrinsics.checkNotNullParameter(adConfiguration3, "adConfiguration");
        Intrinsics.checkNotNullParameter(customClickGmsgHandler, "customClickGmsgHandler");
        builderBuilderWithExpectedSize.put("/nativeAdCustomClick", new kp2(adConfiguration3, customClickGmsgHandler));
        i2 adConfiguration4 = this.a;
        a52 nativeClickRecordedGmsgHandler = (a52) this.X0.get();
        Intrinsics.checkNotNullParameter(adConfiguration4, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeClickRecordedGmsgHandler, "nativeClickRecordedGmsgHandler");
        builderBuilderWithExpectedSize.put("/clickRecorded", new kp2(adConfiguration4, nativeClickRecordedGmsgHandler));
        i2 adConfiguration5 = this.a;
        j52 nativeImpressionEventGmsgHandler = (j52) this.Y0.get();
        Intrinsics.checkNotNullParameter(adConfiguration5, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeImpressionEventGmsgHandler, "nativeImpressionEventGmsgHandler");
        builderBuilderWithExpectedSize.put("/nativeImpression", new kp2(adConfiguration5, nativeImpressionEventGmsgHandler));
        i2 adConfiguration6 = this.a;
        l52 nativeImpressionResponseGmsgHandler = (l52) this.Z0.get();
        Intrinsics.checkNotNullParameter(adConfiguration6, "adConfiguration");
        Intrinsics.checkNotNullParameter(nativeImpressionResponseGmsgHandler, "nativeImpressionResponseGmsgHandler");
        builderBuilderWithExpectedSize.put("/nativeImpressionFlowControl", new kp2(adConfiguration6, nativeImpressionResponseGmsgHandler));
        i2 adConfiguration7 = this.a;
        us1 loadHtmlGmsgHandler = (us1) this.a1.get();
        Intrinsics.checkNotNullParameter(adConfiguration7, "adConfiguration");
        Intrinsics.checkNotNullParameter(loadHtmlGmsgHandler, "loadHtmlGmsgHandler");
        builderBuilderWithExpectedSize.put("/loadHtml", new kp2(adConfiguration7, loadHtmlGmsgHandler));
        i2 adConfiguration8 = this.a;
        ge3 showOverlayGmsgHandler = (ge3) this.c1.get();
        Intrinsics.checkNotNullParameter(adConfiguration8, "adConfiguration");
        Intrinsics.checkNotNullParameter(showOverlayGmsgHandler, "showOverlayGmsgHandler");
        builderBuilderWithExpectedSize.put("/showOverlay", new kp2(adConfiguration8, showOverlayGmsgHandler));
        i2 adConfiguration9 = this.a;
        e61 hideOverlayGmsgHandler = (e61) this.d1.get();
        Intrinsics.checkNotNullParameter(adConfiguration9, "adConfiguration");
        Intrinsics.checkNotNullParameter(hideOverlayGmsgHandler, "hideOverlayGmsgHandler");
        builderBuilderWithExpectedSize.put("/hideOverlay", new kp2(adConfiguration9, hideOverlayGmsgHandler));
        i2 adConfiguration10 = this.a;
        kt1 logScionEventGmsgHandler = (kt1) this.e1.get();
        Intrinsics.checkNotNullParameter(adConfiguration10, "adConfiguration");
        Intrinsics.checkNotNullParameter(logScionEventGmsgHandler, "logScionEventGmsgHandler");
        builderBuilderWithExpectedSize.put("/logScionEvent", new kp2(adConfiguration10, logScionEventGmsgHandler));
        i2 adConfiguration11 = this.a;
        at1 loadNativePolicyValidatorGmsgHandler = (at1) this.f1.get();
        Intrinsics.checkNotNullParameter(adConfiguration11, "adConfiguration");
        Intrinsics.checkNotNullParameter(loadNativePolicyValidatorGmsgHandler, "loadNativePolicyValidatorGmsgHandler");
        builderBuilderWithExpectedSize.put("/loadNativeAdPolicyViolations", new kp2(adConfiguration11, loadNativePolicyValidatorGmsgHandler));
        i2 adConfiguration12 = this.a;
        je3 showValidatorOverlayGmsgHandler = (je3) this.g1.get();
        Intrinsics.checkNotNullParameter(adConfiguration12, "adConfiguration");
        Intrinsics.checkNotNullParameter(showValidatorOverlayGmsgHandler, "showValidatorOverlayGmsgHandler");
        builderBuilderWithExpectedSize.put("/showValidatorOverlay", new kp2(adConfiguration12, showValidatorOverlayGmsgHandler));
        ImmutableMap gmsgHandlers = builderBuilderWithExpectedSize.build();
        Intrinsics.checkNotNullParameter(gmsgHandlers, "gmsgHandlers");
        ImmutableMap modifiers = ImmutableMap.of("GmsgHandlerInstaller", new jp2(gmsgHandlers));
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new hp2(modifiers);
    }

    public final void g() {
        vf0 vf0Var = this.b;
        rm1 rm1Var = new rm1(vf0Var.x, this.c, this.d, this.e, this.i, this.k, this.n, this.z, this.t, this.l0, this.I0, this.P0, this.H0, this.Q0, vf0Var.f0, this.x, vf0Var.F, this.k0, vf0Var.t, this.u0, this.S0);
        Object obj = do0.c;
        this.T0 = new do0(rm1Var);
        vf0 vf0Var2 = this.b;
        ol0 ol0Var = vf0Var2.u;
        vh1 vh1Var = iu1.b;
        this.U0 = new do0(new g73(ol0Var, vh1Var, vf0Var2.A3));
        vf0 vf0Var3 = this.b;
        this.V0 = new do0(new hp3(this.b.u, this.d, this.n, this.U0, new do0(new sq3(vf0Var3.u, vh1Var, vf0Var3.A3)), mj0.a));
        vf0 vf0Var4 = this.b;
        new do0(new af2(vf0Var4.O, this.d, vf0Var4.t, vf0Var4.w));
        this.W0 = new do0(new hc0(this.n));
        this.X0 = new do0(new b52(this.n));
        this.Y0 = new do0(new k52(this.n));
        this.Z0 = new do0(new m52(this.n, this.A));
        this.a1 = new do0(new vs1(this.l0, this.v));
        vf0 vf0Var5 = this.b;
        do0 do0Var = new do0(new k92(vf0Var5.f, vf0Var5.z, this.c, vf0Var5.T0, this.k, vf0Var5.h));
        this.b1 = do0Var;
        this.c1 = new do0(new he3(this.b.w, this.l0, do0Var));
        this.d1 = new do0(new f61(this.b.x, this.l0, this.b1));
        this.e1 = new do0(new lt1(this.b.v0, this.d));
        vf0 vf0Var6 = this.b;
        this.f1 = new do0(new bt1(vf0Var6.t, this.l0, this.v, vf0Var6.b1, vf0Var6.x, this.r));
        this.g1 = new do0(new ke3(this.b.w, this.l0));
        this.h1 = new do0(new e92(this.l0, this.t));
        this.i1 = new do0(new at3(this.b1));
        this.j1 = new do0(new jw3(this.b1));
        this.k1 = new do0(new w32(this.l0));
        this.l1 = new do0(new y42(this.l0));
        sh0 sh0Var = this.k;
        vf0 vf0Var7 = this.b;
        this.m1 = new do0(new m04(sh0Var, vf0Var7.x, vf0Var7.t));
        vf0 vf0Var8 = this.b;
        this.n1 = new do0(new g24(vf0Var8.x, this.k, this.e, vf0Var8.z));
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.m1;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("WebViewPauseResumeListener", dw2Var);
        dw2 dw2Var2 = this.n1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        this.o1 = wd0.a(linkedHashMapA, "WebViewVisibilityChangedAfmaEventListener", dw2Var2, linkedHashMapA);
    }

    public final void h() {
        vf0 vf0Var = this.b;
        n24 n24Var = new n24(vf0Var.x, this.o1, vf0Var.A3);
        Object obj = do0.c;
        this.p1 = new do0(n24Var);
        vf0 vf0Var2 = this.b;
        this.q1 = new do0(new h92(vf0Var2.M4, this.k, vf0Var2.x));
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        dw2 dw2Var = this.p1;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("WebViewVisibilityChangedEventEmitter", dw2Var);
        dw2 dw2Var2 = this.l;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("MraidViewabilityEventListener", dw2Var2);
        dw2 dw2Var3 = this.b1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("NativeVideoViewabilityMonitor", dw2Var3);
        dw2 dw2Var4 = this.q1;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "NativeVideoMraidViewabilityEventListener", dw2Var4, linkedHashMapA);
        vf0 vf0Var3 = this.b;
        do0 do0Var = new do0(new a24(vf0Var3.x, iu1VarA, vf0Var3.A3));
        vf0 vf0Var4 = this.b;
        this.r1 = new do0(new d24(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.k, vf0Var4.h, vf0Var4.t, this.w, vf0Var4.E, this.d));
    }

    public final void a(j53 j53Var, q52 q52Var, s02 s02Var, mb0 mb0Var, NativeRequest nativeRequest) {
        this.t = vh1.a(s02Var);
        this.u = vh1.a(nativeRequest);
        this.v = vh1.a(q52Var);
        vh1 vh1VarA = vh1.a(j53Var);
        this.w = vh1VarA;
        vf0 vf0Var = this.b;
        t93 t93Var = new t93(vf0Var.z, this.d, vf0Var.U, vf0Var.I, vh1VarA, vf0Var.t);
        Object obj = do0.c;
        do0 do0Var = new do0(t93Var);
        this.x = do0Var;
        vf0 vf0Var2 = this.b;
        this.y = new do0(new wf2(vf0Var2.w, vf0Var2.u, this.s, this.d, vf0Var2.O, this.t, vf0Var2.t, do0Var));
        vf0 vf0Var3 = this.b;
        this.z = new do0(new gm0(vf0Var3.u, vf0Var3.t, this.i, vf0Var3.G));
        this.A = new e63(this.d, this.e, this.b.u1);
        do0 do0Var2 = new do0(new sb3(this.v));
        this.B = do0Var2;
        this.C = new j72(this.d, do0Var2);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        j72 j72Var = this.C;
        if (j72Var != null) {
            linkedHashMapA.put("/sendMessageToSdk", j72Var);
            this.D = new i72(new iu1(linkedHashMapA));
            LinkedHashMap linkedHashMapA2 = ud0.a(1);
            i72 i72Var = this.D;
            if (i72Var != null) {
                linkedHashMapA2.put("GmsgHandlerInstaller", i72Var);
                k72 k72Var = new k72(new iu1(linkedHashMapA2));
                vf0 vf0Var4 = this.b;
                this.E = new do0(new o72(vf0Var4.G, vf0Var4.h0, k72Var));
                vh1 vh1Var2 = this.d;
                this.F = new d82(vh1Var2, this.B);
                ol0 ol0Var = new ol0();
                this.G = ol0Var;
                this.H = new b82(vh1Var2, ol0Var);
                do0 do0Var3 = new do0(k1.a);
                this.I = do0Var3;
                vf0 vf0Var5 = this.b;
                this.J = new qg2(vf0Var5.f, vf0Var5.x, vf0Var5.w, vf0Var5.u, vf0Var5.C, vf0Var5.t, vf0Var5.F, vf0Var5.z, this.m, this.w, this.e, this.d, vf0Var5.E, this.n, this.y, vf0Var5.U, do0Var3);
                this.K = vh1.a(mb0Var);
                this.L = new av3(new do0(new dk(this.n)));
                vf0 vf0Var6 = this.b;
                do0 do0Var4 = new do0(new ew(vf0Var6.V, this.n, this.A, vf0Var6.N4, this.d));
                this.M = do0Var4;
                this.N = new bv3(do0Var4);
                return;
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(ec3 ec3Var) {
        vf0 vf0Var = this.b;
        this.O = new fv3(vf0Var.B4);
        this.P = new hv3(vf0Var.l3);
        ol0 ol0Var = new ol0();
        this.Q = ol0Var;
        this.R = new iv3(ol0Var);
        this.S = new jv3(vf0Var.l0);
        this.T = new lv3(vf0Var.A4);
        this.U = new mv3(vf0Var.z4);
        this.V = new cv3(vf0Var.N0);
        this.W = new dv3(vf0Var.L0);
        this.X = new ev3();
        i1 i1Var = new i1(this.I);
        Object obj = do0.c;
        this.Y = new nv3(new do0(i1Var));
        this.Z = new kv3(this.b.n0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.L);
        hu1Var.a("/click", this.N);
        hu1Var.a("/delayPageLoaded", this.O);
        hu1Var.a("/httpTrack", this.P);
        hu1Var.a("/open", this.R);
        hu1Var.a("/result", this.S);
        hu1Var.a("/video", this.T);
        hu1Var.a("/videoMeta", this.U);
        hu1Var.a("/close", this.V);
        hu1Var.a("/customClose", this.W);
        hu1Var.a("/delayPageClosed", this.X);
        hu1Var.a("/backButton", this.Y);
        hu1Var.a("/setPersistentPair", this.Z);
        this.a0 = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.a0;
        if (gv3Var != null) {
            linkedHashMapA.put("GmsgHandlerInstaller", gv3Var);
            linkedHashMapA.put("SetFollowUrls", pv3.a);
            linkedHashMapA.put("SetExpanded", rv3.a);
            ov3 ov3Var = new ov3(new iu1(linkedHashMapA));
            vf0 vf0Var2 = this.b;
            vh1 vh1Var2 = vf0Var2.f;
            dw2 dw2Var = vf0Var2.x;
            dw2 dw2Var2 = vf0Var2.w;
            ol0 ol0Var2 = vf0Var2.u;
            ol0 ol0Var3 = vf0Var2.C;
            dw2 dw2Var3 = vf0Var2.t;
            ol0 ol0Var4 = vf0Var2.F;
            dw2 dw2Var4 = vf0Var2.z;
            vh1 vh1Var3 = this.w;
            vh1 vh1Var4 = this.e;
            vh1 vh1Var5 = this.d;
            this.b0 = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var2, ol0Var3, dw2Var3, ol0Var4, dw2Var4, vh1Var3, vh1Var4, vh1Var5, vf0Var2.E, this.n, this.y, vf0Var2.U, this.K, this.i, vf0Var2.h0, ov3Var, this.I, vf0Var2.G);
            this.c0 = new hc2(vh1Var5, vh1Var4, vf0Var2.y1, vf0Var2.s1, dw2Var3);
            vh1 vh1VarA = vh1.a(ec3Var);
            this.d0 = vh1VarA;
            vh1 vh1Var6 = this.d;
            vf0 vf0Var3 = this.b;
            this.e0 = new do0(new bp2(vh1Var6, vf0Var3.h, this.e, vf0Var3.u, vf0Var3.G, this.A, vf0Var3.t, vf0Var3.o1, vh1VarA));
            vf0 vf0Var4 = this.b;
            dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
            this.f0 = dw2VarA;
            ol0 ol0Var5 = this.Q;
            vf0 vf0Var5 = this.b;
            ol0.a(ol0Var5, new do0(new bh2(vf0Var5.f, vf0Var5.t, vf0Var5.U, vf0Var5.V, this.n, vf0Var5.E, this.J, this.b0, this.p, this.w, vf0Var5.r2, vf0Var5.N4, this.d, this.x, this.c0, this.e0, dw2VarA, vf0Var5.F, this.e, vf0Var5.u)));
            this.g0 = new c82(this.Q);
            LinkedHashMap linkedHashMapA2 = ud0.a(3);
            d82 d82Var = this.F;
            if (d82Var != null) {
                linkedHashMapA2.put("/sendMessageToSdk", d82Var);
                b82 b82Var = this.H;
                if (b82Var != null) {
                    linkedHashMapA2.put("/hideValidatorOverlay", b82Var);
                    c82 c82Var = this.g0;
                    if (c82Var != null) {
                        linkedHashMapA2.put("/open", c82Var);
                        this.h0 = new iu1(linkedHashMapA2);
                        return;
                    }
                    throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                }
                throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(BaseRequest baseRequest, Integer num, eo2 eo2Var, t91 t91Var, View view) {
        this.i0 = new z72(this.h0);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        z72 z72Var = this.i0;
        if (z72Var != null) {
            linkedHashMapA.put("GmsgHandlerInstaller", z72Var);
            e82 e82Var = new e82(new iu1(linkedHashMapA));
            vf0 vf0Var = this.b;
            u72 u72Var = new u72(vf0Var.G, vf0Var.h0, e82Var);
            Object obj = do0.c;
            this.j0 = new do0(u72Var);
            vh1 vh1VarA = vh1.a(eo2Var);
            this.k0 = vh1VarA;
            vh1 vh1Var2 = this.s;
            vf0 vf0Var2 = this.b;
            do0 do0Var = new do0(new cv0(vh1Var2, vf0Var2.x, vf0Var2.u, vf0Var2.V, this.t, vf0Var2.b1, this.u, vf0Var2.G, this.i, vf0Var2.h, this.v, this.y, this.z, this.A, this.n, this.E, this.j0, this.w, this.d, vf0Var2.d, vf0Var2.t, this.x, vf0Var2.F, vh1VarA));
            this.l0 = do0Var;
            ol0.a(this.G, new do0(new i61(this.b.x, this.r, do0Var)));
            this.m0 = new a82(this.G);
            this.n0 = new sh0(vh1.a(view));
            this.o0 = vh1.a(num);
            this.p0 = new do0(cc3.a);
            this.q0 = new do0(new ty(this.w));
            this.r0 = new v12(new sh0(this.u));
            int i = sc3.$r8$clinit;
            List listB = ud0.b(1);
            List listB2 = ud0.b(1);
            dw2 dw2Var = this.q0;
            boolean z = rc3.c;
            if (!z && dw2Var == null) {
                throw new AssertionError("Codegen error? Null provider");
            }
            listB.add(dw2Var);
            v12 v12Var = this.r0;
            if (!z && v12Var == null) {
                throw new AssertionError("Codegen error? Null provider");
            }
            listB2.add(v12Var);
            if (!z && ud0.a(listB)) {
                throw new AssertionError("Codegen error?  Duplicates in the provider list");
            }
            if (!z && ud0.a(listB2)) {
                throw new AssertionError("Codegen error?  Duplicates in the provider list");
            }
            this.s0 = new sc3(listB, listB2);
            vh1 vh1VarA2 = vh1.a(t91Var);
            vf0 vf0Var3 = this.b;
            this.t0 = new do0(new mt3(vf0Var3.G, vf0Var3.o1, vf0Var3.V, this.A, this.n0, this.d0, this.d, this.i, this.o0, vf0Var3.h, this.p0, vf0Var3.N4, this.k0, this.n, vf0Var3.D2, this.s0, vf0Var3.t, vh1VarA2));
            vh1 vh1VarA3 = vh1.a(baseRequest);
            this.u0 = vh1VarA3;
            vf0 vf0Var4 = this.b;
            this.v0 = new e53(vf0Var4.U3, vh1VarA3, this.w);
            this.w0 = new do0(new tc(vf0Var4.w3, vh1VarA3));
            vf0 vf0Var5 = this.b;
            this.x0 = new do0(new no2(vf0Var5.f, this.d, vf0Var5.O4, vf0Var5.t, vf0Var5.G, this.f0, vf0Var5.F, vf0Var5.u, vf0Var5.E));
            vf0 vf0Var6 = this.b;
            this.y0 = new do0(new l4(vf0Var6.e0, this.w, vf0Var6.f0));
            vf0 vf0Var7 = this.b;
            this.z0 = new do0(new sq2(vf0Var7.x1, vf0Var7.u, this.w, vf0Var7.t, vf0Var7.G));
            this.A0 = mj0.a;
            return;
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(PerAdNativeJavscriptEngineJsContext perAdNativeJavscriptEngineJsContext) {
        vh1 vh1Var = this.d0;
        vf0 vf0Var = this.b;
        yj2 yj2Var = new yj2(vh1Var, vf0Var.A0, vf0Var.A1, this.u0, this.w, this.A0, vf0Var.s, vf0Var.F);
        Object obj = do0.c;
        this.B0 = new do0(yj2Var);
        vf0 vf0Var2 = this.b;
        this.C0 = new do0(new q6(vf0Var2.N1, this.d0, this.d, this.s0, this.w, vf0Var2.t, vf0Var2.E, vf0Var2.T));
        this.D0 = new do0(new a10(this.d, this.b.D2));
        this.E0 = new do0(new y52(this.v));
        this.F0 = new do0(new q72(this.E));
        this.G0 = new do0(new e04(this.j, this.y));
        vh1 vh1Var2 = iu1.b;
        hu1 hu1Var = new hu1(18);
        hu1Var.a("MraidAdEventListener", this.q);
        hu1Var.a("hideValidatorOverlayGmsgHandlerAsAdEventListener", this.m0);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.t0);
        hu1Var.a("DelegatingAdEventListener", this.z);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.v0);
        hu1Var.a("AdStatsTrackerListener", this.w0);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.b.s2);
        hu1Var.a("PlayPrewarmListener", this.x0);
        hu1Var.a("AdLifecycleTrackerListener", this.y0);
        hu1Var.a("PreloadAdCloseListener", this.z0);
        hu1Var.a("PersistentCacheAdMonitor", this.B0);
        hu1Var.a("AdQualityDataHandler", this.C0);
        hu1Var.a("ConsentFormActionMonitor", this.D0);
        hu1Var.a("NativeJavascriptEngineLifeCycleMonitor", this.E0);
        hu1Var.a("NativeOnePointFiveOverlayMonitor", this.F0);
        hu1Var.a("SafeBrowsingLifecycleMonitor", this.x);
        hu1Var.a("OmidMonitorAsAdEventListener", this.y);
        hu1Var.a("WebViewLifecycleMonitor", this.G0);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.n;
        vf0 vf0Var3 = this.b;
        ol0.a(ol0Var, new do0(new w3(vf0Var3.u, iu1Var, this.d, vf0Var3.A3)));
        do0 do0Var = new do0(new il1(this.t));
        this.H0 = do0Var;
        vf0 vf0Var4 = this.b;
        this.I0 = new do0(new u32(vf0Var4.x, vf0Var4.u, this.t, vf0Var4.t, do0Var, vf0Var4.Z1, this.u0, this.s));
        vh1 vh1Var3 = this.u0;
        vf0 vf0Var5 = this.b;
        this.J0 = new do0(new hs0(vh1Var3, vf0Var5.v0, this.d, vf0Var5.u));
        this.K0 = new do0(new y32(this.l0));
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.J0;
        if (dw2Var != null) {
            linkedHashMapA.put("FirebaseAnalyticsAdEventListener", dw2Var);
            dw2 dw2Var2 = this.K0;
            if (dw2Var2 != null) {
                iu1 iu1VarA = wd0.a(linkedHashMapA, "NativeAdViewVisibilityChangedEventListener", dw2Var2, linkedHashMapA);
                vf0 vf0Var6 = this.b;
                this.L0 = new do0(new wd(vf0Var6.x, iu1VarA, vf0Var6.A3));
                this.M0 = new do0(new m62(this.b.t, this.l0, this.w));
                LinkedHashMap linkedHashMapA2 = ud0.a(1);
                dw2 dw2Var3 = this.M0;
                if (dw2Var3 != null) {
                    iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "NativeMediaViewFullyVisibleEventListener", dw2Var3, linkedHashMapA2);
                    vf0 vf0Var7 = this.b;
                    this.N0 = new do0(new yu1(vf0Var7.x, iu1VarA2, vf0Var7.A3));
                    LinkedHashMap linkedHashMapA3 = ud0.a(2);
                    dw2 dw2Var4 = this.L0;
                    if (dw2Var4 != null) {
                        linkedHashMapA3.put("AdVisibilityChangedEventEmitter", dw2Var4);
                        dw2 dw2Var5 = this.N0;
                        if (dw2Var5 != null) {
                            iu1 iu1VarA3 = wd0.a(linkedHashMapA3, "MediaViewFullyVisibleEventEmitter", dw2Var5, linkedHashMapA3);
                            vf0 vf0Var8 = this.b;
                            do0 do0Var2 = new do0(new kd(vf0Var8.x, iu1VarA3, vf0Var8.A3));
                            vf0 vf0Var9 = this.b;
                            do0 do0Var3 = new do0(new a42(vf0Var9.f, vf0Var9.x, do0Var2, vf0Var9.u2, vf0Var9.h, vf0Var9.t, vf0Var9.E, this.d));
                            this.O0 = do0Var3;
                            this.P0 = new do0(new c42(do0Var3, this.K0, this.M0));
                            this.Q0 = new sh0(vh1.a(perAdNativeJavscriptEngineJsContext));
                            vf0 vf0Var10 = this.b;
                            do0 do0Var4 = new do0(new uk0(vf0Var10.f, vf0Var10.u, vf0Var10.b3, vf0Var10.t, this.u0, this.d, this.i));
                            this.R0 = do0Var4;
                            this.S0 = new w12(this.b.t, do0Var4);
                            return;
                        }
                        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                    }
                    throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                }
                throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(i2 i2Var, zy zyVar, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, JsonObject jsonObject, r31 r31Var) {
        sy syVar = ry.a;
        Object obj = do0.c;
        this.c = new do0(syVar);
        this.d = vh1.a(i2Var);
        this.e = vh1.a(zyVar);
        this.f = new sh0(vh1.a(n03Var));
        this.g = new sh0(vh1.a(tn1Var));
        this.h = new sh0(vh1.a(m33Var));
        this.i = new do0(new uy(this.f, this.g, this.h, new sh0(vh1.a(zbVar))));
        vh1 vh1VarA = vh1.a(r31Var);
        this.j = vh1VarA;
        sh0 sh0Var = new sh0(vh1VarA);
        this.k = sh0Var;
        vf0 vf0Var = this.b;
        this.l = new do0(new uz1(vf0Var.M4, sh0Var, vf0Var.x));
        this.m = mj0.a;
        ol0 ol0Var = new ol0();
        this.n = ol0Var;
        this.o = new my1(ol0Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        my1 my1Var = this.o;
        if (my1Var != null) {
            linkedHashMapA.put("AdEventListener", my1Var);
            iu1 iu1Var = new iu1(linkedHashMapA);
            vf0 vf0Var2 = this.b;
            do0 do0Var = new do0(new ay1(vf0Var2.u, iu1Var, vf0Var2.A3));
            vf0 vf0Var3 = this.b;
            do0 do0Var2 = new do0(new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.l, this.m, vf0Var3.E, do0Var));
            this.p = do0Var2;
            this.q = new ny1(new do0(new hx1(do0Var2)));
            this.r = new do0(g82.a);
            this.s = vh1.a(jsonObject);
            return;
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    @Override // ads_mobile_sdk.x1
    public final no3 f() {
        return (no3) this.V0.get();
    }
}
