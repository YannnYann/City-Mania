package ads_mobile_sdk;

import android.webkit.WebView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class wc2 extends Lambda implements Function0 {
    public final /* synthetic */ kd2 a;
    public final /* synthetic */ WebView b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wc2(kd2 kd2Var, WebView webView, boolean z) {
        super(0);
        this.a = kd2Var;
        this.b = webView;
        this.c = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new aq1(this.a.j, this.b, this.c);
    }
}
