package ads_mobile_sdk;

import androidx.webkit.WebViewCompat;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public final class yp1 extends TimerTask {
    public final /* synthetic */ zp1 a;
    public final /* synthetic */ Timer b;
    public final /* synthetic */ aq1 c;

    public yp1(aq1 aq1Var, zp1 zp1Var, Timer timer) {
        this.c = aq1Var;
        this.a = zp1Var;
        this.b = timer;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        g04 g04Var = this.c.g;
        WebViewCompat.removeWebMessageListener(g04Var.a, g04Var.b.a());
        this.a.a(true);
        this.b.cancel();
    }
}
