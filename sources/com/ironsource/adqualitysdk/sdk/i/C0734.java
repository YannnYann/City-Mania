package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0734 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0723 f3019;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ View f3020;

    public C0734(C0723 c0723, View view) {
        this.f3019 = c0723;
        this.f3020 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0665 c0665 = this.f3019.f2970.f2968;
        View view = this.f3020;
        C0665 c06652 = C0665.f2713;
        synchronized (c0665) {
            Iterator it = c0665.f2715.iterator();
            while (it.hasNext()) {
                ((z0) it.next()).mo975(view);
            }
        }
    }
}
