package com.ironsource.adqualitysdk.sdk.i;

import java.math.BigDecimal;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᚆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0627 extends AbstractC0045 {
    public AbstractC0627(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        super(abstractC0963, abstractC09632);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        Object obj = this.f573.m1577(c0915, c0048).f1192;
        Object obj2 = this.f572.m1577(c0915, c0048).f1192;
        try {
            return new C0180(Boolean.valueOf(mo1408(new BigDecimal(obj.toString()).compareTo(new BigDecimal(obj2.toString())))));
        } catch (Exception unused) {
            return ((obj instanceof String) && (obj2 instanceof String)) ? new C0180(Boolean.valueOf(mo1264((String) obj, (String) obj2))) : new C0180(Boolean.valueOf(mo1263(obj, obj2)));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public abstract boolean mo1408(int i);

    /* JADX INFO: renamed from: ﾒ */
    public abstract boolean mo1263(Object obj, Object obj2);

    /* JADX INFO: renamed from: ﾒ */
    public abstract boolean mo1264(String str, String str2);
}
