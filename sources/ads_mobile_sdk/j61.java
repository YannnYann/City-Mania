package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum j61 implements yh1.a {
    UNKNOWN_HOST_TYPE(0),
    GMA(1),
    YOUTUBE(2),
    GPAY(3),
    IMA(4),
    PAL(5),
    MAPS(6),
    UNRECOGNIZED(-1);

    public final int a;

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        if (this == UNRECOGNIZED) {
            return yh1.a();
        }
        return this.a;
    }

    public static j61 a(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_HOST_TYPE;
            case 1:
                return GMA;
            case 2:
                return YOUTUBE;
            case 3:
                return GPAY;
            case 4:
                return IMA;
            case 5:
                return PAL;
            case 6:
                return MAPS;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(j61.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    j61(int i) {
        this.a = i;
    }
}
