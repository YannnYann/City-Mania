package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0900 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3460;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0495 f3461;

    public C0900(C0893 c0893, C0495 c0495) {
        this.f3460 = c0893;
        this.f3461 = c0495;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean z;
        C0893 c0893 = this.f3460;
        synchronized (c0893) {
            z = c0893.f3412;
        }
        if (z) {
            this.f3461.mo1077();
        } else {
            this.f3460.f3415.add(this.f3461);
        }
    }
}
