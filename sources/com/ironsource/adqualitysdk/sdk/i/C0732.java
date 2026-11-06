package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0732 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0730 f3017;

    public C0732(C0730 c0730) {
        this.f3017 = c0730;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0622 c0622 = this.f3017.f3014;
        String str = C0622.f2620;
        c0622.m1406(false);
        C0977 c0977 = this.f3017.f3015;
        if (c0977 != null) {
            try {
                c0977.mo1013();
            } catch (Exception e) {
                AbstractC1003.m1593(StringFog.decrypt("r1BX0GiaG5Sd\n", "7j42vBHucvc=\n"), StringFog.decrypt("7+LcDvETp/6K48sP53a49cTklEHsXY3/x+DCBPdaof4=\n", "qpCuYYMzzpA=\n"), e, false, false, true);
            }
        }
    }
}
