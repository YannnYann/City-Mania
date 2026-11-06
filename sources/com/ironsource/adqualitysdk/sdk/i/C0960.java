package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0960 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0931 f3630;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0623 f3631;

    public C0960(C0931 c0931, C0623 c0623) {
        this.f3630 = c0931;
        this.f3631 = c0623;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        int iM1206;
        C0931 c0931 = this.f3630;
        C0773 c0773 = c0931.f3524;
        String str = c0931.f3525 + StringFog.decrypt("jQ==\n", "p0Bl/NtYPNE=\n");
        C0321 c0321 = c0773.f3106;
        c0321.getClass();
        try {
            iM1206 = c0321.f1886.m1206(str);
        } catch (Throwable unused) {
            iM1206 = 0;
        }
        AbstractC0272.m1211(new C0986(this, iM1206));
    }
}
