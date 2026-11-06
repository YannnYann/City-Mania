package ads_mobile_sdk;

import android.view.InputEvent;

/* JADX INFO: loaded from: classes.dex */
public final class fa {
    public static final Object b = new Object();
    public static fa c;
    public final ia a;

    public fa(id0 id0Var) {
        this.a = id0Var.a();
    }

    public final void a(InputEvent inputEvent) {
        wj3 wj3Var = this.a.b;
        qj3 qj3Var = (qj3) wj3Var.f.get();
        if (qj3Var == null) {
            wj3Var.e.b(lq0.EVENT_ID_EARLY_INPUT_EVENT);
        } else {
            qj3Var.a(inputEvent);
        }
    }
}
