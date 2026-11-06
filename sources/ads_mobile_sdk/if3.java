package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.common.base.Function;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.ironsource.Ba;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class if3 implements hf3 {
    public final ny3 a;
    public final vn0 b;
    public final vv2 c;
    public final ts3 d;
    public final ExecutorService e;
    public final Executor f;
    public final boolean g;
    public final AtomicReference h = new AtomicReference("2.975916745.-1");

    public static /* synthetic */ iv2 a(Throwable th) {
        return null;
    }

    public static /* synthetic */ Void b(Boolean bool) {
        return null;
    }

    public final String c(Context context, String str, View view, Activity activity) {
        String strA;
        dt1 dt1VarA = this.a.a();
        if (dt1VarA == null) {
            this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_HANDLE);
            return "";
        }
        synchronized (dt1VarA) {
            try {
                tn0 tn0Var = (tn0) dt1VarA.b;
                ts3 ts3Var = tn0Var.c;
                qr3 qr3Var = new qr3(lq0.EVENT_ID_DG_ENGINE_COMPOSE_STATE, ts3Var.b, ts3Var.a);
                try {
                    qr3Var.b();
                    hl3 hl3Var = tn0Var.b;
                    hl3Var.getClass();
                    HashMap map = new HashMap();
                    Iterator it = hl3Var.a.iterator();
                    while (it.hasNext()) {
                        ((bt3) it.next()).b(map);
                    }
                    tn0Var.a(map);
                    qr3Var.a();
                    map.put("f", "c");
                    map.put("ctx", context);
                    map.put("cs", str);
                    map.put(Ba.b, null);
                    map.put("view", view);
                    map.put("act", activity);
                    byte[] bArrA = dt1VarA.a(map);
                    if (dt1VarA.d) {
                        map.clear();
                    }
                    strA = dt1.a(bArrA);
                } catch (Throwable th) {
                    qr3Var.a();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (strA != null) {
            return strA;
        }
        this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_CLICK_SIGNALS);
        return "";
    }

    public final String d(Context context, String str, View view, Activity activity) {
        String strA;
        dt1 dt1VarA = this.a.a();
        if (dt1VarA == null) {
            this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_HANDLE);
            return "";
        }
        synchronized (dt1VarA) {
            try {
                tn0 tn0Var = (tn0) dt1VarA.b;
                ts3 ts3Var = tn0Var.c;
                qr3 qr3Var = new qr3(lq0.EVENT_ID_DG_ENGINE_COMPOSE_STATE, ts3Var.b, ts3Var.a);
                try {
                    qr3Var.b();
                    hl3 hl3Var = tn0Var.b;
                    Context context2 = tn0Var.a;
                    hl3Var.getClass();
                    HashMap map = new HashMap();
                    Iterator it = hl3Var.a.iterator();
                    while (it.hasNext()) {
                        ((bt3) it.next()).a(map, context2, null);
                    }
                    tn0Var.a(map);
                    qr3Var.a();
                    map.put("f", "v");
                    map.put("ctx", context);
                    map.put(Ba.b, null);
                    map.put("view", view);
                    map.put("act", activity);
                    byte[] bArrA = dt1VarA.a(map);
                    if (dt1VarA.d) {
                        map.clear();
                    }
                    strA = dt1.a(bArrA);
                } catch (Throwable th) {
                    qr3Var.a();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (strA != null) {
            return strA;
        }
        this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_VIEW_SIGNALS);
        return "";
    }

    @Override // ads_mobile_sdk.hf3
    public final kb c() {
        return kb.ADSHIELD_VERSION_2;
    }

    public if3(ny3 ny3Var, vn0 vn0Var, vv2 vv2Var, ts3 ts3Var, ExecutorService executorService, na naVar) {
        this.a = ny3Var;
        this.b = vn0Var;
        this.c = vv2Var;
        this.d = ts3Var;
        this.e = executorService;
        boolean zC = naVar.C();
        this.g = zC;
        this.f = zC ? MoreExecutors.newSequentialExecutor(executorService) : executorService;
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture b(final Context context, final String str, final View view, final Activity activity) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.c(context, str, view, activity);
            }
        }, this.f);
    }

    @Override // ads_mobile_sdk.hf3
    public final void a(InputEvent inputEvent) {
        final dt1 dt1VarA = this.a.a();
        if (dt1VarA == null) {
            this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_HANDLE);
            return;
        }
        if (inputEvent instanceof MotionEvent) {
            if (this.g) {
                final MotionEvent motionEventObtain = MotionEvent.obtain((MotionEvent) inputEvent);
                this.f.execute(new Runnable() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(dt1VarA, motionEventObtain);
                    }
                });
                return;
            }
            try {
                dt1VarA.a((MotionEvent) inputEvent);
            } catch (ly3 e) {
                ts3 ts3Var = this.d;
                lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
                ((st1) ts3Var.a).a(15004, -1L, e, null);
            }
        }
    }

    @Override // ads_mobile_sdk.hf3
    public final String b() {
        return (String) this.h.get();
    }

    public final String b(Context context) {
        String strA;
        dt1 dt1VarA = this.a.a();
        if (dt1VarA == null) {
            this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_HANDLE);
            return "";
        }
        synchronized (dt1VarA) {
            try {
                tn0 tn0Var = (tn0) dt1VarA.b;
                ts3 ts3Var = tn0Var.c;
                qr3 qr3Var = new qr3(lq0.EVENT_ID_DG_ENGINE_COMPOSE_STATE, ts3Var.b, ts3Var.a);
                try {
                    qr3Var.b();
                    hl3 hl3Var = tn0Var.b;
                    hl3Var.getClass();
                    HashMap map = new HashMap();
                    Iterator it = hl3Var.a.iterator();
                    while (it.hasNext()) {
                        ((bt3) it.next()).a(map);
                    }
                    tn0Var.a(map);
                    qr3Var.a();
                    map.put("f", "q");
                    map.put("ctx", context);
                    map.put(Ba.b, null);
                    byte[] bArrA = dt1VarA.a(map);
                    if (dt1VarA.d) {
                        map.clear();
                    }
                    strA = dt1.a(bArrA);
                } catch (Throwable th) {
                    qr3Var.a();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (strA != null) {
            return strA;
        }
        this.d.b(lq0.EVENT_ID_DG_ENGINE_NULL_QUERY_SIGNALS);
        return "";
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture a(final Context context) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b(context);
            }
        }, this.e);
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture a(final Context context, final String str, final View view, final Activity activity) {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.d(context, str, view, activity);
            }
        }, this.e);
    }

    public final void b(uu2 uu2Var) {
        ny3 ny3Var = this.a;
        ny3Var.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            ny3Var.a(ny3Var.a(uu2Var));
            ((st1) ((y9) ny3Var.c).a).a(IronSourceError.ERROR_CAPPING_VALIDATION_FAILED, System.currentTimeMillis() - jCurrentTimeMillis, null, null);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setResult(Boolean.TRUE);
            taskCompletionSource.getTask();
            this.h.set("2.975916745." + uu2Var.a.y());
        } catch (ly3 e) {
            ny3Var.c.a(e.a, System.currentTimeMillis() - jCurrentTimeMillis, e);
            throw new kf3(2);
        } catch (Exception e2) {
            ny3Var.c.a(4010, System.currentTimeMillis() - jCurrentTimeMillis, e2);
            throw new kf3(2);
        }
    }

    @Override // ads_mobile_sdk.hf3
    public final ListenableFuture a() {
        return FluentFuture.from(((bm3) this.b).a()).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda4
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return if3.a((Throwable) obj);
            }
        }, MoreExecutors.directExecutor()).transform(new Function() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(this.f$0.a((iv2) obj));
            }
        }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda6
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a((Boolean) obj);
            }
        }, MoreExecutors.directExecutor()).transform(new Function() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda7
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(this.f$0.a((uu2) obj));
            }
        }, MoreExecutors.directExecutor()).transform(new Function() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda8
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return if3.b((Boolean) obj);
            }
        }, MoreExecutors.directExecutor());
    }

    public final boolean a(final uu2 uu2Var) {
        if (uu2Var != null) {
            File file = uu2Var.b;
            if (Build.VERSION.SDK_INT >= 34) {
                file.setReadOnly();
            }
            this.d.a(lq0.EVENT_ID_DG_ENGINE_INIT_VM_LOAD, new Runnable() { // from class: ads_mobile_sdk.if3$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(uu2Var);
                }
            });
            return true;
        }
        throw new kf3(3);
    }

    public final void a(ua uaVar, MotionEvent motionEvent) {
        try {
            try {
                ((dt1) uaVar).a(motionEvent);
            } catch (ly3 e) {
                ts3 ts3Var = this.d;
                lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
                ((st1) ts3Var.a).a(15004, -1L, e, null);
            }
            motionEvent.recycle();
        } catch (Throwable th) {
            motionEvent.recycle();
            throw th;
        }
    }

    public final /* synthetic */ ListenableFuture a(Boolean bool) {
        return ((bm3) this.b).e();
    }

    public final boolean a(iv2 iv2Var) {
        if (this.c.b(iv2Var) && iv2Var != null) {
            return true;
        }
        this.d.b(lq0.EVENT_ID_DG_ENGINE_INIT_SKIP_INVALID_METADATA);
        throw new kf3(1);
    }
}
