package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0559 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963 f2503;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f2504;

    public AbstractC0559(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        this.f2504 = abstractC0963;
        this.f2503 = abstractC09632;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0559 abstractC0559 = (AbstractC0559) obj;
        AbstractC0963 abstractC0963 = this.f2504;
        if (abstractC0963 == null ? abstractC0559.f2504 != null : !abstractC0963.equals(abstractC0559.f2504)) {
            return false;
        }
        AbstractC0963 abstractC09632 = this.f2503;
        AbstractC0963 abstractC09633 = abstractC0559.f2503;
        return abstractC09632 != null ? abstractC09632.equals(abstractC09633) : abstractC09633 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public int hashCode() {
        AbstractC0963 abstractC0963 = this.f2504;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        AbstractC0963 abstractC09632 = this.f2503;
        return iHashCode + (abstractC09632 != null ? abstractC09632.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2504.toString());
        sb.append(StringFog.decrypt("Ug==\n", "CZihrUS5pbY=\n"));
        sb.append(this.f2503.toString());
        return AbstractC0829.m1456("ew==\n", "JvHvrzlzDpc=\n", sb);
    }
}
