package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum r11 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    CONTENT_PROVIDER_TYPE_NONE(0),
    CONTENT_PROVIDER_TYPE_EARLY_INIT(1),
    CONTENT_PROVIDER_TYPE_EARLY_INIT_WITH_WEBVIEW(2),
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
        sf.a(r11.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(getNumber());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    r11(int i) {
        this.a = i;
    }
}
