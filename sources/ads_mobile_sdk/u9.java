package ads_mobile_sdk;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class u9 {
    public ty3 a = new ty3(null);
    public t9 b;
    public s9 c;

    public final void b(View view) {
        a();
        if (view == null) {
            return;
        }
        this.a = new ty3(view);
        s9 s9Var = new s9(this);
        this.c = s9Var;
        view.addOnAttachStateChangeListener(s9Var);
        if (view.isAttachedToWindow()) {
            a(view);
        }
    }

    public final void a(View view) {
        if (this.b == null) {
            this.b = new t9();
            view.getViewTreeObserver().addOnWindowFocusChangeListener(this.b);
            if (view.hasWindowFocus()) {
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
    }

    public final void c(View view) {
        if (this.b != null) {
            if (view.getViewTreeObserver().isAlive()) {
                view.getViewTreeObserver().removeOnWindowFocusChangeListener(this.b);
            }
            this.b = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        View view = (View) this.a.get();
        if (view != null) {
            s9 s9Var = this.c;
            if (s9Var != null) {
                view.removeOnAttachStateChangeListener(s9Var);
                this.c = null;
            }
            c(view);
        }
        this.a.clear();
    }
}
