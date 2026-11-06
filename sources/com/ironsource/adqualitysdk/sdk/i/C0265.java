package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0265 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0235 f1597;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ EnumC0299 f1598;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1599;

    public C0265(C0235 c0235, String str, EnumC0299 enumC0299) {
        this.f1597 = c0235;
        this.f1599 = str;
        this.f1598 = enumC0299;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0286 c0286M1195 = this.f1597.m1195(this.f1599);
        if (c0286M1195 != null) {
            c0286M1195.m1218(this.f1598);
            C0235.m1194(this.f1597, c0286M1195);
        }
    }
}
