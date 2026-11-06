package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum mh2 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN_OS_TYPE(0),
    ANDROID(1),
    /* JADX INFO: Fake field, exist only in values array */
    IOS(2),
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
        sf.a(mh2.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    mh2(int i) {
        this.a = i;
    }
}
