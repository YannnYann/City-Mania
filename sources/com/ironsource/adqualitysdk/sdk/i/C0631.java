package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0631 implements InterfaceC0074 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0622 f2648;

    public C0631(C0622 c0622) {
        this.f2648 = c0622;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0074
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1077() {
        C0622 c0622 = this.f2648;
        synchronized (c0622) {
            c0622.f2636 = true;
            c0622.m1406(true);
        }
    }
}
