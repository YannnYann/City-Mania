package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0726 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0723 f2975;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ View f2976;

    public C0726(C0723 c0723, View view) {
        this.f2975 = c0723;
        this.f2976 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0665 c0665 = this.f2975.f2970.f2968;
        View view = this.f2976;
        C0665 c06652 = C0665.f2713;
        synchronized (c0665) {
            Iterator it = c0665.f2715.iterator();
            while (it.hasNext()) {
                ((z0) it.next()).mo972(view);
            }
        }
    }
}
