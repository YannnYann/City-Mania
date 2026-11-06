package ads_mobile_sdk;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* JADX INFO: loaded from: classes.dex */
public final class qa2 extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ ra2 a;

    public qa2(ra2 ra2Var) {
        this.a = ra2Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (this.a) {
            ra2 ra2Var = this.a;
            ra2Var.d = network;
            ra2Var.c = networkCapabilities;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (this.a) {
            try {
                if (network.equals(this.a.d)) {
                    ra2 ra2Var = this.a;
                    ra2Var.d = null;
                    ra2Var.c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
