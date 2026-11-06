package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import com.google.common.base.Function;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class mf3 implements hf3 {
    public final rj3 a;
    public final cw2 b;
    public final vv2 c;
    public final lh2 d;
    public final ExecutorService e;
    public final Executor f;
    public final hl3 g;
    public final ts3 h;
    public final Object i = new Object();
    public final String j;
    public final long k;
    public final long l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public lf3 p;

    public static /* synthetic */ iv2 a(Throwable th) {
        return null;
    }

    public mf3(rj3 rj3Var, dw2 dw2Var, vv2 vv2Var, lh2 lh2Var, hl3 hl3Var, ts3 ts3Var, na naVar, ExecutorService executorService) {
        this.a = rj3Var;
        this.b = dw2Var;
        this.c = vv2Var;
        this.d = lh2Var;
        this.e = executorService;
        this.g = hl3Var;
        this.h = ts3Var;
        this.j = naVar.M();
        this.k = naVar.O();
        this.l = naVar.K();
        this.m = naVar.w();
        this.n = naVar.J();
        boolean zC = naVar.C();
        this.o = zC;
        this.f = zC ? MoreExecutors.newSequentialExecutor(executorService) : executorService;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String e(final Context context, final String str, final View view, final Activity activity) {
        final HashMap map = new HashMap();
        this.h.a(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_STATE, new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(map, context, view, activity, str);
            }
        });
        String strA = a(map);
        map.clear();
        return strA;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final String f(final Context context, final String str, final View view, final Activity activity) {
        final HashMap map = new HashMap();
        this.h.a(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_STATE, new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(map, context, view, activity, str);
            }
        });
        String strA = a(map);
        map.clear();
        return strA;
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture b(final Context context, final String str, final View view, final Activity activity) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.e(context, str, view, activity);
            }
        }, this.f);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String c(final Context context) {
        final HashMap map = new HashMap();
        this.h.a(lq0.EVENT_ID_ORCAS_ENGINE_COMPOSE_STATE, new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(map, context);
            }
        });
        String strA = a(map);
        map.clear();
        return strA;
    }

    public final /* synthetic */ void c(InputEvent inputEvent) {
        try {
            b(inputEvent);
        } finally {
            if (inputEvent instanceof MotionEvent) {
                ((MotionEvent) inputEvent).recycle();
            }
        }
    }

    public final ListenableFuture d() {
        return Futures.transform(this.d.d(), new Function() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda10
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((byte[]) obj);
            }
        }, MoreExecutors.directExecutor());
    }

    @Override // ads_mobile_sdk.hf3
    public final String b() {
        synchronized (this.i) {
            try {
                lf3 lf3Var = this.p;
                if (lf3Var != null) {
                    return lf3Var.d;
                }
                return "3.975916745.-1";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0115 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.util.Map r13) {
        /*
            Method dump skipped, instruction units count: 397
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mf3.a(java.util.Map):void");
    }

    @Override // ads_mobile_sdk.hf3
    public final kb c() {
        return kb.ADSHIELD_VERSION_3;
    }

    public final void b(InputEvent inputEvent) {
        try {
            synchronized (this.i) {
                try {
                    lf3 lf3Var = this.p;
                    if (lf3Var != null) {
                        HashMap map = new HashMap();
                        map.put("evt", inputEvent);
                        lf3Var.b(map);
                    } else {
                        this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_REPORT_TOUCH_EVENT_NULL_HOLDER);
                    }
                } finally {
                }
            }
        } catch (lp1 | my3 e) {
            ts3 ts3Var = this.h;
            lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
            ((st1) ts3Var.a).a(20103, -1L, e, null);
        }
    }

    @Override // ads_mobile_sdk.hf3
    public final void a(final InputEvent inputEvent) {
        if (this.o) {
            if (inputEvent instanceof MotionEvent) {
                inputEvent = MotionEvent.obtain((MotionEvent) inputEvent);
            }
            this.f.execute(new Runnable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(inputEvent);
                }
            });
            return;
        }
        b(inputEvent);
    }

    public final String a(HashMap map) {
        ts3 ts3Var = this.h;
        try {
            new qr3(lq0.EVENT_ID_ORCAS_ENGINE_COLLECT_SIGNAL_VM_INVOCATION, ts3Var.b, ts3Var.a).b();
            synchronized (this.i) {
                lf3 lf3Var = this.p;
                if (lf3Var == null) {
                    this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_COLLECT_SIGNAL_NULL_HOLDER);
                    return "";
                }
                return lf3Var.a(map);
            }
        } finally {
        }
    }

    public final void b(Map map, Context context, View view, Activity activity, String str) {
        hl3 hl3Var = this.g;
        hl3Var.getClass();
        HashMap map2 = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).a(map2, context, view);
        }
        map.putAll(map2);
        a(map);
        map.put("f", "v");
        map.put("ctx", context);
        map.put("view", view);
        map.put("act", activity);
        map.put("bds", str);
    }

    public final ListenableFuture b(Throwable th) {
        if (this.m) {
            return d();
        }
        return Futures.immediateFailedFuture(th);
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture a(final Context context) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.c(context);
            }
        }, this.e);
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture a(final Context context, final String str, final View view, final Activity activity) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.f(context, str, view, activity);
            }
        }, this.e);
    }

    public final /* synthetic */ Void b(byte[] bArr) {
        a((iy3) this.b.get(), bArr, false);
        return null;
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture a() {
        if (this.n) {
            return d();
        }
        return FluentFuture.from(this.d.a()).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda7
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return mf3.a((Throwable) obj);
            }
        }, this.e).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda8
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a((iv2) obj);
            }
        }, this.e).catchingAsync(Throwable.class, new AsyncFunction() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda9
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.b((Throwable) obj);
            }
        }, MoreExecutors.directExecutor());
    }

    public final void a(iy3 iy3Var, byte[] bArr, boolean z) {
        ts3 ts3Var = this.h;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_ORCAS_ENGINE_INIT_VM_LOAD, ts3Var.b, ts3Var.a);
        try {
            try {
                qr3Var.b();
                synchronized (this.i) {
                    this.p = lf3.a(iy3Var, bArr, z);
                }
                qr3Var.a();
            } catch (lp1 e) {
                e = e;
                qr3Var.a(e);
                throw new kf3(e);
            } catch (my3 e2) {
                e = e2;
                qr3Var.a(e);
                throw new kf3(e);
            } catch (Throwable th) {
                qr3Var.a(th);
                throw th;
            }
        } catch (Throwable th2) {
            qr3Var.a();
            throw th2;
        }
    }

    public final void a(Map map, Context context, View view, Activity activity, String str) {
        hl3 hl3Var = this.g;
        hl3Var.getClass();
        HashMap map2 = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).b(map2);
        }
        map.putAll(map2);
        a(map);
        map.put("f", "c");
        map.put("ctx", context);
        map.put("view", view);
        map.put("act", activity);
        map.put("bds", str);
    }

    public final void a(Map map, Context context) {
        hl3 hl3Var = this.g;
        hl3Var.getClass();
        HashMap map2 = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).a(map2);
        }
        map.putAll(map2);
        a(map);
        map.put("f", "q");
        map.put("ctx", context);
    }

    public final /* synthetic */ Void a(byte[] bArr) {
        a((iy3) this.b.get(), bArr, true);
        return null;
    }

    public final ListenableFuture a(iv2 iv2Var) {
        if (iv2Var != null) {
            rj3 rj3Var = this.a;
            yh1.c cVarV = iv2Var.v();
            st1 st1Var = (st1) rj3Var;
            synchronized (st1Var.n) {
                st1Var.q.a(cVarV);
            }
        }
        if (this.c.b(iv2Var)) {
            return Futures.transform(this.d.b(), new Function() { // from class: ads_mobile_sdk.mf3$$ExternalSyntheticLambda11
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return this.f$0.b((byte[]) obj);
                }
            }, MoreExecutors.directExecutor());
        }
        this.h.b(lq0.EVENT_ID_ORCAS_ENGINE_INIT_SKIP_INVALID_METADATA);
        throw new kf3(1);
    }
}
