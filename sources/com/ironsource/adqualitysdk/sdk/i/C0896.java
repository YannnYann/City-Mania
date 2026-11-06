package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0896 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3452;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0497 f3453;

    public C0896(C0893 c0893, C0497 c0497) {
        this.f3452 = c0893;
        this.f3453 = c0497;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean z;
        C0893 c0893 = this.f3452;
        c0893.f3416 = this.f3453;
        synchronized (c0893) {
            z = c0893.f3412;
        }
        if (z) {
            this.f3453.mo1077();
        }
    }
}
