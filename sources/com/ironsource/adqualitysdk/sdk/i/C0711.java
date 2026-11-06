package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ḟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0711 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0665 f2900;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ z0 f2901;

    public C0711(C0665 c0665, z0 z0Var) {
        this.f2900 = c0665;
        this.f2901 = z0Var;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        Iterator it = this.f2900.f2716.iterator();
        while (it.hasNext()) {
            View view = (View) ((WeakReference) it.next()).get();
            if (view != null) {
                AbstractC0272.m1210(new C0716(this, view));
            }
        }
    }
}
