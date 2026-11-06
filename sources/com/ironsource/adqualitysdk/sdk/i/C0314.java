package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ز, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0314 implements InterfaceC0279 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1841;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1842;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1843;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f1844;

    public C0314(ArrayList arrayList, C0946 c0946, C0915 c0915, C0048 c0048) {
        this.f1844 = arrayList;
        this.f1843 = c0946;
        this.f1842 = c0915;
        this.f1841 = c0048;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0279
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1216() {
        this.f1844.add(0, this);
        C0946 c0946 = this.f1843;
        C0915 c0915 = this.f1842;
        c0946.m1558(c0915, c0915.f3495, this.f1841, this.f1844);
        this.f1844.remove(0);
    }
}
