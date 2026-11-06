package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭜ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0877 extends AbstractC0045 {
    public C0877(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        super(abstractC0963, abstractC09632);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0180 c0180M1577 = this.f573.m1577(c0915, c0048);
        C0180 c0180M15772 = this.f572.m1577(c0915, c0048);
        if ((c0180M1577.f1192 instanceof String) || (c0180M15772.f1192 instanceof String)) {
            return new C0180("" + c0180M1577.f1192 + c0180M15772.f1192);
        }
        Number numberM1143 = c0180M1577.m1143();
        Number numberM11432 = c0180M15772.m1143();
        if ((numberM1143 instanceof Double) || (numberM11432 instanceof Double)) {
            return new C0180(Double.valueOf(numberM11432.doubleValue() + numberM1143.doubleValue()));
        }
        if ((numberM1143 instanceof Long) || (numberM11432 instanceof Long)) {
            return new C0180(Long.valueOf(numberM11432.longValue() + numberM1143.longValue()));
        }
        return new C0180(Integer.valueOf(numberM11432.intValue() + numberM1143.intValue()));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0045
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1055() {
        return StringFog.decrypt("Yg==\n", "Sel0U3Q9t48=\n");
    }
}
