package ads_mobile_sdk;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public final class pd2 implements Runnable {
    public final /* synthetic */ WebView a;
    public final /* synthetic */ String b;
    public final /* synthetic */ qd2 c;

    public pd2(qd2 qd2Var, WebView webView, String str) {
        this.c = qd2Var;
        this.a = webView;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        qd2 qd2Var = this.c;
        WebView webView = this.a;
        String str = this.b;
        qd2Var.getClass();
        qd2.a(webView, str);
    }
}
