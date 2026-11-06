package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ї, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0241 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f1550;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final int f1551;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f1552;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f1553;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f1554;

    public C0241(String str, String str2, String str3, int i, String str4) {
        this.f1554 = str;
        this.f1553 = str2;
        this.f1552 = str3;
        this.f1551 = i;
        this.f1550 = str4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1554);
        sb.append(StringFog.decrypt("3Q==\n", "84nBo/uexTg=\n"));
        sb.append(this.f1553);
        sb.append(StringFog.decrypt("iw==\n", "o8FUw/AgaYA=\n"));
        sb.append(this.f1552);
        sb.append(StringFog.decrypt("uQ==\n", "g4ZjiyviWQI=\n"));
        sb.append(this.f1551);
        String strM1456 = AbstractC0829.m1456("CQ==\n", "IK0eEXbC7o8=\n", sb);
        if (this.f1550 == null) {
            return strM1456;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strM1456);
        sb2.append(StringFog.decrypt("1xw=\n", "9yCIabdG4Jk=\n"));
        sb2.append(this.f1550);
        return AbstractC0829.m1456("yg==\n", "9Mo11pn2u1M=\n", sb2);
    }
}
