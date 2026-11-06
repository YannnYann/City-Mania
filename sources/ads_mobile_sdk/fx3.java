package ads_mobile_sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class fx3 extends BroadcastReceiver implements bt3, pc1 {
    public final Context a;
    public final ExecutorService b;
    public boolean c = true;

    @Override // ads_mobile_sdk.bt3
    public final void a(HashMap map) {
        boolean z;
        synchronized (this) {
            z = this.c;
        }
        map.put("up", Boolean.valueOf(z));
    }

    @Override // ads_mobile_sdk.bt3
    public final void b(HashMap map) {
        boolean z;
        synchronized (this) {
            z = this.c;
        }
        map.put("up", Boolean.valueOf(z));
    }

    public final synchronized void c() {
        this.c = false;
    }

    @Override // ads_mobile_sdk.bt3
    public final void a(HashMap map, Context context, View view) {
        boolean z;
        synchronized (this) {
            z = this.c;
        }
        map.put("up", Boolean.valueOf(z));
    }

    public fx3(Context context, ExecutorService executorService) {
        this.a = context;
        this.b = executorService;
    }

    public final /* synthetic */ Void b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.a.registerReceiver(this, intentFilter);
        return null;
    }

    @Override // ads_mobile_sdk.pc1
    public final ListenableFuture a() {
        return Futures.submit(new Callable() { // from class: ads_mobile_sdk.fx3$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b();
            }
        }, this.b);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            synchronized (this) {
                this.c = true;
            }
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            c();
        }
    }
}
