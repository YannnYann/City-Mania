package com.ironsource;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3855t8;
import com.ironsource.P;
import com.ironsource.R8;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.controller.FeaturesManager;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class W9 implements InterfaceC3748ne, InterfaceC3941y4, InterfaceC3923x4, InterfaceC3887v4, InterfaceC3905w4, InterfaceC3546ca, Uc {
    private static final String m = "IronSourceAdsPublisherAgent";
    private static W9 n;
    private com.ironsource.sdk.controller.e a;
    private String b;
    private String c;
    private Y4 d;
    private C3877uc e;
    private C3577e4 g;
    private boolean f = false;
    private FeaturesManager h = FeaturesManager.getInstance();
    private R8.a i = Pb.b0().j();
    private P.a j = Pb.b0().I();
    private P k = Pb.k0().K();
    private InterfaceC3817r8 l = Pb.k0().t();

    public class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;

        public a(String str, String str2, X4 x4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, this.b, this.c, (InterfaceC3941y4) w9);
        }
    }

    public class b implements Runnable {
        final /* synthetic */ JSONObject a;

        public b(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, (InterfaceC3941y4) w9);
        }
    }

    public class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;

        public c(String str, String str2, X4 x4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, this.b, this.c, (InterfaceC3923x4) w9);
        }
    }

    public class d implements Runnable {
        final /* synthetic */ String a;

        public d(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, w9);
        }
    }

    public class e implements Runnable {
        final /* synthetic */ JSONObject a;

        public e(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, (InterfaceC3923x4) w9);
        }
    }

    public class f implements Runnable {
        final /* synthetic */ R9 a;
        final /* synthetic */ Map b;

        public f(R9 r9, Map map) {
            this.a = r9;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3855t8.e eVar = this.a.i() ? C3855t8.e.Banner : C3855t8.e.Interstitial;
            X4 x4A = W9.this.d.a(eVar, this.a);
            C3891v8 c3891v8 = new C3891v8();
            c3891v8.a(G5.x, Boolean.valueOf(this.a.j())).a(G5.G, Boolean.valueOf(this.a.m())).a(G5.v, this.a.g()).a(G5.w, C3565da.a(this.a)).a(G5.I, Long.valueOf(M.a.b(this.a.e())));
            A8.a(C3712le.h, c3891v8.a());
            if (eVar == C3855t8.e.Banner) {
                W9 w9 = W9.this;
                w9.a.a(w9.b, w9.c, x4A, (InterfaceC3905w4) w9);
                W9 w92 = W9.this;
                w92.a.a(x4A, this.b, (InterfaceC3905w4) w92);
                return;
            }
            W9 w93 = W9.this;
            w93.a.a(w93.b, w93.c, x4A, (InterfaceC3923x4) w93);
            W9 w94 = W9.this;
            w94.a.b(x4A, this.b, w94);
        }
    }

    public class g implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;

        public g(X4 x4, Map map) {
            this.a = x4;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            W9 w9 = W9.this;
            w9.a.a(this.a, this.b, (InterfaceC3923x4) w9);
        }
    }

    public class h implements Runnable {
        final /* synthetic */ R9 a;

        public h(R9 r9) {
            this.a = r9;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3855t8.e eVar = this.a.i() ? C3855t8.e.Banner : C3855t8.e.Interstitial;
            X4 x4A = W9.this.d.a(eVar, this.a);
            C3891v8 c3891v8 = new C3891v8();
            c3891v8.a(G5.x, Boolean.valueOf(this.a.j())).a(G5.v, this.a.g()).a(G5.w, C3565da.a(this.a)).a("isMultipleAdObjects", Boolean.valueOf(this.a.l()));
            A8.a(C3712le.m, c3891v8.a());
            if (eVar == C3855t8.e.Banner) {
                W9.this.a.a(x4A);
            } else {
                x4A.a(false);
                W9.this.a.b(x4A);
            }
        }
    }

    private W9(Context context, int i) {
        c(context);
    }

    public static InterfaceC3546ca a(Context context, String str, String str2) {
        return a(str, str2, context);
    }

    public static synchronized W9 b(Context context) throws Exception {
        return a(context, 0);
    }

    private void c(Context context) {
        try {
            SDKUtils.getNetworkConfiguration();
            C3690ka.a(context);
            IronSourceStorageUtils.initializeCacheDirectory(context, new Bf(SDKUtils.getNetworkConfiguration().optJSONObject(C3522b4.a.k)));
            C3690ka.e().d(SDKUtils.getSDKVersion());
            this.d = new Y4();
            C3577e4 c3577e4 = new C3577e4();
            this.g = c3577e4;
            if (context instanceof Activity) {
                c3577e4.a((Activity) context);
            }
            int debugMode = this.h.getDebugMode();
            this.e = new C3877uc();
            this.a = new com.ironsource.sdk.controller.e(context, this.g, this.d, V7.a, debugMode, this.h.getDataManagerConfig(), this.b, this.c, this.e);
            Logger.enableLogging(debugMode);
            Logger.i(m, "C'tor");
            a(context);
            this.e.d();
            this.e.e();
            this.e.a(context);
            this.e.b();
            this.e.a();
            this.e.c();
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    @Override // com.ironsource.InterfaceC3923x4
    public void d(String str, String str2) {
        X4 x4D = d(C3855t8.e.Interstitial, str);
        if (x4D != null) {
            R9 r9C = x4D.c();
            this.j.a(EnumC3752o0.d, r9C.e());
            if (c(r9C)) {
                this.i.a(new C3677jf(this.k.a(r9C.e())));
            }
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialShowFailed(str2);
            }
        }
    }

    @Override // com.ironsource.Uc
    public void e(Activity activity) {
        this.g.a(activity);
        this.a.g();
        this.a.b(activity);
    }

    @Override // com.ironsource.InterfaceC3923x4
    public void onInterstitialAdRewarded(String str, int i) {
        X4 x4D = d(C3855t8.e.Interstitial, str);
        Rc rcB = b(x4D);
        if (x4D == null || rcB == null) {
            return;
        }
        rcB.onInterstitialAdRewarded(str, i);
    }

    public static synchronized InterfaceC3546ca a(String str, String str2, Context context) {
        try {
            if (n == null) {
                A8.a(C3712le.a);
                n = new W9(str, str2, context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return n;
    }

    private Rc b(X4 x4) {
        if (x4 == null) {
            return null;
        }
        return (Rc) x4.i();
    }

    @Override // com.ironsource.InterfaceC3748ne
    public void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("demandSourceName");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        this.a.a(new d(strOptString));
    }

    @Override // com.ironsource.InterfaceC3748ne, com.ironsource.InterfaceC3546ca
    public void b(Activity activity) {
        if (this.f) {
            return;
        }
        d(activity);
    }

    public static synchronized W9 a(Context context, int i) throws Exception {
        try {
            Logger.i(m, "getInstance()");
            if (n == null) {
                n = new W9(context, i);
            }
        } catch (Throwable th) {
            throw th;
        }
        return n;
    }

    @Override // com.ironsource.InterfaceC3887v4
    public void b(C3855t8.e eVar, String str) {
        Rc rcB;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            if (eVar == C3855t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.d();
                    return;
                }
                return;
            }
            if (eVar != C3855t8.e.Interstitial || (rcB = b(x4D)) == null) {
                return;
            }
            rcB.onInterstitialClose();
        }
    }

    private X4 d(C3855t8.e eVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.d.a(eVar, str);
    }

    @Override // com.ironsource.InterfaceC3546ca
    public com.ironsource.sdk.controller.e a() {
        return this.a;
    }

    private Pc a(X4 x4) {
        if (x4 == null) {
            return null;
        }
        return (Pc) x4.i();
    }

    @Override // com.ironsource.InterfaceC3748ne
    public void a(String str, String str2, String str3, Map<String, String> map, Wc wc) {
        this.b = str;
        this.c = str2;
        this.a.a(new a(str, str2, this.d.a(C3855t8.e.RewardedVideo, str3, map, wc)));
    }

    @Override // com.ironsource.Uc
    public void d(Activity activity) {
        try {
            this.a.e();
            this.a.a((Context) activity);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    public W9(String str, String str2, Context context) {
        this.b = str;
        this.c = str2;
        c(context);
    }

    @Override // com.ironsource.InterfaceC3941y4
    public void b(String str, String str2) {
        Wc wcC;
        X4 x4D = d(C3855t8.e.RewardedVideo, str);
        if (x4D == null || (wcC = c(x4D)) == null) {
            return;
        }
        wcC.a(str2);
    }

    @Override // com.ironsource.InterfaceC3748ne
    public void a(JSONObject jSONObject) {
        this.a.a(new b(jSONObject));
    }

    @Override // com.ironsource.InterfaceC3748ne
    public void a(String str, String str2, String str3, Map<String, String> map, Rc rc) {
        this.b = str;
        this.c = str2;
        this.a.a(new c(str, str2, this.d.a(C3855t8.e.Interstitial, str3, map, rc)));
    }

    @Override // com.ironsource.InterfaceC3923x4
    public void b(String str) {
        X4 x4D = d(C3855t8.e.Interstitial, str);
        if (x4D != null) {
            R9 r9C = x4D.c();
            this.j.a(EnumC3752o0.c, r9C.e());
            if (c(r9C)) {
                this.i.a(new C3695kf(this.k.a(r9C.e())));
            }
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialShowSuccess();
            }
        }
    }

    @Override // com.ironsource.InterfaceC3748ne
    public boolean a(String str) {
        return this.a.a(str);
    }

    @Override // com.ironsource.InterfaceC3748ne, com.ironsource.InterfaceC3546ca
    public void a(Activity activity) {
        if (this.f) {
            return;
        }
        e(activity);
    }

    @Override // com.ironsource.InterfaceC3887v4
    public void a(C3855t8.e eVar, String str, Z0 z0) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            x4D.b(2);
            if (eVar == C3855t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.a(z0);
                    return;
                }
                return;
            }
            if (eVar == C3855t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialInitSuccess();
                    return;
                }
                return;
            }
            if (eVar != C3855t8.e.Banner || (pcA = a(x4D)) == null) {
                return;
            }
            pcA.onBannerInitSuccess();
        }
    }

    @Override // com.ironsource.InterfaceC3583ea
    public void b(Activity activity, R9 r9, Map<String, String> map) {
        if (Pb.k0().h().k()) {
            this.g.a(activity);
        }
        a(r9, map);
    }

    private void b(R9 r9, Map<String, String> map) {
        Logger.d(m, "loadOnNewInstance " + r9.e());
        this.a.a(new f(r9, map));
    }

    @Override // com.ironsource.InterfaceC3583ea
    public void b(R9 r9) {
        Logger.d(m, "destroyInstance " + r9.e());
        if (c(r9)) {
            this.j.a(EnumC3752o0.e, r9.e());
            this.i.a(new C3624gf(this.k.a(r9.e())));
        }
        this.a.a(new h(r9));
    }

    private Wc c(X4 x4) {
        if (x4 == null) {
            return null;
        }
        return (Wc) x4.i();
    }

    @Override // com.ironsource.InterfaceC3748ne
    public void c(JSONObject jSONObject) {
        this.a.a(new e(jSONObject));
    }

    @Override // com.ironsource.InterfaceC3887v4
    public void a(C3855t8.e eVar, String str, String str2) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        C3891v8 c3891v8A = new C3891v8().a(G5.v, str).a(G5.w, eVar).a(G5.A, str2);
        if (x4D != null) {
            M m2 = M.a;
            c3891v8A.a(G5.I, Long.valueOf(m2.b(x4D.h())));
            c3891v8A.a(G5.x, Boolean.valueOf(B8.a(x4D)));
            m2.a(x4D.h());
            x4D.b(3);
            if (eVar == C3855t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.b(str2);
                }
            } else if (eVar == C3855t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialInitFailed(str2);
                }
            } else if (eVar == C3855t8.e.Banner && (pcA = a(x4D)) != null) {
                pcA.onBannerLoadFail(str2);
            }
        }
        A8.a(C3712le.i, c3891v8A.a());
    }

    @Override // com.ironsource.InterfaceC3748ne, com.ironsource.InterfaceC3546ca
    public void c(Activity activity) {
        try {
            Logger.i(m, "release()");
            C3541c5.g();
            this.g.b();
            this.a.a((Context) activity);
            this.a.a();
            this.a = null;
        } catch (Exception e2) {
            C3813r4.d().a(e2);
        }
        n = null;
    }

    @Override // com.ironsource.InterfaceC3941y4
    public void c(String str) {
        Wc wcC;
        X4 x4D = d(C3855t8.e.RewardedVideo, str);
        if (x4D == null || (wcC = c(x4D)) == null) {
            return;
        }
        wcC.c();
    }

    @Override // com.ironsource.InterfaceC3887v4
    public void c(C3855t8.e eVar, String str) {
        Wc wcC;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            if (eVar == C3855t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialOpen();
                    return;
                }
                return;
            }
            if (eVar != C3855t8.e.RewardedVideo || (wcC = c(x4D)) == null) {
                return;
            }
            wcC.b();
        }
    }

    @Override // com.ironsource.InterfaceC3905w4
    public void c(String str, String str2) {
        Pc pcA;
        X4 x4D = d(C3855t8.e.Banner, str);
        if (x4D == null || (pcA = a(x4D)) == null) {
            return;
        }
        pcA.onBannerLoadFail(str2);
    }

    private void c(R9 r9, Map<String, String> map) {
        try {
            map = a(map);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            C3891v8 c3891v8A = new C3891v8().a(G5.A, e2.getMessage()).a(G5.x, Boolean.valueOf(r9.j())).a(G5.G, Boolean.valueOf(r9.m())).a(G5.v, r9.g()).a(G5.w, C3565da.a(r9)).a(G5.I, Long.valueOf(M.a.b(r9.e())));
            M.a.a(r9.e());
            A8.a(C3712le.k, c3891v8A.a());
            IronLog.INTERNAL.error(e2.toString());
            Logger.d(m, "loadInAppBiddingAd failed decoding  ADM " + e2.getMessage());
        }
        b(r9, map);
    }

    @Override // com.ironsource.InterfaceC3941y4
    public void a(String str, int i) {
        Wc wcC;
        X4 x4D = d(C3855t8.e.RewardedVideo, str);
        if (x4D == null || (wcC = c(x4D)) == null) {
            return;
        }
        wcC.a(i);
    }

    @Override // com.ironsource.InterfaceC3887v4
    public void a(C3855t8.e eVar, String str) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        if (x4D != null) {
            if (eVar == C3855t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    wcC.a();
                    return;
                }
                return;
            }
            if (eVar == C3855t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    rcB.onInterstitialClick();
                    return;
                }
                return;
            }
            if (eVar != C3855t8.e.Banner || (pcA = a(x4D)) == null) {
                return;
            }
            pcA.onBannerClick();
        }
    }

    @Override // com.ironsource.InterfaceC3887v4
    public void a(C3855t8.e eVar, String str, String str2, JSONObject jSONObject) {
        Pc pcA;
        X4 x4D = d(eVar, str);
        if (x4D == null || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            Logger.i(m, "Received Event Notification: " + str2 + " for demand source: " + x4D.f());
            if (eVar == C3855t8.e.Interstitial) {
                Rc rcB = b(x4D);
                if (rcB != null) {
                    jSONObject.put("demandSourceName", str);
                    rcB.onInterstitialEventNotificationReceived(str2, jSONObject);
                    return;
                }
                return;
            }
            if (eVar == C3855t8.e.RewardedVideo) {
                Wc wcC = c(x4D);
                if (wcC != null) {
                    jSONObject.put("demandSourceName", str);
                    wcC.a(str2, jSONObject);
                    return;
                }
                return;
            }
            if (eVar != C3855t8.e.Banner || (pcA = a(x4D)) == null) {
                return;
            }
            jSONObject.put("demandSourceName", str);
            if (str2.equalsIgnoreCase("impressions")) {
                pcA.onBannerShowSuccess();
            }
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    public boolean c(R9 r9) {
        return r9.l() && !r9.i() && a(r9);
    }

    @Override // com.ironsource.InterfaceC3923x4
    public void a(String str, JSONObject jSONObject) {
        C3855t8.e eVar = C3855t8.e.Interstitial;
        X4 x4D = d(eVar, str);
        C3891v8 c3891v8A = new C3891v8().a(G5.v, str);
        if (x4D != null) {
            R9 r9C = x4D.c();
            this.j.a(jSONObject, EnumC3752o0.b, r9C.e());
            if (c(r9C)) {
                this.i.a(new Cif(this.k.a(r9C.e())));
            }
            C3891v8 c3891v8A2 = c3891v8A.a(G5.w, B8.a(x4D, eVar)).a(G5.x, Boolean.valueOf(B8.a(x4D)));
            M m2 = M.a;
            c3891v8A2.a(G5.I, Long.valueOf(m2.b(x4D.h())));
            m2.a(x4D.h());
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialLoadSuccess(x4D.c());
            }
        }
        A8.a(C3712le.l, c3891v8A.a());
    }

    @Override // com.ironsource.InterfaceC3923x4
    public void a(String str, String str2) {
        Object obj;
        C3855t8.e eVar = C3855t8.e.Interstitial;
        X4 x4D = d(eVar, str);
        C3891v8 c3891v8 = new C3891v8();
        c3891v8.a(G5.A, str2).a(G5.v, str);
        if (x4D != null) {
            C3891v8 c3891v8A = c3891v8.a(G5.w, B8.a(x4D, eVar));
            if (x4D.e() == 2) {
                obj = G5.E;
            } else {
                obj = G5.F;
            }
            C3891v8 c3891v8A2 = c3891v8A.a(G5.y, obj).a(G5.x, Boolean.valueOf(B8.a(x4D)));
            M m2 = M.a;
            c3891v8A2.a(G5.I, Long.valueOf(m2.b(x4D.h())));
            m2.a(x4D.h());
            Rc rcB = b(x4D);
            if (rcB != null) {
                rcB.onInterstitialLoadFailed(str2);
            }
        }
        A8.a(C3712le.g, c3891v8.a());
    }

    @Override // com.ironsource.InterfaceC3748ne
    public void a(String str, String str2, int i) {
        C3855t8.e productType;
        X4 x4A;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (productType = SDKUtils.getProductType(str)) == null || (x4A = this.d.a(productType, str2)) == null) {
            return;
        }
        x4A.c(i);
    }

    @Override // com.ironsource.InterfaceC3905w4
    public void a(String str, C3688k8 c3688k8) {
        Pc pcA;
        X4 x4D = d(C3855t8.e.Banner, str);
        if (x4D == null || (pcA = a(x4D)) == null) {
            return;
        }
        pcA.onBannerLoadSuccess(x4D.c(), c3688k8);
    }

    @Override // com.ironsource.InterfaceC3583ea
    public void a(R9 r9, Map<String, String> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        map.put(C3522b4.i.y0, String.valueOf(jCurrentTimeMillis));
        M.a.a(r9.e(), jCurrentTimeMillis);
        C3891v8 c3891v8 = new C3891v8();
        c3891v8.a(G5.x, Boolean.valueOf(r9.j())).a(G5.G, Boolean.valueOf(r9.m())).a(G5.v, r9.g()).a(G5.w, C3565da.a(r9)).a(G5.I, Long.valueOf(jCurrentTimeMillis));
        A8.a(C3712le.f, c3891v8.a());
        Logger.d(m, "loadAd " + r9.e());
        O o = new O(r9);
        this.j.a(o);
        this.j.a(new JSONObject(map), EnumC3752o0.a, o.c());
        if (c(r9)) {
            this.i.a(new C3642hf(o));
        }
        if (r9.k()) {
            c(r9, map);
        } else {
            b(r9, map);
        }
    }

    private Map<String, String> a(Map<String, String> map) {
        map.put("adm", SDKUtils.decodeString(map.get("adm")));
        return map;
    }

    @Override // com.ironsource.InterfaceC3583ea
    public void a(Activity activity, R9 r9, Map<String, String> map) {
        this.g.a(activity);
        Logger.i(m, "showAd " + r9.e());
        X4 x4A = this.d.a(C3855t8.e.Interstitial, r9.e());
        if (x4A == null) {
            return;
        }
        this.a.a(new g(x4A, map));
    }

    @Override // com.ironsource.InterfaceC3583ea
    public boolean a(R9 r9) {
        Logger.d(m, "isAdAvailable " + r9.e());
        X4 x4A = this.d.a(C3855t8.e.Interstitial, r9.e());
        if (x4A == null) {
            return false;
        }
        return x4A.d();
    }

    public void a(Context context) {
        this.f = false;
        Boolean boolC = this.l.c(C3522b4.a.g);
        if (boolC == null) {
            boolC = Boolean.FALSE;
        }
        boolean zBooleanValue = boolC.booleanValue();
        this.f = zBooleanValue;
        if (zBooleanValue) {
            try {
                ((Application) context).registerActivityLifecycleCallbacks(new C3644i(this));
            } catch (Throwable th) {
                C3813r4.d().a(th);
                C3891v8 c3891v8 = new C3891v8();
                c3891v8.a(G5.y, th.getMessage());
                A8.a(C3712le.u, c3891v8.a());
            }
        }
    }
}
