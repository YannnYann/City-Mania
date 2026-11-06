package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0264 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0235 f1593;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1594;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0937 f1595;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1596;

    public C0264(C0235 c0235, String str, C0937 c0937, boolean z) {
        this.f1593 = c0235;
        this.f1596 = str;
        this.f1595 = c0937;
        this.f1594 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0286 c0286M1195 = this.f1593.m1195(this.f1596);
        if (c0286M1195 != null) {
            C0937 c0937 = this.f1595;
            boolean z = this.f1594;
            C0525 c0525 = c0937.f3544;
            c0286M1195.f1645 = c0525.f2381;
            c0286M1195.f1644 = c0525.f2380;
            c0286M1195.f1643 = c0525.f2379;
            c0286M1195.f1642 = c0937.f3541.m1185();
            if (StringFog.decrypt("4d9JFOR7Yg==\n", "pJEIVqg+Jv4=\n").equals(c0286M1195.f1642) || StringFog.decrypt("GLL57+bWBiA=\n", "XPuqrqSaQ2Q=\n").equals(c0286M1195.f1642)) {
                c0286M1195.f1642 = C0286.f1632;
            }
            C0525 c05252 = c0937.f3544;
            c0286M1195.f1641 = c05252.f2378;
            c0286M1195.f1640 = c05252.f2377;
            c0286M1195.f1639 = c0937.m1552();
            c0286M1195.f1636 = z;
        }
    }
}
