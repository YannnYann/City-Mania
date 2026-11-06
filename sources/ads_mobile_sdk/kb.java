package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum kb implements yh1.a {
    ADSHIELD_VERSION_UNSPECIFIED(0),
    ADSHIELD_VERSION_1(1),
    ADSHIELD_VERSION_2(2),
    ADSHIELD_VERSION_3(3),
    ADSHIELD_VERSION_3_STATIC_PROGRAM(4);

    public final int a;

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(kb.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=");
        sb.append(this.a);
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    public static kb a(int i) {
        if (i == 0) {
            return ADSHIELD_VERSION_UNSPECIFIED;
        }
        if (i == 1) {
            return ADSHIELD_VERSION_1;
        }
        if (i == 2) {
            return ADSHIELD_VERSION_2;
        }
        if (i == 3) {
            return ADSHIELD_VERSION_3;
        }
        if (i != 4) {
            return null;
        }
        return ADSHIELD_VERSION_3_STATIC_PROGRAM;
    }

    kb(int i) {
        this.a = i;
    }
}
