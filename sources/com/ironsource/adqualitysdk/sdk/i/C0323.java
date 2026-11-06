package com.ironsource.adqualitysdk.sdk.i;

import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0323 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1888;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1889;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1890;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ List f1891;

    public C0323(List list, C0946 c0946, C0915 c0915, C0048 c0048) {
        this.f1891 = list;
        this.f1890 = c0946;
        this.f1889 = c0915;
        this.f1888 = c0048;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1891.add(0, this);
        C0946 c0946 = this.f1890;
        C0915 c0915 = this.f1889;
        C0048 c0048 = this.f1888;
        List list = this.f1891;
        c0946.getClass();
        c0946.m1558(c0915, c0915.f3495, c0048, list);
        this.f1891.remove(0);
    }
}
