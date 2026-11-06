package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum jh1 implements yh1.a {
    UNKNOWN(0),
    OK(1),
    SERVICE_UNAVAILABLE(2),
    FEATURE_NOT_SUPPORTED(3),
    DEVELOPER_ERROR(4),
    PERMISSION_ERROR(5),
    SERVICE_DISCONNECTED(6),
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
        sf.a(jh1.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    jh1(int i) {
        this.a = i;
    }
}
