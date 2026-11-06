package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᕽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0591 extends AbstractC0679 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f2537;

    public C0591(AbstractC0963 abstractC0963) {
        this.f2537 = abstractC0963;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0963 abstractC0963 = this.f2537;
        AbstractC0963 abstractC09632 = ((C0591) obj).f2537;
        return abstractC0963 != null ? abstractC0963.equals(abstractC09632) : abstractC09632 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f2537;
        if (abstractC0963 != null) {
            return abstractC0963.hashCode();
        }
        return 0;
    }

    public String toString() {
        if (this.f2537 == null) {
            return StringFog.decrypt("Gg==\n", "Ib2xC7nQLe4=\n");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2537);
        return AbstractC0829.m1456("7A==\n", "1zbahqQUis4=\n", sb);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public C0180 mo1031(C0915 c0915, C0048 c0048) {
        AbstractC0963 abstractC0963 = this.f2537;
        return abstractC0963 != null ? abstractC0963.m1577(c0915, c0048) : new C0180(null);
    }
}
