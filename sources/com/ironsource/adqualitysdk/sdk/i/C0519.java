package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒾ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0519 extends AbstractC0256 {
    public C0519(String str, String str2, String str3, int i) {
        super(str, str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String strM1159 = AbstractC0202.m1159("Pw==\n", "EYNXtDYQ/W8=\n", sb, str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(StringFog.decrypt("M10lPWPZOq4=\n", "UjNBTwywXoM=\n"));
        sb2.append(this.f1574);
        sb2.append(StringFog.decrypt("JQ==\n", "COwGoVl6BhQ=\n"));
        sb2.append(this.f1573);
        this.f1575.add(new C0241(strM1159, str3, AbstractC0829.m1456("QMxvvQ==\n", "br8d0Wuh41M=\n", sb2), i, null));
    }
}
