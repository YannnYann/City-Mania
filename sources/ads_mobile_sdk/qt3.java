package ads_mobile_sdk;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class qt3 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler = rt3.i;
        if (handler != null) {
            handler.post(rt3.j);
            rt3.i.postDelayed(rt3.k, 200L);
        }
    }
}
