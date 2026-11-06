package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum ik2 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    FILL_DISABLED_REASON_UNKNOWN(0),
    FILL_DISABLED_REASON_NO_CAPACITY(1),
    FILL_DISABLED_REASON_CONSENT_NOT_ALLOWED(2),
    FILL_DISABLED_REASON_WEB_PROPERTY_DISABLED(3),
    FILL_DISABLED_REASON_CELLULAR_NETWORK(4),
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
        sf.a(ik2.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    ik2(int i) {
        this.a = i;
    }
}
