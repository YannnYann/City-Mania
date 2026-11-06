package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.AbstractC3812r3;
import com.ironsource.B7;
import com.ironsource.Bb;
import com.ironsource.C3462a5;
import com.ironsource.C3521b3;
import com.ironsource.C3528ba;
import com.ironsource.C3603fc;
import com.ironsource.C3619ga;
import com.ironsource.C3634h7;
import com.ironsource.C3639hc;
import com.ironsource.C3655ia;
import com.ironsource.C3659ie;
import com.ironsource.C3662j0;
import com.ironsource.C3675jd;
import com.ironsource.C3693kd;
import com.ironsource.C3694ke;
import com.ironsource.C3698l0;
import com.ironsource.C3701l3;
import com.ironsource.C3725m9;
import com.ironsource.C3729md;
import com.ironsource.C3750ng;
import com.ironsource.C3768og;
import com.ironsource.C3775p5;
import com.ironsource.C3801q9;
import com.ironsource.C3805qd;
import com.ironsource.C3813r4;
import com.ironsource.C3857ta;
import com.ironsource.C5;
import com.ironsource.D3;
import com.ironsource.D5;
import com.ironsource.Df;
import com.ironsource.He;
import com.ironsource.Ie;
import com.ironsource.InterfaceC3467aa;
import com.ironsource.InterfaceC3526b8;
import com.ironsource.InterfaceC3759o7;
import com.ironsource.Kc;
import com.ironsource.L9;
import com.ironsource.N8;
import com.ironsource.N9;
import com.ironsource.Nf;
import com.ironsource.Od;
import com.ironsource.Of;
import com.ironsource.P6;
import com.ironsource.Pb;
import com.ironsource.Q7;
import com.ironsource.Q9;
import com.ironsource.Qb;
import com.ironsource.R1;
import com.ironsource.R3;
import com.ironsource.S3;
import com.ironsource.S4;
import com.ironsource.Sc;
import com.ironsource.T4;
import com.ironsource.T5;
import com.ironsource.T7;
import com.ironsource.Td;
import com.ironsource.U1;
import com.ironsource.Ue;
import com.ironsource.W6;
import com.ironsource.Wb;
import com.ironsource.We;
import com.ironsource.Z3;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adquality.AdQualityBridge;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyBannerLayout;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.demandOnly.h;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.q;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class p implements InterfaceC3467aa, Sc, S4, S4.b, S4.c, S4.a {
    private static boolean Z = false;
    private int A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private Boolean H;
    private Kc I;
    private boolean J;
    private boolean K;
    private boolean L;
    private final ConcurrentHashMap<String, h.d> M;
    private final ConcurrentHashMap<String, h.b> N;
    private final ConcurrentHashMap<String, h.d> O;
    private com.ironsource.mediationsdk.demandOnly.f P;
    private com.ironsource.mediationsdk.demandOnly.k Q;
    private com.ironsource.mediationsdk.demandOnly.c R;
    private T5 S;
    private C3528ba T;
    private W6 U;
    private boolean V;
    private AdQualityBridge W;
    InterfaceC3526b8<ISDemandOnlyInterstitialListener> X;
    InterfaceC3526b8<ISDemandOnlyRewardedVideoListener> Y;
    private final String a;
    private final String b;
    private final B7 c;
    private final B7.a d;
    private final Q7 e;
    private final InterfaceC3759o7 f;
    private final N8.a g;
    private IronSourceLoggerManager h;
    private Bb i;
    private AtomicBoolean j;
    private final Object k;
    private Ue l;
    private String m;
    private String n;
    private String o;
    private Map<String, String> p;
    private String q;
    private AtomicBoolean r;
    private boolean s;
    private List<IronSource.a> t;
    private String u;
    private Set<IronSource.a> v;
    private Set<IronSource.a> w;
    private boolean x;
    private C3655ia y;
    private final String z;

    public class a extends com.ironsource.environment.thread.a {
        final /* synthetic */ Context b;

        /* JADX INFO: renamed from: com.ironsource.mediationsdk.p$a$a, reason: collision with other inner class name */
        public class C1051a extends com.ironsource.environment.thread.a {
            final /* synthetic */ Boolean b;

            public C1051a(Boolean bool) {
                this.b = bool;
            }

            @Override // com.ironsource.environment.thread.a
            public void a() {
                Of of = new Of();
                a aVar = a.this;
                of.a(aVar.b, p.this.h(), p.this.l.j(), LevelPlay.getSdkVersion(), p.this.l.c().g().b(), this.b, p.this.J);
                p.this.V = true;
                Nf.a.c();
            }
        }

        public a(Context context) {
            this.b = context;
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new C1051a(com.ironsource.mediationsdk.c.c().b()));
        }
    }

    public static /* synthetic */ class b {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[q.d.values().length];
            b = iArr;
            try {
                iArr[q.d.NOT_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[q.d.INIT_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[q.d.INIT_IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[q.d.INITIATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IronSource.a.values().length];
            a = iArr2;
            try {
                iArr2[IronSource.a.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[IronSource.a.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[IronSource.a.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[IronSource.a.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public interface c {
        void a(String str);
    }

    public static class d {
        static volatile p a = new p();

        private d() {
        }
    }

    private p() {
        this(Pb.k0().a(), Pb.b0().c(), Pb.k0().x(), Pb.k0().k(), Pb.b0().F());
    }

    private boolean A() {
        return z() && B();
    }

    private boolean B() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().c() == null || this.l.k().c().isEmpty()) ? false : true;
    }

    private boolean C() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().f() == null) ? false : true;
    }

    private boolean D() {
        return C() && E();
    }

    private boolean E() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().d() == null || this.l.k().d().size() <= 0) ? false : true;
    }

    private void I() {
        ConcurrentHashMap<String, List<String>> concurrentHashMapC = C3857ta.b().c();
        if (concurrentHashMapC.containsKey(com.ironsource.mediationsdk.metadata.a.c)) {
            if (TextUtils.isEmpty(concurrentHashMapC.get(com.ironsource.mediationsdk.metadata.a.c).get(0))) {
                return;
            }
            C3462a5.a.b(!MetaDataUtils.getMetaDataBooleanValue(r0));
        }
    }

    private void J() {
        if (this.D) {
            K();
        }
    }

    private void K() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.l.k().a().size(); i++) {
            String str = this.l.k().a().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.l.l().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            JSONObject jSONObjectA = IronSourceUtils.a(false, false, 1);
            a(jSONObjectA, new Object[][]{new Object[]{"errorCode", 1010}});
            a(D5.s6, jSONObjectA);
            a(IronSource.a.BANNER, false);
            return;
        }
        synchronized (this.N) {
            try {
                C3521b3 c3521b3C = this.l.c().c();
                T4.a aVar = new T4.a("Mediation");
                if (c3521b3C.k()) {
                    aVar.a("isOneFlow", 1);
                }
                this.R = new com.ironsource.mediationsdk.demandOnly.c(arrayList, c3521b3C, h(), i(), new T4.b(N9.i(), aVar));
            } catch (Throwable th) {
                throw th;
            }
        }
        for (h.b bVar : this.N.values()) {
            this.R.a(bVar.g(), bVar.e());
        }
        this.N.clear();
    }

    private void L() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Interstitial started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.l.k().b().size(); i++) {
            String str = this.l.k().b().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.l.l().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            JSONObject jSONObjectA = IronSourceUtils.a(false, false, 1);
            a(jSONObjectA, new Object[][]{new Object[]{"errorCode", 1010}});
            a(D5.D5, jSONObjectA);
            a(IronSource.a.INTERSTITIAL, false);
            return;
        }
        synchronized (this.M) {
            this.P = a((List<NetworkSettings>) arrayList);
        }
        Iterator<h.d> it = this.M.values().iterator();
        while (it.hasNext()) {
            this.P.a(it.next());
        }
        this.M.clear();
    }

    private void M() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.l.k().d().size(); i++) {
            String str = this.l.k().d().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.l.l().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            a(IronSource.a.REWARDED_VIDEO, false);
            return;
        }
        synchronized (this.O) {
            this.Q = b(arrayList);
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            a(IronSource.a.REWARDED_VIDEO, false);
            return;
        }
        Iterator<h.d> it = this.O.values().iterator();
        while (it.hasNext()) {
            this.Q.a(it.next());
        }
        this.O.clear();
    }

    private void N() {
        if (this.C) {
            L();
        }
    }

    private void O() {
        if (this.B) {
            M();
        }
    }

    private void b(IronSource.a aVar) {
        int i = b.a[aVar.ordinal()];
        if (i == 1) {
            O();
        } else if (i == 2) {
            N();
        } else {
            if (i != 3) {
                return;
            }
            J();
        }
    }

    private synchronized void c(boolean z) {
        this.s = z;
    }

    private void d(Context context) {
        AtomicBoolean atomicBoolean = this.j;
        if (atomicBoolean == null || !atomicBoolean.compareAndSet(false, true)) {
            return;
        }
        Df.a().a(new P6(context));
        Pb.k0().q().a(context, this.y);
        N9.i().a(context, this.y);
        C3694ke.i().a(context, this.y);
        C3675jd.P.a(context, this.y);
    }

    public static p g() {
        return d.a;
    }

    private synchronized Kc k() {
        return this.I;
    }

    private void o() {
        this.h = IronSourceLoggerManager.getLogger(0);
        this.i = new Bb();
    }

    private boolean p() {
        try {
            IronLog.INTERNAL.verbose("AdQuality SDK exist: " + IronSourceAdQuality.class.getName());
            return true;
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.INTERNAL.verbose("No AdQuality SDK found");
            return false;
        }
    }

    private boolean q() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().b() == null || this.l.c().b().b() == null) ? false : true;
    }

    private boolean r() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().c() == null) ? false : true;
    }

    private boolean s() {
        return r() && t();
    }

    private boolean t() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().a() == null || this.l.k().a().size() <= 0) ? false : true;
    }

    private synchronized boolean v() {
        return this.s;
    }

    private boolean w() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().d() == null) ? false : true;
    }

    private boolean x() {
        return w() && y();
    }

    private boolean y() {
        Ue ue = this.l;
        return (ue == null || ue.k() == null || this.l.k().b() == null || this.l.k().b().size() <= 0) ? false : true;
    }

    private boolean z() {
        Ue ue = this.l;
        return (ue == null || ue.c() == null || this.l.c().e() == null) ? false : true;
    }

    public boolean F() {
        return v();
    }

    public void G() {
        this.V = false;
    }

    public void H() {
        if (Z) {
            return;
        }
        Z = true;
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        try {
            jSONObjectB.put("status", "false");
            jSONObjectB.put("errorCode", 1);
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.k0().q().a(new C5(D5.L, jSONObjectB));
    }

    public void a(long j, Ue.a aVar) {
        JSONObject jSONObjectB = IronSourceUtils.b(u());
        try {
            jSONObjectB.put("duration", j);
            jSONObjectB.put("sessionDepth", this.A);
            jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, aVar.b());
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.k0().q().a(new C5(D5.Q, jSONObjectB));
    }

    @Override // com.ironsource.S4.a
    public void e(String str) {
        this.h.log(IronSourceLogger.IronSourceTag.API, "destroyBanner()", 1);
        try {
            com.ironsource.mediationsdk.demandOnly.c cVar = this.R;
            if (cVar != null) {
                cVar.a(str);
            }
        } catch (Throwable th) {
            C3813r4.d().a(th);
            this.h.logException(IronSourceLogger.IronSourceTag.API, "destroyISDemandOnlyBanner()", th);
        }
    }

    @Override // com.ironsource.InterfaceC3467aa
    public void f(String str) {
        try {
            String str2 = this.a + ":setMediationType(mediationType:" + str + ")";
            IronSourceLoggerManager ironSourceLoggerManager = this.h;
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
            ironSourceLoggerManager.log(ironSourceTag, str2, 1);
            if (!a(str, 1, 64) || !k(str)) {
                this.h.log(ironSourceTag, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length", 1);
            } else {
                this.q = str;
                this.T.f(str);
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            this.h.logException(IronSourceLogger.IronSourceTag.API, this.a + ":setMediationType(mediationType:" + str + ")", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f  */
    @Override // com.ironsource.S4.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean h(java.lang.String r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            com.ironsource.mediationsdk.demandOnly.k r0 = r1.Q     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto Lf
            boolean r2 = r0.a(r2)     // Catch: java.lang.Throwable -> Ld
            if (r2 == 0) goto Lf
            r2 = 1
            goto L10
        Ld:
            r2 = move-exception
            goto L12
        Lf:
            r2 = 0
        L10:
            monitor-exit(r1)
            return r2
        L12:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ld
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.p.h(java.lang.String):boolean");
    }

    public String i() {
        return this.n;
    }

    public String j() {
        return this.q;
    }

    public Map<String, String> l() {
        return this.p;
    }

    public C3655ia m() {
        return this.y;
    }

    public String n() {
        return this.u;
    }

    public boolean u() {
        return this.B || this.C || this.D;
    }

    private boolean k(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("^[a-zA-Z0-9]*$");
    }

    private R3 l(String str) {
        R3 r3 = new R3();
        if (str == null) {
            r3.a(new IronSourceError(506, "Init Fail - appKey is missing"));
            return r3;
        }
        if (!a(str, 5, 10)) {
            r3.a(ErrorBuilder.buildInvalidCredentialsError("appKey", str, "length should be between 5-10 characters"));
            return r3;
        }
        if (!k(str)) {
            r3.a(ErrorBuilder.buildInvalidCredentialsError("appKey", str, "should contain only english characters and numbers"));
        }
        return r3;
    }

    public C3603fc c() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listA = a(this.l.k().c());
        if (listA.size() > 0) {
            return new C3603fc(listA, this.l.c().e(), IronSourceUtils.f(), C3857ta.b(), this.y);
        }
        JSONObject jSONObjectA = IronSourceUtils.a(false, true, 1);
        a(jSONObjectA, new Object[][]{new Object[]{"errorCode", 1010}});
        a(D5.O6, jSONObjectA);
        return null;
    }

    @Override // com.ironsource.Sc
    public void g(String str) {
        try {
            this.h.log(IronSourceLogger.IronSourceTag.API, "onInitFailed(reason:" + str + ")", 1);
            IronSourceUtils.i("Mediation init failed");
            if (this.i != null) {
                Iterator<IronSource.a> it = this.v.iterator();
                while (it.hasNext()) {
                    a(it.next(), true);
                }
            }
            Kc kcK = k();
            if (kcK != null) {
                kcK.onInitFailed(new IronSourceError(IronSourceError.ERROR_LEGACY_INIT_FAILED, "Legacy init failed"));
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public String h() {
        return this.m;
    }

    public C3639hc i(String str) {
        Wb wbE = this.l.c().e();
        if (wbE == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return wbE.e();
        }
        C3639hc c3639hcA = wbE.a(str);
        return c3639hcA != null ? c3639hcA : wbE.e();
    }

    public void j(String str) {
        IronLog.API.verbose("userId = " + str);
        this.n = str;
        Pb.k0().q().a(new C5(D5.k, IronSourceUtils.a(false)));
        AdQualityBridge adQualityBridge = this.W;
        if (adQualityBridge != null) {
            adQualityBridge.changeUserId(str);
        }
    }

    public p(B7 b7, B7.a aVar, Q7 q7, InterfaceC3759o7 interfaceC3759o7, N8.a aVar2) {
        this.a = getClass().getName();
        this.b = "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b9.6.1";
        this.k = new Object();
        this.l = null;
        this.m = null;
        this.n = "";
        this.o = null;
        this.p = null;
        this.q = null;
        this.s = false;
        this.x = true;
        this.z = "sessionDepth";
        this.V = false;
        this.c = b7;
        this.d = aVar;
        this.e = q7;
        this.f = interfaceC3759o7;
        this.g = aVar2;
        o();
        this.j = new AtomicBoolean();
        this.v = new HashSet();
        this.w = new HashSet();
        this.C = false;
        this.B = false;
        this.D = false;
        this.r = new AtomicBoolean(true);
        this.A = 0;
        this.E = false;
        this.F = false;
        this.G = false;
        this.u = IronSourceUtils.d();
        this.H = Boolean.FALSE;
        this.L = false;
        this.I = null;
        this.J = true;
        this.M = new ConcurrentHashMap<>();
        this.O = new ConcurrentHashMap<>();
        this.N = new ConcurrentHashMap<>();
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = new T5();
        C3528ba c3528ba = new C3528ba();
        this.T = c3528ba;
        this.U = new W6(c3528ba);
        this.W = null;
        this.X = new InterfaceC3526b8.a();
        this.Y = new InterfaceC3526b8.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f  */
    @Override // com.ironsource.S4.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean d(java.lang.String r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            com.ironsource.mediationsdk.demandOnly.f r0 = r1.P     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto Lf
            boolean r2 = r0.b(r2)     // Catch: java.lang.Throwable -> Ld
            if (r2 == 0) goto Lf
            r2 = 1
            goto L10
        Ld:
            r2 = move-exception
            goto L12
        Lf:
            r2 = 0
        L10:
            monitor-exit(r1)
            return r2
        L12:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ld
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.p.d(java.lang.String):boolean");
    }

    private T4 e() {
        return new T4.b(Pb.k0().q(), new T4.a("IronSource"));
    }

    public Ue d() {
        return this.l;
    }

    private boolean d(Ue ue) {
        com.ironsource.mediationsdk.adquality.a aVarA = ue.c().a();
        return this.W == null && aVarA != null && aVarA.c() && AdQualityBridge.adQualityAvailable();
    }

    private com.ironsource.mediationsdk.demandOnly.k b(List<NetworkSettings> list) {
        C3659ie c3659ieF = this.l.c().f();
        T4.a aVar = new T4.a("Mediation");
        if (c3659ieF.d()) {
            aVar.a("isOneFlow", 1);
        }
        return new com.ironsource.mediationsdk.demandOnly.k(list, c3659ieF, com.ironsource.mediationsdk.c.c(), this.Y, h(), i(), new T4.b(C3694ke.i(), aVar));
    }

    public synchronized IronSourceError a(Context context, String str, boolean z, Kc kc, IronSource.a... aVarArr) throws Throwable {
        Throwable th;
        boolean z2;
        p pVar;
        boolean z3;
        try {
            try {
                IronLog.INTERNAL.verbose("GitHash: 2a5b4f8");
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                if (!C3619ga.a((Object) context, "Init Failed - provided context is null")) {
                    g("Provided context is null");
                    return new IronSourceError(2000, "Provided context is null");
                }
                this.g.a(context);
                boolean z4 = context instanceof Activity;
                if (z4) {
                    a((Activity) context);
                }
                AtomicBoolean atomicBoolean = this.r;
                if (atomicBoolean != null && atomicBoolean.compareAndSet(true, false)) {
                    Ie.a.a(kc == null);
                    if ((aVarArr == null || aVarArr.length == 0) && kc == null) {
                        for (IronSource.a aVar : IronSource.a.values()) {
                            this.v.add(aVar);
                        }
                        this.E = true;
                        this.F = true;
                        this.G = true;
                    } else {
                        for (IronSource.a aVar2 : aVarArr) {
                            this.v.add(aVar2);
                            this.w.add(aVar2);
                            if (aVar2.equals(IronSource.a.INTERSTITIAL)) {
                                this.F = true;
                            }
                            if (aVar2.equals(IronSource.a.BANNER)) {
                                this.G = true;
                            }
                            if (aVar2.equals(IronSource.a.REWARDED_VIDEO)) {
                                this.E = true;
                            }
                        }
                    }
                    IronLog.API.info("init(appKey:" + str + ")");
                    R3 r3L = l(str);
                    if (r3L.b()) {
                        this.m = str;
                    }
                    Ue ueA = a(context, this.m);
                    if (ueA != null) {
                        IronLog.INTERNAL.verbose("init cache exists");
                        a(ueA.c().b().f());
                    } else {
                        IronLog.INTERNAL.verbose("init cache does not exist");
                    }
                    ContextProvider.getInstance().updateAppContext(context.getApplicationContext());
                    this.d.a(context.getApplicationContext(), TimeUnit.HOURS.toMillis(C3462a5.a.d()));
                    this.T.g(LevelPlay.getSdkVersion());
                    this.T.a(T7.a());
                    this.T.a(C3698l0.a());
                    I();
                    d(context);
                    if (this.m == null) {
                        q.c().e();
                        if (this.v.contains(IronSource.a.REWARDED_VIDEO)) {
                            Od.a().a(false, (AdInfo) null);
                        }
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, r3L.a().toString(), 1);
                        return new IronSourceError(2010, "App key is null");
                    }
                    this.T.a(context);
                    this.T.c(this.m);
                    this.T.h(this.u);
                    if (this.x) {
                        JSONObject jSONObjectB = IronSourceUtils.b(z);
                        if (aVarArr != null) {
                            for (IronSource.a aVar3 : aVarArr) {
                                try {
                                    jSONObjectB.put(aVar3.toString(), true);
                                } catch (Exception e) {
                                    C3813r4.d().a(e);
                                }
                            }
                        }
                        int i = this.A + 1;
                        this.A = i;
                        if (kc != null) {
                            z2 = true;
                            z3 = z;
                            pVar = this;
                        } else {
                            z2 = false;
                            pVar = this;
                            z3 = z;
                        }
                        try {
                            pVar.a(z4, z3, i, jSONObjectB, z2);
                            pVar.x = false;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                    }
                    return null;
                }
                if (aVarArr != null) {
                    a(z4, z, kc != null, aVarArr);
                } else {
                    this.h.log(IronSourceLogger.IronSourceTag.API, "Multiple calls to init without ad units are not allowed", 3);
                }
                He heB = Ie.a.b();
                if (v()) {
                    a(this.l);
                    return new IronSourceError(IronSourceError.ERROR_INIT_ALREADY_FINISHED, "Already finished init");
                }
                if (heB == He.c) {
                    return new IronSourceError(IronSourceError.ERROR_LEGACY_INIT_FAILED, "Legacy init failed");
                }
                if (heB != He.a) {
                    if (kc != null) {
                        a(kc);
                    }
                    return new IronSourceError(IronSourceError.ERROR_OLD_API_INIT_IN_PROGRESS, "Old Api init in progress");
                }
                return new IronSourceError(IronSourceError.ERROR_NEW_INIT_API_ALREADY_CALLED, "Already called new init");
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public String f() {
        return this.o;
    }

    @Override // com.ironsource.S4.b
    public void c(String str) {
        this.h.log(IronSourceLogger.IronSourceTag.API, "showDemandOnlyInterstitial() instanceId=" + str, 1);
        ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListenerA = this.X.a(str);
        try {
            if (!this.C) {
                IronLog.API.error("Interstitial was initialized in mediation mode. Use showInterstitial instead");
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, new IronSourceError(508, "Interstitial was initialized in mediation mode. Use showInterstitial instead"));
                return;
            }
            com.ironsource.mediationsdk.demandOnly.f fVar = this.P;
            if (fVar == null) {
                IronLog.API.error("Interstitial was not initiated");
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, new IronSourceError(508, "Interstitial was not initiated"));
            } else {
                fVar.a(str);
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.API.error(e.getMessage());
            if (iSDemandOnlyInterstitialListenerA != null) {
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
            }
        }
    }

    @Override // com.ironsource.InterfaceC3467aa
    public boolean b(String str) {
        try {
            R3 r3 = new R3();
            a(str, r3);
            if (r3.b()) {
                this.o = str;
                Pb.k0().q().a(new C5(D5.k, IronSourceUtils.a(true)));
                return true;
            }
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, r3.a().toString(), 2);
            return false;
        } catch (Exception e) {
            C3813r4.d().a(e);
            this.h.logException(IronSourceLogger.IronSourceTag.API, this.a + ":setDynamicUserId(dynamicUserId:" + str + ")", e);
            return false;
        }
    }

    public void c(Context context) {
        Nf nf = Nf.a;
        nf.b();
        if (!v()) {
            nf.a(IronSourceConstants.errorCode_TEST_SUITE_SDK_NOT_INITIALIZED);
            IronLog.API.error("TestSuite cannot be launched, SDK not initialized");
        } else if (!c(this.l)) {
            nf.a(IronSourceConstants.errorCode_TEST_SUITE_DISABLED);
            IronLog.API.error(IronSourceConstants.errorMessage_TEST_SUITE_DISABLED);
        } else if (!IronSourceUtils.f(context)) {
            nf.a(IronSourceConstants.errorCode_TEST_SUITE_NO_NETWORK_CONNECTIVITY);
            IronLog.API.error("TestSuite cannot be launched, No network connectivity");
        } else {
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(context));
        }
    }

    @Override // com.ironsource.S4.c
    public synchronized void b(Activity activity, String str) {
        a(new h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.a.REWARDED_VIDEO).b(), this.Y.a(str));
    }

    @Override // com.ironsource.S4.b
    public synchronized void b(Activity activity, String str, String str2) {
        a(new h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.a.INTERSTITIAL).a(true).a(str2).b(), this.X.a(str));
    }

    private boolean c(Ue ue) {
        return ue != null && ue.p();
    }

    public o b(Activity activity, ISBannerSize iSBannerSize) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "createBanner()", 1);
        if (activity == null) {
            this.h.log(ironSourceTag, "createBanner() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new o(activity, iSBannerSize);
    }

    private boolean b(h.b bVar) {
        synchronized (this.N) {
            try {
                if (this.R != null) {
                    return false;
                }
                this.N.put(bVar.e(), bVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String b() {
        q qVarC = q.c();
        int i = b.b[qVarC.a().ordinal()];
        if (i != 1) {
            return i != 2 ? i != 3 ? (i == 4 && !A()) ? "No Native Ad configurations found" : "" : qVarC.d() ? "init() had failed" : "init() not finished yet" : "init() had failed";
        }
        return "init() must be called first";
    }

    public Ue b(Context context, String str, c cVar) {
        synchronized (this.k) {
            try {
                Ue ue = this.l;
                if (ue != null) {
                    return new Ue(ue);
                }
                Ue ueA = a(context, str, cVar);
                if (ueA == null || !ueA.q()) {
                    IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
                    IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
                    logger.log(ironSourceTag, "Null or invalid response. Trying to get cached response", 0);
                    ueA = a(context, h());
                    if (ueA != null) {
                        IronSourceError ironSourceErrorBuildUsingCachedConfigurationError = ErrorBuilder.buildUsingCachedConfigurationError(h(), str);
                        this.h.log(ironSourceTag, ironSourceErrorBuildUsingCachedConfigurationError.toString() + ": " + ueA.toString(), 1);
                        Pb.k0().q().a(new C5(D5.N, IronSourceUtils.b(false)));
                    }
                }
                if (ueA != null) {
                    this.l = ueA;
                    IronSourceUtils.e(context, ueA.toString());
                    b(this.l, context);
                    N9.i().c(true);
                    C3694ke.i().c(true);
                    C3675jd.P.c(true);
                    Pb.k0().q().c(true);
                }
                return ueA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(U1 u1) {
        C3462a5 c3462a5 = C3462a5.a;
        c3462a5.c(u1.h());
        c3462a5.a(u1.g());
        c3462a5.a(u1.k());
        this.f.a(u1);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0046 A[Catch: all -> 0x000d, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x0009, B:23:0x0046, B:25:0x004a, B:27:0x0054, B:29:0x0058, B:30:0x005c, B:32:0x0064, B:33:0x0067, B:35:0x006f, B:37:0x0073, B:38:0x0077, B:40:0x007f, B:41:0x0082, B:43:0x008a, B:45:0x008e, B:46:0x0092, B:48:0x009a, B:49:0x009d, B:51:0x00a2, B:53:0x00a6, B:54:0x00ac, B:11:0x0012, B:13:0x0016, B:15:0x0023, B:17:0x0027, B:19:0x0034, B:21:0x0038, B:22:0x003e, B:18:0x002d, B:14:0x001c), top: B:59:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.util.List<com.ironsource.mediationsdk.IronSource.a> a(android.content.Context r5, java.lang.String r6, boolean r7, com.ironsource.mediationsdk.IronSource.a... r8) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Ld
            r6.<init>()     // Catch: java.lang.Throwable -> Ld
            r0 = 1
            if (r8 == 0) goto L10
            int r1 = r8.length     // Catch: java.lang.Throwable -> Ld
            if (r1 != 0) goto L46
            goto L10
        Ld:
            r5 = move-exception
            goto Lb9
        L10:
            if (r7 == 0) goto L46
            boolean r7 = r4.E     // Catch: java.lang.Throwable -> Ld
            if (r7 == 0) goto L1c
            com.ironsource.mediationsdk.IronSource$a r7 = com.ironsource.mediationsdk.IronSource.a.REWARDED_VIDEO     // Catch: java.lang.Throwable -> Ld
            r4.a(r7)     // Catch: java.lang.Throwable -> Ld
            goto L23
        L1c:
            r4.B = r0     // Catch: java.lang.Throwable -> Ld
            com.ironsource.mediationsdk.IronSource$a r7 = com.ironsource.mediationsdk.IronSource.a.REWARDED_VIDEO     // Catch: java.lang.Throwable -> Ld
            r6.add(r7)     // Catch: java.lang.Throwable -> Ld
        L23:
            boolean r7 = r4.F     // Catch: java.lang.Throwable -> Ld
            if (r7 == 0) goto L2d
            com.ironsource.mediationsdk.IronSource$a r7 = com.ironsource.mediationsdk.IronSource.a.INTERSTITIAL     // Catch: java.lang.Throwable -> Ld
            r4.a(r7)     // Catch: java.lang.Throwable -> Ld
            goto L34
        L2d:
            r4.C = r0     // Catch: java.lang.Throwable -> Ld
            com.ironsource.mediationsdk.IronSource$a r7 = com.ironsource.mediationsdk.IronSource.a.INTERSTITIAL     // Catch: java.lang.Throwable -> Ld
            r6.add(r7)     // Catch: java.lang.Throwable -> Ld
        L34:
            boolean r7 = r4.G     // Catch: java.lang.Throwable -> Ld
            if (r7 == 0) goto L3e
            com.ironsource.mediationsdk.IronSource$a r7 = com.ironsource.mediationsdk.IronSource.a.BANNER     // Catch: java.lang.Throwable -> Ld
            r4.a(r7)     // Catch: java.lang.Throwable -> Ld
            goto La0
        L3e:
            r4.D = r0     // Catch: java.lang.Throwable -> Ld
            com.ironsource.mediationsdk.IronSource$a r7 = com.ironsource.mediationsdk.IronSource.a.BANNER     // Catch: java.lang.Throwable -> Ld
            r6.add(r7)     // Catch: java.lang.Throwable -> Ld
            goto La0
        L46:
            int r7 = r8.length     // Catch: java.lang.Throwable -> Ld
            r1 = 0
        L48:
            if (r1 >= r7) goto La0
            r2 = r8[r1]     // Catch: java.lang.Throwable -> Ld
            com.ironsource.mediationsdk.IronSource$a r3 = com.ironsource.mediationsdk.IronSource.a.INTERSTITIAL     // Catch: java.lang.Throwable -> Ld
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L67
            boolean r3 = r4.F     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L5c
            r4.a(r2)     // Catch: java.lang.Throwable -> Ld
            goto L67
        L5c:
            r4.C = r0     // Catch: java.lang.Throwable -> Ld
            boolean r3 = r6.contains(r2)     // Catch: java.lang.Throwable -> Ld
            if (r3 != 0) goto L67
            r6.add(r2)     // Catch: java.lang.Throwable -> Ld
        L67:
            com.ironsource.mediationsdk.IronSource$a r3 = com.ironsource.mediationsdk.IronSource.a.REWARDED_VIDEO     // Catch: java.lang.Throwable -> Ld
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L82
            boolean r3 = r4.E     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L77
            r4.a(r2)     // Catch: java.lang.Throwable -> Ld
            goto L82
        L77:
            r4.B = r0     // Catch: java.lang.Throwable -> Ld
            boolean r3 = r6.contains(r2)     // Catch: java.lang.Throwable -> Ld
            if (r3 != 0) goto L82
            r6.add(r2)     // Catch: java.lang.Throwable -> Ld
        L82:
            com.ironsource.mediationsdk.IronSource$a r3 = com.ironsource.mediationsdk.IronSource.a.BANNER     // Catch: java.lang.Throwable -> Ld
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L9d
            boolean r3 = r4.G     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L92
            r4.a(r2)     // Catch: java.lang.Throwable -> Ld
            goto L9d
        L92:
            r4.D = r0     // Catch: java.lang.Throwable -> Ld
            boolean r3 = r6.contains(r2)     // Catch: java.lang.Throwable -> Ld
            if (r3 != 0) goto L9d
            r6.add(r2)     // Catch: java.lang.Throwable -> Ld
        L9d:
            int r1 = r1 + 1
            goto L48
        La0:
            if (r5 == 0) goto Lb7
            boolean r7 = r5 instanceof android.app.Activity     // Catch: java.lang.Throwable -> Ld
            if (r7 == 0) goto Lac
            r7 = r5
            android.app.Activity r7 = (android.app.Activity) r7     // Catch: java.lang.Throwable -> Ld
            r4.a(r7)     // Catch: java.lang.Throwable -> Ld
        Lac:
            com.ironsource.environment.ContextProvider r7 = com.ironsource.environment.ContextProvider.getInstance()     // Catch: java.lang.Throwable -> Ld
            android.content.Context r5 = r5.getApplicationContext()     // Catch: java.lang.Throwable -> Ld
            r7.updateAppContext(r5)     // Catch: java.lang.Throwable -> Ld
        Lb7:
            monitor-exit(r4)
            return r6
        Lb9:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Ld
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.p.a(android.content.Context, java.lang.String, boolean, com.ironsource.mediationsdk.IronSource$a[]):java.util.List");
    }

    public void b(Ue ue, Context context) {
        b(ue);
        a(ue, context);
    }

    private void b(Ue ue) {
        this.h.setLoggerDebugLevel("console", ue.c().b().h().a());
    }

    @Override // com.ironsource.InterfaceC3467aa
    public String b(Context context) {
        String strI = this.c.I(context);
        Pb.k0().q().a(new C5(D5.r, IronSourceUtils.b(false)));
        return !TextUtils.isEmpty(strI) ? strI : "";
    }

    private void b(D5 d5, JSONObject jSONObject) {
        C3694ke.i().a(new C5(d5, jSONObject));
    }

    public void b(boolean z) {
        com.ironsource.mediationsdk.c.c().b(z);
        this.T.a(z);
        Pb.k0().q().a(new C5(z ? D5.c : D5.d, IronSourceUtils.b(false)));
    }

    public void b(String str, JSONObject jSONObject) {
        com.ironsource.mediationsdk.c.c().b(new t(str, jSONObject));
    }

    @Override // com.ironsource.InterfaceC3527b9
    public void b(ImpressionDataListener impressionDataListener) {
        if (C3619ga.a((Object) impressionDataListener, "addImpressionDataListener - listener is null")) {
            C3857ta.b().a(impressionDataListener);
            IronLog.API.info("add impression data listener to " + impressionDataListener.getClass().getSimpleName());
        }
    }

    private void a(IronSource.a aVar) {
        String str = aVar + " ad unit has already been initialized";
        this.h.log(IronSourceLogger.IronSourceTag.API, str, 3);
        IronSourceUtils.i(str);
    }

    private synchronized void a(boolean z, boolean z2, boolean z3, IronSource.a... aVarArr) throws Throwable {
        Throwable th;
        int i;
        try {
            try {
                i = 0;
                for (IronSource.a aVar : aVarArr) {
                    try {
                        if (aVar.equals(IronSource.a.INTERSTITIAL)) {
                            this.F = true;
                        } else if (aVar.equals(IronSource.a.BANNER)) {
                            this.G = true;
                        } else if (aVar.equals(IronSource.a.REWARDED_VIDEO)) {
                            this.E = true;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (q.c().a() == q.d.INIT_FAILED) {
            try {
                if (this.i != null) {
                    int length = aVarArr.length;
                    while (i < length) {
                        IronSource.a aVar2 = aVarArr[i];
                        if (!this.v.contains(aVar2)) {
                            a(aVar2, true);
                        }
                        i++;
                    }
                }
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        } else if (!v()) {
            JSONObject jSONObjectB = IronSourceUtils.b(z2);
            int length2 = aVarArr.length;
            while (i < length2) {
                IronSource.a aVar3 = aVarArr[i];
                if (!this.v.contains(aVar3)) {
                    this.v.add(aVar3);
                    this.w.add(aVar3);
                    try {
                        jSONObjectB.put(aVar3.toString(), true);
                    } catch (Exception e2) {
                        C3813r4.d().a(e2);
                        IronLog.INTERNAL.error(e2.toString());
                    }
                } else {
                    this.h.log(IronSourceLogger.IronSourceTag.API, aVar3 + " ad unit has started initializing.", 3);
                }
                i++;
            }
            int i2 = this.A + 1;
            this.A = i2;
            a(z, z2, i2, jSONObjectB, z3);
        } else {
            if (this.t == null) {
                return;
            }
            try {
                new Qb().a(this.l.c().b().e().b(), u());
            } catch (Exception e3) {
                C3813r4.d().a(e3);
                IronLog.INTERNAL.error(e3.toString());
            }
            JSONObject jSONObjectB2 = IronSourceUtils.b(z2);
            for (IronSource.a aVar4 : aVarArr) {
                if (!this.v.contains(aVar4)) {
                    this.v.add(aVar4);
                    this.w.add(aVar4);
                    try {
                        jSONObjectB2.put(aVar4.toString(), true);
                    } catch (Exception e4) {
                        C3813r4.d().a(e4);
                        IronLog.INTERNAL.error(e4.toString());
                    }
                    List<IronSource.a> list = this.t;
                    if (list != null && list.contains(aVar4)) {
                        b(aVar4);
                    } else {
                        a(aVar4, false);
                    }
                } else {
                    a(aVar4);
                }
            }
            int i3 = this.A + 1;
            this.A = i3;
            try {
                a(z, z2, i3, jSONObjectB2, z3);
            } catch (Throwable th5) {
                th = th5;
            }
            th = th;
            throw th;
        }
    }

    private void a(boolean z, boolean z2, int i, JSONObject jSONObject, boolean z3) {
        try {
            StringBuilder sb = new StringBuilder();
            if (z2) {
                sb.append(String.format(",Activity=%s", Boolean.valueOf(ContextProvider.getInstance().getCurrentActiveActivity() != null)));
            } else if (!z) {
                sb.append(",");
                sb.append(IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW);
            }
            sb.append(String.format(",cachedUserAgent=%s", Boolean.valueOf(this.c.n())));
            jSONObject.put(IronSourceConstants.EVENTS_EXT1, sb.toString());
            jSONObject.put("sessionDepth", i);
            if (z3) {
                if (z2) {
                    jSONObject.put("isMultipleAdObjects", 1);
                } else {
                    jSONObject.put("isMultipleAdUnits", 1);
                }
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        Pb.k0().q().a(new C5(D5.b, jSONObject));
    }

    private synchronized void a(Kc kc) {
        this.I = kc;
    }

    public boolean a(Td td, Ue ue) {
        a(ue);
        if (v()) {
            return true;
        }
        synchronized (this.k) {
            this.l = ue;
        }
        return a(ue.h(), td, ue.c());
    }

    @Override // com.ironsource.Sc
    public void a(List<IronSource.a> list, boolean z, S3 s3) {
        a(this.l);
        a(list, z ? new Td() : null, s3);
    }

    private boolean a(List<IronSource.a> list, Td td, S3 s3) {
        IronLog.INTERNAL.verbose();
        try {
            this.t = list;
            c(true);
            this.h.log(IronSourceLogger.IronSourceTag.API, "onInitSuccess()", 1);
            IronSourceUtils.i("init success");
            if (td != null) {
                JSONObject jSONObjectB = IronSourceUtils.b(false);
                try {
                    jSONObjectB.put("revived", true);
                    if (!TextUtils.isEmpty(td.a())) {
                        jSONObjectB.put("reason", td.a());
                    }
                    if (td.b() != null) {
                        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, "retryCount=" + td.b());
                    }
                } catch (JSONException e) {
                    C3813r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
                Pb.k0().q().a(new C5(D5.L, jSONObjectB));
            }
            int iB = s3.b().f().b();
            if (iB >= 0) {
                Z3 z3 = new Z3();
                z3.a(iB);
                z3.a(iB, this.l.l().d());
            }
            N9.i().h();
            C3694ke.i().h();
            Pb.k0().q().h();
            com.ironsource.mediationsdk.c.c().b(h(), i());
            for (IronSource.a aVar : IronSource.a.values()) {
                if (this.v.contains(aVar)) {
                    if (list.contains(aVar)) {
                        b(aVar);
                    } else {
                        a(aVar, false);
                    }
                }
            }
            Kc kcK = k();
            if (kcK != null) {
                kcK.a(this.l);
            }
            return true;
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            Kc kcK2 = k();
            if (kcK2 != null) {
                kcK2.onInitFailed(new IronSourceError(IronSourceError.ERROR_LEGACY_INIT_POST_FAILED, "onInitSuccess() had failed"));
            }
            return false;
        }
    }

    private void a(Ue ue) {
        if (p() && d(ue)) {
            AdQualityBridge adQualityBridge = new AdQualityBridge(ContextProvider.getInstance().getApplicationContext(), h(), i(), new C3662j0(), ue.c().b().h().a());
            this.W = adQualityBridge;
            C3655ia c3655ia = this.y;
            if (c3655ia != null) {
                adQualityBridge.setSegment(c3655ia);
            }
        }
    }

    private com.ironsource.mediationsdk.demandOnly.f a(List<NetworkSettings> list) {
        L9 l9D = this.l.c().d();
        T4.a aVar = new T4.a("Mediation");
        if (l9D.j()) {
            aVar.a("isOneFlow", 1);
        }
        return new com.ironsource.mediationsdk.demandOnly.f(list, l9D, com.ironsource.mediationsdk.c.c(), this.X, h(), i(), new T4.b(N9.i(), aVar));
    }

    private List<NetworkSettings> a(ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = arrayList.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList2.add(this.l.l().b(str));
            }
        }
        return arrayList2;
    }

    @Override // com.ironsource.Sc
    public void a() {
        if (this.H.booleanValue()) {
            this.H = Boolean.FALSE;
            l.a().b(IronSource.a.BANNER, new IronSourceError(603, "init() had failed"));
        }
        if (this.L) {
            this.L = false;
            l.a().b(IronSource.a.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
        }
        if (this.K) {
            this.K = false;
            l.a().b(IronSource.a.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        synchronized (this.M) {
            try {
                Iterator<h.d> it = this.M.values().iterator();
                while (it.hasNext()) {
                    String strE = it.next().e();
                    this.X.a(strE).onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                }
                this.M.clear();
            } finally {
            }
        }
        synchronized (this.O) {
            try {
                Iterator<h.d> it2 = this.O.values().iterator();
                while (it2.hasNext()) {
                    String strE2 = it2.next().e();
                    this.Y.a(strE2).onRewardedVideoAdLoadFailed(strE2, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                this.O.clear();
            } finally {
            }
        }
        synchronized (this.N) {
            try {
                for (h.b bVar : this.N.values()) {
                    ISDemandOnlyBannerLayout iSDemandOnlyBannerLayoutG = bVar.g();
                    if (iSDemandOnlyBannerLayoutG != null) {
                        iSDemandOnlyBannerLayoutG.getListener().a(bVar.e(), ErrorBuilder.buildInitFailedError("init() had failed", "Banner"));
                    }
                }
                this.N.clear();
            } finally {
            }
        }
    }

    private void a(IronSource.a aVar, boolean z) {
        int i = b.a[aVar.ordinal()];
        if (i == 1) {
            if (this.B) {
                Iterator<h.d> it = this.O.values().iterator();
                while (it.hasNext()) {
                    String strE = it.next().e();
                    this.Y.a(strE).onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                this.O.clear();
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3 && this.D) {
                for (h.b bVar : this.N.values()) {
                    ISDemandOnlyBannerLayout iSDemandOnlyBannerLayoutG = bVar.g();
                    if (iSDemandOnlyBannerLayoutG != null) {
                        iSDemandOnlyBannerLayoutG.getListener().a(bVar.e(), ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Banner"));
                    }
                }
                this.N.clear();
                return;
            }
            return;
        }
        if (this.C) {
            Iterator<h.d> it2 = this.M.values().iterator();
            while (it2.hasNext()) {
                String strE2 = it2.next().e();
                this.X.a(strE2).onInterstitialAdLoadFailed(strE2, ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Interstitial"));
            }
            this.M.clear();
        }
    }

    public void a(C3655ia c3655ia) {
        this.y = c3655ia;
        AdQualityBridge adQualityBridge = this.W;
        if (adQualityBridge != null) {
            adQualityBridge.setSegment(c3655ia);
        }
        N9.i().a(this.y);
        C3694ke.i().a(this.y);
        C3675jd.P.a(this.y);
        Pb.k0().q().a(this.y);
    }

    @Override // com.ironsource.InterfaceC3467aa
    public void a(boolean z) {
        com.ironsource.mediationsdk.c.c().a(z);
    }

    @Override // com.ironsource.S4.c
    public synchronized void a(Activity activity, String str, String str2) {
        a(new h.c().b(str).a(str2).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(true).a(IronSource.a.REWARDED_VIDEO).b(), this.Y.a(str));
    }

    public void a(h.d dVar, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        String strE = dVar.e();
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + strE);
        try {
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.API.error(th.getMessage());
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, th.getMessage()));
        }
        if (!this.E) {
            ironLog.error("initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, "initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()"));
            return;
        }
        if (!this.B) {
            ironLog.error("Rewarded video was initialized in mediation mode");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, "Rewarded video was initialized in mediation mode"));
            return;
        }
        q.d dVarA = q.c().a();
        if (dVarA == q.d.INIT_FAILED) {
            ironLog.error("init() had failed");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronSourceError ironSourceErrorA = dVar.a();
        if (ironSourceErrorA != null) {
            if (ironSourceErrorA.getErrorCode() == 1060) {
                b(D5.Q4, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
            }
            ironLog.error(ironSourceErrorA.toString());
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ironSourceErrorA);
            return;
        }
        a(dVar.d());
        if (dVarA == q.d.INIT_IN_PROGRESS) {
            if (q.c().d()) {
                ironLog.error("init() had failed");
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            synchronized (this.O) {
                this.O.put(strE, dVar);
            }
            if (TextUtils.isEmpty(dVar.b())) {
                return;
            }
            b(D5.K5, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
            return;
        }
        if (!D()) {
            ironLog.error("No rewarded video configurations found");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("the server response does not contain rewarded video data", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        synchronized (this.O) {
            try {
                com.ironsource.mediationsdk.demandOnly.k kVar = this.Q;
                if (kVar == null) {
                    this.O.put(strE, dVar);
                    if (!TextUtils.isEmpty(dVar.b())) {
                        b(D5.K5, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                    }
                    return;
                }
                kVar.a(dVar);
                return;
            } finally {
            }
        }
        C3813r4.d().a(th);
        IronLog.API.error(th.getMessage());
        iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(strE, new IronSourceError(510, th.getMessage()));
    }

    @Override // com.ironsource.S4.c
    public synchronized void a(String str) {
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + str);
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = this.Y.a(str);
        try {
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.API.error(e.getMessage());
            if (iSDemandOnlyRewardedVideoListenerA != null) {
                iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(510, e.getMessage()));
            }
        }
        if (!this.B) {
            ironLog.error("Rewarded video was initialized in mediation mode. Use showRewardedVideo instead");
            iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(508, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"));
            return;
        }
        com.ironsource.mediationsdk.demandOnly.k kVar = this.Q;
        if (kVar == null) {
            ironLog.error("Rewarded video was not initiated");
            iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(508, "Rewarded video was not initiated"));
        } else {
            kVar.b(str);
        }
    }

    @Override // com.ironsource.S4.c
    public void a(ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        this.Y.a(iSDemandOnlyRewardedVideoListener);
    }

    @Override // com.ironsource.S4.b
    public synchronized void a(Activity activity, String str) {
        a(new h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.a.INTERSTITIAL).b(), this.X.a(str));
    }

    private synchronized void a(h.d dVar, ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        String strE = dVar.e();
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + strE);
        try {
            if (!this.F) {
                ironLog.error("initISDemandOnly() must be called before loadISDemandOnlyInterstitial()");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, new IronSourceError(510, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"));
                return;
            }
            if (!this.C) {
                ironLog.error("Interstitial was initialized in mediation mode. Use loadInterstitial instead");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, new IronSourceError(510, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"));
                return;
            }
            q.d dVarA = q.c().a();
            if (dVarA == q.d.INIT_FAILED) {
                ironLog.error("init() had failed");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                return;
            }
            IronSourceError ironSourceErrorA = dVar.a();
            if (ironSourceErrorA != null) {
                if (ironSourceErrorA.getErrorCode() == 1060) {
                    b(D5.F5, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                }
                ironLog.error(ironSourceErrorA.toString());
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ironSourceErrorA);
                return;
            }
            a(dVar.d());
            if (dVarA == q.d.INIT_IN_PROGRESS) {
                if (q.c().d()) {
                    ironLog.error("init() had failed");
                    iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                } else {
                    synchronized (this.M) {
                        this.M.put(dVar.e(), dVar);
                    }
                    if (!TextUtils.isEmpty(dVar.e())) {
                        a(D5.L5, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                    }
                }
                return;
            }
            if (!x()) {
                ironLog.error("No interstitial configurations found");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                return;
            }
            synchronized (this.M) {
                try {
                    com.ironsource.mediationsdk.demandOnly.f fVar = this.P;
                    if (fVar == null) {
                        this.M.put(dVar.e(), dVar);
                        if (!TextUtils.isEmpty(dVar.b())) {
                            a(D5.L5, IronSourceUtils.a(true, !TextUtils.isEmpty(dVar.b()), 1));
                        }
                        return;
                    }
                    fVar.a(dVar);
                } finally {
                }
            }
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.API.error(th.getMessage());
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(strE, new IronSourceError(510, th.getMessage()));
        }
    }

    @Override // com.ironsource.S4.b
    public void a(ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        this.X.a(iSDemandOnlyInterstitialListener);
    }

    @Override // com.ironsource.S4.a
    public ISDemandOnlyBannerLayout a(Activity activity, ISBannerSize iSBannerSize) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "createBannerForDemandOnly()", 1);
        if (activity == null) {
            this.h.log(ironSourceTag, "createBannerForDemandOnly() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new ISDemandOnlyBannerLayout(activity, iSBannerSize);
    }

    @Override // com.ironsource.S4.a
    public synchronized void a(Activity activity, ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, String str) {
        h.b bVarA = new h.c().b(str).a(activity).a(iSDemandOnlyBannerLayout).a(IronSource.a.BANNER).a();
        IronSourceError ironSourceErrorA = bVarA.a();
        if (ironSourceErrorA != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorA.getErrorMessage(), 3);
            if (iSDemandOnlyBannerLayout != null) {
                iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorA);
            }
            return;
        }
        IronSourceError ironSourceErrorA2 = a(q.c().a());
        if (ironSourceErrorA2 != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorA2.getErrorMessage(), 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorA2);
            return;
        }
        ContextProvider.getInstance().updateActivity(activity);
        if (a(bVarA)) {
            return;
        }
        if (!s()) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "No banner configurations found", 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ErrorBuilder.buildInitFailedError("the server response does not contain banner data", "Banner"));
        } else {
            if (b(bVarA)) {
                return;
            }
            this.R.a(iSDemandOnlyBannerLayout, str);
        }
    }

    private boolean a(h.b bVar) {
        if (q.c().a() != q.d.INIT_IN_PROGRESS) {
            return false;
        }
        synchronized (this.N) {
            this.N.put(bVar.e(), bVar);
        }
        return true;
    }

    private IronSourceError a(q.d dVar) {
        if (!this.G) {
            return new IronSourceError(510, "ironSource SDK was not initialized");
        }
        if (!this.D) {
            return new IronSourceError(510, "ironSource SDK was not initialized using Demand Only mode");
        }
        if (dVar == q.d.INIT_FAILED) {
            return new IronSourceError(510, "ironSource initialization failed");
        }
        if (dVar == q.d.INIT_IN_PROGRESS && q.c().d()) {
            return new IronSourceError(510, "ironSource initialization in progress");
        }
        return null;
    }

    public Ue a(Context context, String str) {
        if (!C3801q9.a(context)) {
            return null;
        }
        D3 d3C = C3801q9.c(context);
        String strD = d3C.d();
        String strF = d3C.f();
        String strE = d3C.e();
        if (!strD.equals(str)) {
            return null;
        }
        Ue ue = new Ue(context, strD, strF, strE);
        ue.a(Ue.a.CACHE);
        return ue;
    }

    private Ue a(Context context, String str, c cVar) {
        Exception exc;
        Ue ue = null;
        if (!IronSourceUtils.f(context)) {
            return null;
        }
        try {
            String strB = b(context);
            if (TextUtils.isEmpty(strB)) {
                strB = this.c.a(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            String str2 = strB;
            C3655ia c3655ia = this.y;
            String strA = C3634h7.a(We.a(context, h(), str, str2, j(), this.J, c3655ia != null ? c3655ia.f() : null, u()), C3725m9.a().toString(), cVar);
            if (strA == null) {
                IronLog.INTERNAL.warning("serverResponseString is null");
                return null;
            }
            if (IronSourceUtils.g()) {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("encrypt");
                JSONObject jSONObject = new JSONObject(strA);
                String strOptString = jSONObject.optString(Ue.n, null);
                if (TextUtils.isEmpty(strOptString)) {
                    ironLog.warning("encryptedResponse is empty - return null");
                    return null;
                }
                strA = a(strOptString, Boolean.valueOf(jSONObject.optBoolean("compression", false)));
                if (TextUtils.isEmpty(strA)) {
                    ironLog.warning("encoded response invalid - return null");
                    H();
                    return null;
                }
            }
            Ue ue2 = new Ue(context, h(), str, strA);
            try {
                ue2.a(Ue.a.SERVER);
                if (ue2.q()) {
                    return ue2;
                }
                IronLog.INTERNAL.warning("response invalid - return null");
                return null;
            } catch (Exception e) {
                exc = e;
                ue = ue2;
                C3813r4.d().a(exc);
                IronLog.INTERNAL.warning("exception = " + exc);
                return ue;
            }
        } catch (Exception e2) {
            exc = e2;
        }
    }

    private String a(String str, Boolean bool) {
        if (bool.booleanValue()) {
            return Q9.d(C3775p5.b().c(), str);
        }
        return Q9.b(C3775p5.b().c(), str);
    }

    private void a(Ue ue, Context context) {
        boolean zL = q() ? ue.c().b().b().l() : false;
        boolean zL2 = C() ? ue.c().f().m().l() : false;
        boolean zL3 = w() ? ue.c().d().i().l() : false;
        boolean zL4 = r() ? ue.c().c().g().l() : false;
        boolean zL5 = z() ? ue.c().e().g().l() : false;
        C3693kd c3693kdI = ue.c().b().i();
        boolean zI = c3693kdI.i();
        if (zL) {
            a((AbstractC3812r3) Pb.k0().q(), ue.c().b().b(), context, ue, true);
        }
        if (zL2) {
            a((AbstractC3812r3) C3694ke.i(), ue.c().f().m(), context, ue, true);
        } else {
            C3694ke.i().a(false);
        }
        if (zL3) {
            a((AbstractC3812r3) N9.i(), ue.c().d().i(), context, ue, true);
        } else if (zL4) {
            a((AbstractC3812r3) N9.i(), ue.c().c().g(), context, ue, true);
        } else if (zL5) {
            a((AbstractC3812r3) N9.i(), ue.c().e().g(), context, ue, true);
        } else {
            N9.i().a(false);
        }
        C3675jd c3675jd = C3675jd.P;
        c3675jd.a(zI);
        if (zI) {
            c3675jd.b(c3693kdI.j(), context);
            c3675jd.b(c3693kdI.l(), context);
            c3675jd.c(c3693kdI.k(), context);
            c3675jd.b(c3693kdI.g());
            c3675jd.c(c3693kdI.h());
        }
    }

    private void a(AbstractC3812r3 abstractC3812r3, R1 r1, Context context, Ue ue, boolean z) {
        abstractC3812r3.a(z);
        abstractC3812r3.a(r1.c(), context);
        abstractC3812r3.b(r1.d(), context);
        abstractC3812r3.a(r1.f());
        abstractC3812r3.d(r1.e());
        abstractC3812r3.b(r1.a());
        abstractC3812r3.b(r1.i(), context);
        abstractC3812r3.c(r1.h(), context);
        abstractC3812r3.a(r1.j(), context);
        abstractC3812r3.d(r1.g(), context);
        abstractC3812r3.a(ue.c().b().j());
        abstractC3812r3.b(r1.k());
        abstractC3812r3.c(r1.b());
    }

    private void a(String str, R3 r3) {
        if (a(str, 1, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) {
            return;
        }
        r3.a(ErrorBuilder.buildInvalidKeyValueError(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, "dynamicUserId is invalid, should be between 1-128 chars in length."));
    }

    private boolean a(String str, int i, int i2) {
        return str != null && str.length() >= i && str.length() <= i2;
    }

    public boolean a(C3701l3 c3701l3) {
        return this.e.c(ContextProvider.getInstance().getApplicationContext(), c3701l3, IronSource.a.BANNER);
    }

    public C3805qd.b a(C3729md c3729md) {
        return this.e.a(ContextProvider.getInstance().getApplicationContext(), c3729md, IronSource.a.REWARDED_VIDEO);
    }

    private void a(D5 d5, JSONObject jSONObject) {
        N9.i().a(new C5(d5, jSONObject));
    }

    private void a(JSONObject jSONObject, Object[][] objArr) {
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    jSONObject.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IronSourceObject addToDictionary: " + Log.getStackTraceString(e), 3);
            }
        }
    }

    public void a(String str, List<String> list) {
        String strCheckMetaDataKeyValidity = MetaDataUtils.checkMetaDataKeyValidity(str);
        String strCheckMetaDataValueValidity = MetaDataUtils.checkMetaDataValueValidity(list);
        if (strCheckMetaDataKeyValidity.length() > 0) {
            IronLog.API.verbose(strCheckMetaDataKeyValidity);
            return;
        }
        if (strCheckMetaDataValueValidity.length() > 0) {
            IronLog.API.verbose(strCheckMetaDataValueValidity);
            return;
        }
        MetaData metaData = MetaDataUtils.formatMetaData(str, list);
        String metaDataKey = metaData.getMetaDataKey();
        List<String> metaDataValue = metaData.getMetaDataValue();
        if (MetaDataUtils.isMediationOnlyKey(metaDataKey)) {
            if (v() && MetaDataUtils.isMediationKeysBeforeInit(metaDataKey)) {
                IronLog.API.error("setMetaData with key = " + metaDataKey + " must to be called before init");
            } else {
                C3857ta.b().a(metaDataKey, metaDataValue);
            }
        } else {
            com.ironsource.mediationsdk.c.c().c(metaDataKey, metaDataValue);
        }
        try {
            ConcurrentHashMap<String, List<String>> concurrentHashMapE = com.ironsource.mediationsdk.c.c().e();
            concurrentHashMapE.putAll(C3857ta.b().c());
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, List<String>> entry : concurrentHashMapE.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            this.U.a(jSONObject);
            this.T.a(jSONObject);
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error("got the following error " + e.getMessage());
        }
        Pb.k0().q().a(new C5(v() ? D5.j : D5.i, IronSourceUtils.a(str, list, metaDataValue)));
    }

    @Override // com.ironsource.S4
    public String a(Context context) {
        String str;
        He heA;
        String strC;
        C3768og c3768ogK;
        T4 t4E = e();
        He he = null;
        try {
            heA = Ie.a.a();
            try {
                t4E.a(D5.M5, heA);
            } catch (Exception unused) {
                str = null;
                he = heA;
                t4E.a(D5.O5, he);
                heA = he;
                strC = str;
            }
        } catch (Exception unused2) {
            str = null;
        }
        if (context == null) {
            IronLog.API.error("bidding data cannot be retrieved, context required");
            t4E.a(D5.P5, (He) null);
            return null;
        }
        if (heA == He.a) {
            IronLog.API.error("bidding data cannot be retrieved, SDK not initialized");
            t4E.a(D5.S5, (He) null);
            return null;
        }
        q.c().f();
        Ue ue = this.l;
        boolean zE = (ue == null || (c3768ogK = ue.c().b().k()) == null) ? true : c3768ogK.e();
        this.T.b(context);
        JSONObject jSONObjectA = new C3750ng().a(context);
        com.ironsource.mediationsdk.d.b().a(jSONObjectA, true);
        if (zE) {
            strC = Q9.a(jSONObjectA.toString());
        } else {
            strC = Q9.c(jSONObjectA.toString());
        }
        if (heA == He.d) {
            IronLog.INTERNAL.verbose("external token parameters: " + jSONObjectA);
        }
        if (TextUtils.isEmpty(strC)) {
            t4E.a(D5.N5, heA);
        }
        t4E.a(D5.R5, heA);
        return strC;
    }

    @Override // com.ironsource.InterfaceC3527b9
    public void a(ImpressionDataListener impressionDataListener) {
        if (C3619ga.a((Object) impressionDataListener, "removeImpressionDataListener - listener is null")) {
            C3857ta.b().b(impressionDataListener);
        }
    }

    public void a(String str, JSONObject jSONObject) {
        if (C3619ga.a((Object) jSONObject, "setAdRevenueData - impressionData is null") && C3619ga.a((Object) str, "setAdRevenueData - dataSource is null")) {
            this.S.a(str, jSONObject);
        }
    }

    private void a(Activity activity) {
        ContextProvider.getInstance().updateActivity(activity);
        IronLog.INTERNAL.verbose("activity is updated to: " + activity.hashCode());
    }
}
