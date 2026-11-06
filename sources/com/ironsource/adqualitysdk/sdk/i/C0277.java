package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ւ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0277 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0235 f1615;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ EnumC0307 f1616;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1617;

    public C0277(C0235 c0235, String str, EnumC0307 enumC0307) {
        this.f1615 = c0235;
        this.f1617 = str;
        this.f1616 = enumC0307;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0286 c0286M1195 = this.f1615.m1195(this.f1617);
        if (c0286M1195 != null) {
            c0286M1195.f1637 = this.f1616;
            c0286M1195.m1218(EnumC0299.f1675);
            C0235.m1194(this.f1615, c0286M1195);
        }
    }
}
