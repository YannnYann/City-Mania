package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0107 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0057 f915;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0279 f916;

    public C0107(C0057 c0057, InterfaceC0279 interfaceC0279) {
        this.f915 = c0057;
        this.f916 = interfaceC0279;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f915.f810.put(this.f916, new C0112(this));
        C0057.m1070(this.f915);
    }
}
