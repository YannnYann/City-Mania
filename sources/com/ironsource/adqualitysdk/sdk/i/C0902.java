package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0902 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3462;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0074 f3463;

    public C0902(C0893 c0893, InterfaceC0074 interfaceC0074) {
        this.f3462 = c0893;
        this.f3463 = interfaceC0074;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean z;
        this.f3462.f3414.add(this.f3463);
        C0893 c0893 = this.f3462;
        synchronized (c0893) {
            z = c0893.f3412;
        }
        if (z) {
            this.f3463.mo1077();
        }
    }
}
