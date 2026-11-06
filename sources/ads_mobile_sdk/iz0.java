package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.view.View;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.SettableFuture;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class iz0 implements bt3, pc1 {
    public final Context a;
    public final ts3 b;
    public final ListeningExecutorService c;
    public final na d;
    public final AtomicBoolean e;
    public final hz0 f;
    public final ja3 g;
    public ListenableFuture h;

    @Override // ads_mobile_sdk.bt3
    public final void a(HashMap map) {
        map.put("gs", this.h);
    }

    @Override // ads_mobile_sdk.bt3
    public final void b(HashMap map) {
        map.put("gs", this.h);
    }

    @Override // ads_mobile_sdk.bt3
    public final void a(HashMap map, Context context, View view) {
        map.put("gs", this.h);
    }

    public final void a(final SettableFuture settableFuture, final int i, final long j) {
        Runnable runnable = new Runnable() { // from class: ads_mobile_sdk.iz0$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(settableFuture, i, j);
            }
        };
        if (j > 0) {
            this.g.a(runnable, j);
        } else {
            runnable.run();
        }
    }

    public iz0(Context context, ts3 ts3Var, ListeningExecutorService listeningExecutorService, na naVar, hz0 hz0Var, ja3 ja3Var) {
        this.e = new AtomicBoolean(false);
        this.h = Futures.immediateFuture(null);
        this.a = context;
        this.b = ts3Var;
        this.c = listeningExecutorService;
        this.d = naVar;
        this.f = hz0Var;
        this.g = ja3Var;
    }

    public final /* synthetic */ void c(final SettableFuture settableFuture, final int i, final long j) {
        this.c.execute(new Runnable() { // from class: ads_mobile_sdk.iz0$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(settableFuture, i, j);
            }
        });
    }

    public final void b(SettableFuture settableFuture, int i, long j) {
        try {
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
            hz0 hz0Var = this.f;
            Context context = this.a;
            fh fhVarA = hz0Var.a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
            if (fhVarA != null && (!fhVarA.B() || fhVarA.x() != 32768)) {
                settableFuture.set(fhVarA);
                return;
            }
        } catch (Throwable unused) {
        }
        if (i < 3) {
            a(settableFuture, i + 1, i == 1 ? 100L : j * 2);
        } else {
            settableFuture.set(null);
        }
    }

    @Override // ads_mobile_sdk.pc1
    public final ListenableFuture a() {
        if (this.e.getAndSet(true)) {
            return Futures.immediateVoidFuture();
        }
        if (!this.d.D()) {
            return Futures.immediateVoidFuture();
        }
        final SettableFuture settableFutureCreate = SettableFuture.create();
        this.h = settableFutureCreate;
        this.b.a(lq0.EVENT_ID_INIT_GASS_TRACKER, new Runnable() { // from class: ads_mobile_sdk.iz0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(settableFutureCreate);
            }
        });
        return Futures.immediateVoidFuture();
    }

    public iz0(Context context, ts3 ts3Var, ListeningExecutorService listeningExecutorService, na naVar, ja3 ja3Var) {
        this(context, ts3Var, listeningExecutorService, naVar, new hz0() { // from class: ads_mobile_sdk.iz0$$ExternalSyntheticLambda0
            @Override // ads_mobile_sdk.hz0
            public final fh a(Context context2, String str, String str2) {
                return gz0.a(context2, str, str2);
            }
        }, ja3Var);
    }

    public final /* synthetic */ void a(SettableFuture settableFuture) {
        a(settableFuture, 1, 0L);
    }
}
