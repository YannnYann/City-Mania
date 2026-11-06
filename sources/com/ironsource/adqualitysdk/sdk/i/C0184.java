package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Τ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0184 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0057 f1198;

    public C0184(C0057 c0057) {
        this.f1198 = c0057;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0057 c0057 = this.f1198;
        if (c0057.f807 == null) {
            c0057.f807 = new C0220(this);
            c0057.f809.post(new C0195(this));
        }
    }
}
