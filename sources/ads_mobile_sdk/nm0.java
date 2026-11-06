package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum nm0 implements yh1.a {
    AVAILABLE_MEMORY_TIER_UNKNOWN(0),
    AVAILABLE_MEMORY_TIER_INVALID_DATA_SOURCE(1),
    AVAILABLE_MEMORY_TIER_EXTREME_LOW(2),
    AVAILABLE_MEMORY_TIER_VERY_LOW(3),
    AVAILABLE_MEMORY_TIER_LOW(4),
    AVAILABLE_MEMORY_TIER_MID(5),
    AVAILABLE_MEMORY_TIER_MID_PLUS(6),
    AVAILABLE_MEMORY_TIER_HIGH(7),
    AVAILABLE_MEMORY_TIER_VERY_HIGH(8),
    AVAILABLE_MEMORY_TIER_EXTREME_HIGH(9),
    /* JADX INFO: Fake field, exist only in values array */
    AVAILABLE_MEMORY_TIER_UNPARSABLE(255),
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
        sf.a(nm0.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    nm0(int i) {
        this.a = i;
    }
}
