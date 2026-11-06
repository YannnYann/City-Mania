package ads_mobile_sdk;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class s9 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ u9 a;

    public s9(u9 u9Var) {
        this.a = u9Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.a(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.a.c(view);
    }
}
