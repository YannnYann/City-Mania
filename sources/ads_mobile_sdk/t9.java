package ads_mobile_sdk;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public final class t9 implements ViewTreeObserver.OnWindowFocusChangeListener {
    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        cf2.a().getClass();
        l9 l9Var = l9.d;
        boolean zA = l9Var.a();
        if (l9Var.b != zA) {
            l9Var.b = zA;
            if (l9Var.a) {
                l9Var.a(zA);
                rn rnVar = l9Var.c;
                if (rnVar != null) {
                    rnVar.a(zA);
                }
            }
        }
    }
}
