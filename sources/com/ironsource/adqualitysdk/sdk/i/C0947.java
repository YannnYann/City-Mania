package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0947 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f3586;

    public C0947(AbstractC0963 abstractC0963) {
        this.f3586 = abstractC0963;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0963 abstractC0963 = this.f3586;
        AbstractC0963 abstractC09632 = ((C0947) obj).f3586;
        return abstractC0963 != null ? abstractC0963.equals(abstractC09632) : abstractC09632 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f3586;
        if (abstractC0963 != null) {
            return abstractC0963.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("mw==\n", "s24mqGjU38g=\n"));
        sb.append(this.f3586);
        return AbstractC0829.m1456("rg==\n", "h219SOqFte0=\n", sb);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        return this.f3586.m1577(c0915, c0048);
    }
}
