package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﯩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0906 implements InterfaceC0418 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0903 f3470;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0054 f3471;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0703 f3472;

    public C0906(C0903 c0903, AbstractC0703 abstractC0703, InterfaceC0054 interfaceC0054) {
        this.f3470 = c0903;
        this.f3472 = abstractC0703;
        this.f3471 = interfaceC0054;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0418
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1268() {
        C0767 c0767 = this.f3470.f3464.f3348.f3122;
        synchronized (c0767) {
            c0767.f3096.remove(this);
        }
        this.f3470.f3464.m1464(this.f3472, this.f3471);
    }
}
