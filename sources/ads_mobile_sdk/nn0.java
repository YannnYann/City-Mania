package ads_mobile_sdk;

import android.webkit.WebView;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class nn0 implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ on0 b;

    public nn0(on0 on0Var, float f) {
        this.b = on0Var;
        this.a = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        mn0 mn0Var = this.b.a.e;
        float f = this.a;
        cf2 cf2Var = (cf2) mn0Var;
        cf2Var.a = f;
        if (cf2Var.e == null) {
            cf2Var.e = q9.c;
        }
        Iterator it = Collections.unmodifiableCollection(cf2Var.e.b).iterator();
        while (it.hasNext()) {
            r9 r9Var = ((p9) it.next()).d;
            qd2.a.a((WebView) r9Var.b.get(), "setDeviceVolume", Float.valueOf(f), r9Var.a);
        }
    }
}
