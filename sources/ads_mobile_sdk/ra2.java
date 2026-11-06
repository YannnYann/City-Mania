package ads_mobile_sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.view.View;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class ra2 implements bt3, pc1 {
    public final Context a;
    public final ExecutorService b;
    public NetworkCapabilities c = null;
    public Network d = null;

    @Override // ads_mobile_sdk.bt3
    public final void a(HashMap map, Context context, View view) {
    }

    @Override // ads_mobile_sdk.bt3
    public final void b(HashMap map) {
    }

    @Override // ads_mobile_sdk.bt3
    public final void a(HashMap map) {
        NetworkCapabilities networkCapabilities;
        synchronized (this) {
            networkCapabilities = this.c;
        }
        map.put("ntc", networkCapabilities);
        map.put("nt", Long.valueOf(b()));
    }

    public final void c() {
        try {
            ((ConnectivityManager) Preconditions.checkNotNull(this.a.getSystemService("connectivity"))).registerDefaultNetworkCallback(new qa2(this));
        } catch (Throwable unused) {
        }
    }

    @Override // ads_mobile_sdk.pc1
    public final ListenableFuture a() {
        return Futures.submit(new Runnable() { // from class: ads_mobile_sdk.ra2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c();
            }
        }, this.b);
    }

    public ra2(Context context, ExecutorService executorService) {
        this.a = context;
        this.b = executorService;
    }

    public final long b() {
        synchronized (this) {
            try {
                NetworkCapabilities networkCapabilities = this.c;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.c.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.c.hasTransport(0)) {
                        return 0L;
                    }
                }
                return -1L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
