package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ĭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0045 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963 f572;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f573;

    public AbstractC0045(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        this.f573 = abstractC0963;
        this.f572 = abstractC09632;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0045 abstractC0045 = (AbstractC0045) obj;
        AbstractC0963 abstractC0963 = this.f573;
        if (abstractC0963 == null ? abstractC0045.f573 != null : !abstractC0963.equals(abstractC0045.f573)) {
            return false;
        }
        AbstractC0963 abstractC09632 = this.f572;
        AbstractC0963 abstractC09633 = abstractC0045.f572;
        return abstractC09632 != null ? abstractC09632.equals(abstractC09633) : abstractC09633 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f573;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        AbstractC0963 abstractC09632 = this.f572;
        return iHashCode + (abstractC09632 != null ? abstractC09632.hashCode() : 0);
    }

    public final String toString() {
        return this.f573 + " " + mo1055() + " " + this.f572;
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract String mo1055();
}
