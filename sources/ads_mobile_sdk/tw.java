package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum tw implements yh1.a {
    BLOB_STATE_AVAILABLE(1),
    BLOB_STATE_INACTIVE(2),
    BLOB_STATE_ACTIVE(3),
    BLOB_STATE_FAILED(4);

    public final int a;

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(tw.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
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

    tw(int i) {
        this.a = i;
    }
}
