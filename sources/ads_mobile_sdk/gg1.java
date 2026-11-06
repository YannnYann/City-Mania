package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class gg1 implements fg1 {
    public final hg1 a;

    public gg1(hg1 hg1Var) {
        this.a = hg1Var;
    }

    public final eg1 a(if1 if1Var, r31 r31Var, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        hg1 hg1Var = this.a;
        return new eg1(if1Var, r31Var, onAdInspectorClosedListener, (f0) hg1Var.a.get(), (Context) hg1Var.b.get(), (CoroutineScope) hg1Var.c.get(), (CoroutineContext) hg1Var.d.get(), (CoroutineScope) hg1Var.e.get(), (CoroutineContext) hg1Var.f.get(), (ex0) hg1Var.g.get(), (ur3) hg1Var.h.get(), (String) hg1Var.i.get(), (o21) hg1Var.j.get(), (lo) hg1Var.k.get());
    }
}
