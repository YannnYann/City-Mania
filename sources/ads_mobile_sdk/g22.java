package ads_mobile_sdk;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public final class g22 implements Runnable {
    public final WebView a;

    public g22(h22 h22Var) {
        this.a = h22Var.e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.destroy();
    }
}
