package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0372 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f1997;

    public C0372(C0370 c0370) {
        this.f1997 = c0370;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0370 c0370 = this.f1997;
        C0324 c0324 = c0370.f1988;
        Context context = c0370.f1992;
        ArrayList arrayList = c0370.f1991;
        ArrayList arrayList2 = c0370.f1990;
        C0381 c0381 = c0370.f1989;
        String str = C0324.f1893;
        c0324.getClass();
        if (arrayList.isEmpty()) {
            return;
        }
        AbstractC0248 abstractC0248 = (AbstractC0248) arrayList.remove(0);
        String str2 = (String) arrayList2.remove(0);
        AbstractRunnableC0689 c03702 = c0381;
        if (!arrayList.isEmpty()) {
            c03702 = new C0370(c0324, context, arrayList, arrayList2, c0381);
        }
        AbstractC0272.m1210(new C0355(c0324, str2, context, abstractC0248, c03702));
    }
}
