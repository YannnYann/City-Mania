package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ږ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0343 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0330 f1940;

    public C0343(C0330 c0330) {
        this.f1940 = c0330;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0773 c0773 = this.f1940.f1917.f1878.f1352;
        String strDecrypt = StringFog.decrypt("Jjlt7Ff3Yt0zIV/uHP8=\n", "QFUMi3mRC68=\n");
        C0344 c0344 = new C0344(this);
        c0773.getClass();
        C0773.m1446().post(new C0818(c0773, strDecrypt, c0344));
    }
}
