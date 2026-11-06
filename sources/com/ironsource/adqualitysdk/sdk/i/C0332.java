package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0332 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f1919;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ LinkedHashMap f1920;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f1921;

    public C0332(C0324 c0324, Context context, LinkedHashMap linkedHashMap) {
        this.f1919 = c0324;
        this.f1921 = context;
        this.f1920 = linkedHashMap;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1919.f1899 = AbstractC0885.m1491().mo1506();
        this.f1919.m1238(this.f1921, this.f1920, new C0342(this));
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        C0339 c0339 = new C0339(this);
        C0893 c0893 = (C0893) abstractC0885M1491;
        Handler handler = c0893.f3421;
        if (handler != null) {
            handler.post(new C0902(c0893, c0339));
        }
    }
}
