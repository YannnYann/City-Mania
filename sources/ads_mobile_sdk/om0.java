package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum om0 implements yh1.a {
    PROCESSOR_TIER_UNKNOWN(0),
    PROCESSOR_TIER_INVALID_DATA_SOURCE(1),
    PROCESSOR_TIER_EXTREME_LOW(2),
    PROCESSOR_TIER_LOW(3),
    PROCESSOR_TIER_MID(4),
    PROCESSOR_TIER_MID_PLUS(5),
    PROCESSOR_TIER_HIGH(6),
    PROCESSOR_TIER_EXTREME_HIGH(7),
    /* JADX INFO: Fake field, exist only in values array */
    PROCESSOR_TIER_UNPARSABLE(255),
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
        sf.a(om0.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    om0(int i) {
        this.a = i;
    }
}
