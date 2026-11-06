package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0355 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f1960;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ AbstractRunnableC0689 f1961;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0248 f1962;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f1963;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1964;

    public C0355(C0324 c0324, String str, Context context, AbstractC0248 abstractC0248, AbstractRunnableC0689 abstractRunnableC0689) {
        this.f1960 = c0324;
        this.f1964 = str;
        this.f1963 = context;
        this.f1962 = abstractC0248;
        this.f1961 = abstractRunnableC0689;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (this.f1960.f1907.get()) {
            return;
        }
        String lowerCase = this.f1964.toLowerCase();
        C0235 c0235 = this.f1960.f1898;
        if (c0235 == null) {
            return;
        }
        c0235.f1540.put(lowerCase, new C0286(lowerCase));
        AbstractC0272.m1214(new C0365(this, lowerCase));
    }
}
