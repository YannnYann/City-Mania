package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ο, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0195 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0184 f1287;

    public C0195(C0184 c0184) {
        this.f1287 = c0184;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        AbstractC1013 abstractC1013M1594 = AbstractC1013.m1594();
        C0220 c0220 = this.f1287.f1198.f807;
        synchronized (abstractC1013M1594) {
            abstractC1013M1594.f3815.add(c0220);
        }
        AbstractC0272.m1211(new C0198(this));
    }
}
