package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class kr0 implements qj3 {
    public final ExecutorService a;
    public final ks1 b;
    public final ks1 c;
    public final hl3 d;
    public final ks1 e;
    public final cw2 f;
    public final na g;

    public kr0(ExecutorService executorService, ks1 ks1Var, ks1 ks1Var2, hl3 hl3Var, ks1 ks1Var3, dw2 dw2Var, na naVar) {
        this.a = executorService;
        this.b = ks1Var;
        this.c = ks1Var2;
        this.d = hl3Var;
        this.e = ks1Var3;
        this.f = dw2Var;
        this.g = naVar;
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0048: INVOKE (r3 I:ads_mobile_sdk.qr3) VIRTUAL call: ads_mobile_sdk.qr3.a():void A[Catch: all -> 0x0046, MD:():void (m), TRY_ENTER] (LINE:110), block:B:22:0x0048 */
    public final Void c() {
        qr3 qr3VarA;
        ((a) this.c.get()).a();
        zw1 zw1Var = (zw1) ((yw1) this.b.get());
        synchronized (zw1Var) {
            try {
                ts3 ts3Var = zw1Var.e;
                qr3 qr3Var = new qr3(lq0.EVENT_ID_FALLBACK_INIT_METHOD_PROVIDER, ts3Var.b, ts3Var.a);
                try {
                    qr3Var.b();
                    zw1Var.a();
                    zw1Var.c();
                    zw1Var.d();
                    zw1Var.j = true;
                } catch (mj3 e) {
                    qr3Var.a(e);
                } catch (Throwable th) {
                    qr3Var.a(th);
                    throw th;
                }
                qr3Var.a();
            } catch (Throwable th2) {
                qr3VarA.a();
                throw th2;
            }
        }
        return null;
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture b(Context context, String str, View view, Activity activity) {
        hl3 hl3Var = this.d;
        hl3Var.getClass();
        HashMap map = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).b(map);
        }
        ((bd1) this.e.get()).a(map);
        sd0 sd0Var = (sd0) ((nh3) this.f.get());
        sd0Var.getClass();
        context.getClass();
        sd0Var.c = context;
        sd0Var.d = view;
        sd0Var.e = activity;
        sd0Var.f = str;
        sd0Var.g = map;
        sd0Var.i = fl3.CLICK;
        xf xfVarD = fh.D();
        xfVarD.getClass();
        sd0Var.h = xfVarD;
        return ((lh3) sd0Var.a().B.get()).b();
    }

    @Override // ads_mobile_sdk.qj3
    public final void a(InputEvent inputEvent) {
        ((bd1) this.e.get()).a(inputEvent);
    }

    @Override // ads_mobile_sdk.qj3
    public final String b() {
        return "1.975916745";
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture a(Context context) {
        sd0 sd0Var = (sd0) ((nh3) this.f.get());
        sd0Var.getClass();
        context.getClass();
        sd0Var.c = context;
        hl3 hl3Var = this.d;
        hl3Var.getClass();
        HashMap map = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).a(map);
        }
        sd0Var.g = map;
        xf xfVarD = fh.D();
        xfVarD.getClass();
        sd0Var.h = xfVarD;
        sd0Var.i = fl3.QUERY;
        return ((lh3) sd0Var.a().B.get()).b();
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture a(Context context, String str, View view, Activity activity) {
        sd0 sd0Var = (sd0) ((nh3) this.f.get());
        sd0Var.getClass();
        context.getClass();
        sd0Var.c = context;
        sd0Var.d = view;
        sd0Var.e = activity;
        if (!this.g.H()) {
            str = "";
        }
        sd0Var.f = str;
        hl3 hl3Var = this.d;
        hl3Var.getClass();
        HashMap map = new HashMap();
        Iterator it = hl3Var.a.iterator();
        while (it.hasNext()) {
            ((bt3) it.next()).a(map, context, view);
        }
        sd0Var.g = map;
        xf xfVarD = fh.D();
        xfVarD.getClass();
        sd0Var.h = xfVarD;
        sd0Var.i = fl3.VIEW;
        return ((lh3) sd0Var.a().B.get()).b();
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture a() {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.kr0$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.c();
            }
        }, this.a);
    }
}
