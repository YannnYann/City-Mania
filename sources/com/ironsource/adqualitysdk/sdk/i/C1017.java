package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1017 extends AbstractC0389 {
    public C1017(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        super(abstractC0963, abstractC09632);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0389
    /* JADX INFO: renamed from: ﾒ */
    public final Number mo1076(Number number, Number number2) {
        if ((number instanceof Double) || (number2 instanceof Double)) {
            return Double.valueOf(number2.doubleValue() * number.doubleValue());
        }
        if ((number instanceof Long) || (number2 instanceof Long)) {
            return Long.valueOf(number2.longValue() * number.longValue());
        }
        return Integer.valueOf(number2.intValue() * number.intValue());
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0045
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1055() {
        return StringFog.decrypt("Bg==\n", "LCVPgnlrxtE=\n");
    }
}
