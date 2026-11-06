package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0507 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0503 f2331;

    public C0507(C0503 c0503) {
        this.f2331 = c0503;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean zMo1492;
        C0324 c0324 = this.f2331.f2321;
        String str = C0324.f1893;
        synchronized (c0324) {
            zMo1492 = AbstractC0885.m1491().mo1492();
        }
        if (zMo1492) {
            AbstractC0272.m1213(new C0508(this), AbstractC0885.m1491().mo1507());
        }
    }
}
