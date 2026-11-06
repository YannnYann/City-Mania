package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum pg implements yh1.a {
    MARKETPLACE_UNSPECIFIED(0),
    MARKETPLACE_NOT_SET(1),
    MARKETPLACE_UNKNOWN(2),
    MARKETPLACE_ERROR(3),
    MARKETPLACE_API_NOT_AVAILABLE(4),
    MARKETPLACE_APPSTORE(5),
    MARKETPLACE_TESTFLIGHT(6),
    MARKETPLACE_ALTERNATE(7),
    MARKETPLACE_WEB(8),
    MARKETPLACE_OTHER(9);

    public final int a;

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(pg.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
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

    pg(int i) {
        this.a = i;
    }
}
