package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ـ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0315 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0164 f1845;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ EnumC0168 f1846;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1847;

    public C0315(C0164 c0164, String str, EnumC0168 enumC0168) {
        this.f1845 = c0164;
        this.f1847 = str;
        this.f1846 = enumC0168;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        synchronized (this.f1845) {
            this.f1845.f1169.put(this.f1847, this.f1846);
        }
    }
}
