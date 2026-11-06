package ads_mobile_sdk;

import android.content.Context;
import android.webkit.WebSettings;

/* JADX INFO: loaded from: classes.dex */
public final class le2 implements Runnable {
    public final /* synthetic */ Context a;

    public le2(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            WebSettings.getDefaultUserAgent(this.a);
        } catch (Throwable unused) {
        }
    }
}
