package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum i53 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    REQUEST_TYPE_UNKNOWN(0),
    REQUEST_TYPE_ADX(1),
    /* JADX INFO: Fake field, exist only in values array */
    REQUEST_TYPE_ADMOB(2),
    /* JADX INFO: Fake field, exist only in values array */
    REQUEST_TYPE_AD_MANAGER(3),
    /* JADX INFO: Fake field, exist only in values array */
    REQUEST_TYPE_SCAR(6),
    UNRECOGNIZED(-1);

    public final int a;

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        if (this == UNRECOGNIZED) {
            return yh1.a();
        }
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(i53.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    i53(int i) {
        this.a = i;
    }
}
