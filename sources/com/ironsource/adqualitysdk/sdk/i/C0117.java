package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0117 extends AbstractC0389 {
    public C0117(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        super(abstractC0963, abstractC09632);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0389
    /* JADX INFO: renamed from: ﾒ */
    public final Number mo1076(Number number, Number number2) {
        return ((number instanceof Double) || (number2 instanceof Double)) ? Double.valueOf(number.doubleValue() % number2.doubleValue()) : ((number instanceof Long) || (number2 instanceof Long)) ? Long.valueOf(number.longValue() % number2.longValue()) : Integer.valueOf(number.intValue() % number2.intValue());
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0045
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1055() {
        return StringFog.decrypt("Qg==\n", "Z1gO41KNPp8=\n");
    }
}
