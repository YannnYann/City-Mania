package ads_mobile_sdk;

import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes.dex */
public final class zj extends ak {
    public final byte[] b;

    public zj(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.b = bArr;
    }

    @Override // java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.b;
    }
}
