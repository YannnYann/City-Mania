package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import com.ironsource.A4;
import com.ironsource.A8;
import com.ironsource.B4;
import com.ironsource.B8;
import com.ironsource.C3522b4;
import com.ironsource.C3524b6;
import com.ironsource.C3577e4;
import com.ironsource.C3667j5;
import com.ironsource.C3712le;
import com.ironsource.C3813r4;
import com.ironsource.C3848t1;
import com.ironsource.C3855t8;
import com.ironsource.C3873u8;
import com.ironsource.C3877uc;
import com.ironsource.C3891v8;
import com.ironsource.EnumC3543c7;
import com.ironsource.G5;
import com.ironsource.HandlerC3463a6;
import com.ironsource.InterfaceC3464a7;
import com.ironsource.InterfaceC3905w4;
import com.ironsource.InterfaceC3923x4;
import com.ironsource.InterfaceC3941y4;
import com.ironsource.M;
import com.ironsource.Pb;
import com.ironsource.Q3;
import com.ironsource.Sb;
import com.ironsource.Ub;
import com.ironsource.V7;
import com.ironsource.X4;
import com.ironsource.Y4;
import com.ironsource.ch;
import com.ironsource.sdk.IronSourceNetwork;
import com.ironsource.sdk.controller.f;
import com.ironsource.sdk.controller.l;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e implements com.ironsource.sdk.controller.c, com.ironsource.sdk.controller.l {
    private com.ironsource.sdk.controller.l b;
    private CountDownTimer d;
    private final V7 g;
    private final ch h;
    private final C3877uc k;
    private final String a = e.class.getSimpleName();
    private C3855t8.b c = C3855t8.b.None;
    private final Q3 e = new Q3("NativeCommandExecutor");
    private final Q3 f = new Q3("ControllerCommandsExecutor");
    private final Map<String, l.a> i = new HashMap();
    private final Map<String, l.b> j = new HashMap();

    public class a implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ InterfaceC3923x4 b;

        public a(JSONObject jSONObject, InterfaceC3923x4 interfaceC3923x4) {
            this.a = jSONObject;
            this.b = interfaceC3923x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    public class b implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;
        final /* synthetic */ InterfaceC3923x4 c;

        public b(X4 x4, Map map, InterfaceC3923x4 interfaceC3923x4) {
            this.a = x4;
            this.b = map;
            this.c = interfaceC3923x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c);
            }
        }
    }

    public class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;
        final /* synthetic */ InterfaceC3905w4 d;

        public c(String str, String str2, X4 x4, InterfaceC3905w4 interfaceC3905w4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
            this.d = interfaceC3905w4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    public class d implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ InterfaceC3905w4 b;

        public d(JSONObject jSONObject, InterfaceC3905w4 interfaceC3905w4) {
            this.a = jSONObject;
            this.b = interfaceC3905w4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.e$e, reason: collision with other inner class name */
    public class RunnableC1054e implements Runnable {
        final /* synthetic */ X4 a;

        public RunnableC1054e(X4 x4) {
            this.a = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a);
            }
        }
    }

    public class f implements Runnable {
        final /* synthetic */ X4 a;

        public f(X4 x4) {
            this.a = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.b(this.a);
            }
        }
    }

    public class g implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;
        final /* synthetic */ InterfaceC3905w4 c;

        public g(X4 x4, Map map, InterfaceC3905w4 interfaceC3905w4) {
            this.a = x4;
            this.b = map;
            this.c = interfaceC3905w4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c);
            }
        }
    }

    public class h implements Runnable {
        final /* synthetic */ l.a a;
        final /* synthetic */ f.c b;

        public h(l.a aVar, f.c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = e.this;
            if (eVar.b != null) {
                if (this.a != null) {
                    eVar.i.put(this.b.f(), this.a);
                }
                e.this.b.a(this.b, this.a);
            }
        }
    }

    public class i implements Runnable {
        final /* synthetic */ JSONObject a;

        public i(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.b(this.a);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a();
                e.this.b = null;
            }
        }
    }

    public class k extends CountDownTimer {
        public k(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Global Controller Timer Finish");
            e.this.d(C3522b4.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.d();
        }
    }

    public class m implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        public m(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e eVar = e.this;
                eVar.b = eVar.b(eVar.h.b(), e.this.h.d(), e.this.h.f(), e.this.h.e(), e.this.h.g(), e.this.h.c(), this.a, this.b);
                e.this.b.b();
            } catch (Throwable th) {
                C3813r4.d().a(th);
                e.this.d(Log.getStackTraceString(th));
            }
        }
    }

    public class n extends CountDownTimer {
        public n(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Recovered Controller | Global Controller Timer Finish");
            e.this.d(C3522b4.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public class o implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;
        final /* synthetic */ InterfaceC3941y4 d;

        public o(String str, String str2, X4 x4, InterfaceC3941y4 interfaceC3941y4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
            this.d = interfaceC3941y4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    public class p implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ InterfaceC3941y4 b;

        public p(JSONObject jSONObject, InterfaceC3941y4 interfaceC3941y4) {
            this.a = jSONObject;
            this.b = interfaceC3941y4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    public class q implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ X4 c;
        final /* synthetic */ InterfaceC3923x4 d;

        public q(String str, String str2, X4 x4, InterfaceC3923x4 interfaceC3923x4) {
            this.a = str;
            this.b = str2;
            this.c = x4;
            this.d = interfaceC3923x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b, this.c, this.d);
            }
        }
    }

    public class r implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ InterfaceC3923x4 b;

        public r(String str, InterfaceC3923x4 interfaceC3923x4) {
            this.a = str;
            this.b = interfaceC3923x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.a(this.a, this.b);
            }
        }
    }

    public class s implements Runnable {
        final /* synthetic */ X4 a;
        final /* synthetic */ Map b;
        final /* synthetic */ InterfaceC3923x4 c;

        public s(X4 x4, Map map, InterfaceC3923x4 interfaceC3923x4) {
            this.a = x4;
            this.b = map;
            this.c = interfaceC3923x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            A8.a(C3712le.j, new C3891v8().a(G5.v, this.a.f()).a(G5.w, B8.a(this.a, C3855t8.e.Interstitial)).a(G5.x, Boolean.valueOf(B8.a(this.a))).a(G5.I, Long.valueOf(M.a.b(this.a.h()))).a());
            com.ironsource.sdk.controller.l lVar = e.this.b;
            if (lVar != null) {
                lVar.b(this.a, this.b, this.c);
            }
        }
    }

    public e(Context context, C3577e4 c3577e4, Y4 y4, V7 v7, int i2, JSONObject jSONObject, String str, String str2, C3877uc c3877uc) {
        this.k = c3877uc;
        this.g = v7;
        String networkStorageDir = IronSourceStorageUtils.getNetworkStorageDir(context);
        C3667j5 c3667j5A = C3667j5.a(networkStorageDir, v7, jSONObject);
        this.h = new ch(context, c3577e4, y4, i2, c3667j5A, networkStorageDir);
        a(context, c3577e4, y4, i2, c3667j5A, networkStorageDir, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Context context, C3577e4 c3577e4, Y4 y4, int i2, C3667j5 c3667j5, String str, String str2, String str3) {
        try {
            try {
                this.d = new k(200000L, 1000L).start();
                v vVarB = b(context, c3577e4, y4, i2, c3667j5, str, str2, str3);
                this.b = vVarB;
                vVarB.b();
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                C3813r4.d().a(th2);
                d(Log.getStackTraceString(th2));
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        A8.a(C3712le.d, new C3891v8().a(G5.A, str).a());
        this.c = C3855t8.b.Loading;
        this.b = new com.ironsource.sdk.controller.n(str, this.g);
        this.e.c();
        this.e.a();
        V7 v7 = this.g;
        if (v7 != null) {
            v7.c(new l());
        }
    }

    private void e(String str) {
        IronSourceNetwork.updateInitFailed(new C3873u8(1001, str));
    }

    private l.a i() {
        return new l.a() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda1
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                this.f$0.a(aVar);
            }
        };
    }

    private l.b j() {
        return new l.b() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda2
            @Override // com.ironsource.sdk.controller.l.b
            public final void a(Sb sb) {
                this.f$0.a(sb);
            }
        };
    }

    private void l() {
        Logger.i(this.a, "handleReadyState");
        this.c = C3855t8.b.Ready;
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        n();
        this.f.c();
        this.f.a();
        com.ironsource.sdk.controller.l lVar = this.b;
        if (lVar != null) {
            lVar.f();
        }
    }

    private boolean m() {
        return C3855t8.b.Ready.equals(this.c);
    }

    private void n() {
        this.h.a(true);
        com.ironsource.sdk.controller.l lVar = this.b;
        if (lVar != null) {
            lVar.a(this.h.i());
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b() {
    }

    @Override // com.ironsource.sdk.controller.l
    @Deprecated
    public void f() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void g() {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.g();
    }

    @Override // com.ironsource.sdk.controller.l
    public C3855t8.c h() {
        com.ironsource.sdk.controller.l lVar = this.b;
        return lVar != null ? lVar.h() : C3855t8.c.None;
    }

    public com.ironsource.sdk.controller.l k() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(f.a aVar) {
        l.a aVarRemove = this.i.remove(aVar.c());
        if (aVarRemove != null) {
            aVarRemove.a(aVar);
        }
    }

    private void b(Runnable runnable) {
        a(runnable, 0L);
    }

    @Override // com.ironsource.sdk.controller.l
    public void e() {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public v b(Context context, C3577e4 c3577e4, Y4 y4, int i2, C3667j5 c3667j5, String str, String str2, String str3) throws Throwable {
        A8.a(C3712le.c, new C3891v8().a(G5.y, "thread-" + Thread.currentThread().getName()).a());
        v vVar = new v(context, y4, c3577e4, this, this.g, i2, c3667j5, str, i(), j(), str2, str3);
        C3524b6 c3524b6 = new C3524b6(context, c3667j5, new HandlerC3463a6(this.g.b()), new Ub(c3667j5.a()));
        vVar.a(new u(context));
        vVar.a(new com.ironsource.sdk.controller.o(context));
        vVar.a(new com.ironsource.sdk.controller.q(context));
        vVar.a(new com.ironsource.sdk.controller.i(context));
        vVar.a(new com.ironsource.sdk.controller.a(context));
        vVar.a(new com.ironsource.sdk.controller.j(c3667j5.a(), c3524b6));
        vVar.a(new C3848t1());
        vVar.a(new B4(context, new A4()));
        return vVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Sb sb) {
        l.b bVar = this.j.get(sb.d());
        if (bVar != null) {
            bVar.a(sb);
        }
    }

    private void a(Runnable runnable, long j2) {
        V7 v7 = this.g;
        if (v7 != null) {
            v7.d(runnable, j2);
        } else {
            Logger.e(this.a, "mThreadManager = null");
        }
    }

    private void a(final Context context, final C3577e4 c3577e4, final Y4 y4, final int i2, final C3667j5 c3667j5, final String str, final String str2, final String str3) {
        int iE = Pb.k0().h().E();
        if (iE > 0) {
            A8.a(C3712le.B, new C3891v8().a(G5.y, String.valueOf(iE)).a());
        }
        Runnable runnable = new Runnable() { // from class: com.ironsource.sdk.controller.e$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(context, c3577e4, y4, i2, c3667j5, str, str2, str3);
            }
        };
        if (Pb.k0().h().v()) {
            this.g.b(runnable, iE);
        } else {
            a(runnable, iE);
        }
    }

    @Override // com.ironsource.sdk.controller.c
    public void d() {
        Logger.i(this.a, "handleControllerReady ");
        this.k.a(h());
        if (C3855t8.c.Web.equals(h())) {
            A8.a(C3712le.e, new C3891v8().a(G5.y, String.valueOf(this.h.l())).a());
            IronSourceNetwork.updateInitSucceeded();
        }
        l();
    }

    @Override // com.ironsource.sdk.controller.c
    public void c() {
        Logger.i(this.a, "handleControllerLoaded");
        this.c = C3855t8.b.Loaded;
        this.e.c();
        this.e.a();
    }

    @Override // com.ironsource.sdk.controller.c
    public void c(String str) {
        Logger.i(this.a, "handleControllerFailed ");
        C3891v8 c3891v8 = new C3891v8();
        c3891v8.a(G5.A, str);
        c3891v8.a(G5.y, String.valueOf(this.h.l()));
        A8.a(C3712le.o, c3891v8.a());
        this.h.a(false);
        e(str);
        if (this.d != null) {
            Logger.i(this.a, "cancel timer mControllerReadyTimer");
            this.d.cancel();
        }
        d(str);
    }

    @Override // com.ironsource.sdk.controller.c
    public void b(String str) {
        A8.a(C3712le.y, new C3891v8().a(G5.y, str).a());
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        d(str);
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4) {
        this.f.a(new s(x4, map, interfaceC3923x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4) {
        this.f.a(new f(x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(JSONObject jSONObject) {
        this.f.a(new i(jSONObject));
    }

    public void a(Runnable runnable) {
        this.e.a(runnable);
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(Context context) {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.b(context);
    }

    @Override // com.ironsource.InterfaceC3580e7
    public void a(InterfaceC3464a7 interfaceC3464a7) {
        EnumC3543c7 enumC3543c7B = interfaceC3464a7.b();
        if (enumC3543c7B == EnumC3543c7.c) {
            A8.a(C3712le.A, new C3891v8().a(G5.y, interfaceC3464a7.a() + " : strategy: " + enumC3543c7B).a());
            return;
        }
        if (enumC3543c7B == EnumC3543c7.d) {
            com.ironsource.sdk.controller.n nVar = new com.ironsource.sdk.controller.n(interfaceC3464a7.a(), this.g);
            this.b = nVar;
            this.k.a(nVar.h());
            A8.a(C3712le.d, new C3891v8().a(G5.A, interfaceC3464a7.a() + " : strategy: " + enumC3543c7B).a());
            A8.a(C3712le.A, new C3891v8().a(G5.y, interfaceC3464a7.a() + " : strategy: " + enumC3543c7B).a());
        }
    }

    private void a(C3855t8.e eVar, X4 x4, String str, String str2) {
        Logger.i(this.a, "recoverWebController for product: " + eVar.toString());
        C3891v8 c3891v8 = new C3891v8();
        c3891v8.a(G5.w, eVar.toString());
        c3891v8.a(G5.v, x4.f());
        A8.a(C3712le.b, c3891v8.a());
        this.h.n();
        a();
        m mVar = new m(str, str2);
        if (Pb.k0().h().v()) {
            this.g.b(mVar);
        } else {
            b(mVar);
        }
        this.d = new n(200000L, 1000L).start();
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3941y4 interfaceC3941y4) {
        if (this.h.a(h(), this.c)) {
            a(C3855t8.e.RewardedVideo, x4, str, str2);
        }
        this.f.a(new o(str, str2, x4, interfaceC3941y4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3941y4 interfaceC3941y4) {
        this.f.a(new p(jSONObject, interfaceC3941y4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3923x4 interfaceC3923x4) {
        if (this.h.a(h(), this.c)) {
            a(C3855t8.e.Interstitial, x4, str, str2);
        }
        this.f.a(new q(str, str2, x4, interfaceC3923x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, InterfaceC3923x4 interfaceC3923x4) {
        Logger.i(this.a, "load interstitial");
        this.f.a(new r(str, interfaceC3923x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3923x4 interfaceC3923x4) {
        this.f.a(new a(jSONObject, interfaceC3923x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4) {
        this.f.a(new b(x4, map, interfaceC3923x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public boolean a(String str) {
        if (this.b == null || !m()) {
            return false;
        }
        return this.b.a(str);
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3905w4 interfaceC3905w4) {
        if (this.h.a(h(), this.c)) {
            a(C3855t8.e.Banner, x4, str, str2);
        }
        this.f.a(new c(str, str2, x4, interfaceC3905w4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3905w4 interfaceC3905w4) {
        this.f.a(new d(jSONObject, interfaceC3905w4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4) {
        this.f.a(new RunnableC1054e(x4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3905w4 interfaceC3905w4) {
        this.f.a(new g(x4, map, interfaceC3905w4));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(f.c cVar, l.a aVar) {
        this.f.a(new h(aVar, cVar));
    }

    public void a(String str, l.b bVar) {
        this.j.put(str, bVar);
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Context context) {
        com.ironsource.sdk.controller.l lVar;
        if (!m() || (lVar = this.b) == null) {
            return;
        }
        lVar.a(context);
    }

    @Override // com.ironsource.sdk.controller.l
    public void a() {
        Logger.i(this.a, "destroy controller");
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        Q3 q3 = this.f;
        if (q3 != null) {
            q3.b();
        }
        this.d = null;
        b(new j());
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Activity activity) {
        this.b.a(activity);
    }
}
