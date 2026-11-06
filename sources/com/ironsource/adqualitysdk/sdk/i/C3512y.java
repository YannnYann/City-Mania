package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3512y extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ B f396;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ View f397;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f398;

    public C3512y(B b, Activity activity, View view) {
        this.f396 = b;
        this.f398 = activity;
        this.f397 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f396.f80.clear();
        B b = this.f396;
        Activity activity = this.f398;
        View view = this.f397;
        Class cls = b.f82;
        A a = b.f81;
        boolean z = a.f68;
        List list = a.f64;
        List list2 = a.f62;
        ArrayList arrayList = b.f80;
        if (view != null) {
            C.m977(view, cls, null, false, z, list, list2, arrayList);
        } else {
            C.m980(activity, cls, -1, null, false, z, list, list2, arrayList);
        }
        View view2 = this.f397;
        B b2 = this.f396;
        Class cls2 = b2.f82;
        A a2 = b2.f81;
        if (C.m982(view2, cls2, null, a2.f64, a2.f62)) {
            this.f396.f80.add(this.f397);
        }
        ArrayList arrayList2 = new ArrayList(this.f396.f80);
        B b3 = this.f396;
        if (b3.f81.f65) {
            AbstractC0272.m1212(new C3511x(this, arrayList2));
        } else {
            B.m964(b3, arrayList2);
        }
    }
}
