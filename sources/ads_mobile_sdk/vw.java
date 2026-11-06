package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public enum vw implements yh1.a {
    BLOB_TYPE_UNKNOWN(0),
    BLOB_TYPE_DEFAULT(1),
    BLOB_TYPE_JAR(2),
    BLOB_TYPE_WEB_SUGGEST(3),
    BLOB_TYPE_BRAIN_SUGGEST(4);

    public final int a;

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(vw.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
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

    vw(int i) {
        this.a = i;
    }
}
