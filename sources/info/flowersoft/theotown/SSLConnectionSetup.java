package info.flowersoft.theotown;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: SSLConnectionSetup.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SSLConnectionSetup {
    public static final SSLConnectionSetup INSTANCE = new SSLConnectionSetup();

    public final X509Certificate getCertificate(String str) throws CertificateException {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X509");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream(bytes));
        Intrinsics.checkNotNull(certificateGenerateCertificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
        return (X509Certificate) certificateGenerateCertificate;
    }

    public final X509TrustManager getCertificateTrustManager(X509Certificate x509Certificate) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        keyStore.load(null, null);
        keyStore.setCertificateEntry("root", x509Certificate);
        trustManagerFactory.init(keyStore);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        Intrinsics.checkNotNullExpressionValue(trustManagers, "getTrustManagers(...)");
        ArrayList arrayList = new ArrayList();
        for (TrustManager trustManager : trustManagers) {
            if (trustManager instanceof X509TrustManager) {
                arrayList.add(trustManager);
            }
        }
        return (X509TrustManager) CollectionsKt___CollectionsKt.first((List) arrayList);
    }

    public final X509TrustManager getDefaultTrustManager() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        Intrinsics.checkNotNullExpressionValue(trustManagers, "getTrustManagers(...)");
        ArrayList arrayList = new ArrayList();
        for (TrustManager trustManager : trustManagers) {
            if (trustManager instanceof X509TrustManager) {
                arrayList.add(trustManager);
            }
        }
        return (X509TrustManager) CollectionsKt___CollectionsKt.first((List) arrayList);
    }

    public final void setup(String rootCert) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, KeyManagementException {
        Intrinsics.checkNotNullParameter(rootCert, "rootCert");
        X509TrustManager defaultTrustManager = getDefaultTrustManager();
        X509TrustManager certificateTrustManager = getCertificateTrustManager(getCertificate(rootCert));
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, new CompositeX509TrustManager[]{new CompositeX509TrustManager(defaultTrustManager, certificateTrustManager)}, null);
        HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
    }

    /* JADX INFO: compiled from: SSLConnectionSetup.kt */
    public static final class CompositeX509TrustManager implements X509TrustManager {
        private final X509TrustManager a;
        private final X509TrustManager b;
        private final X509Certificate[] issuers;

        public CompositeX509TrustManager(X509TrustManager a, X509TrustManager b) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            this.a = a;
            this.b = b;
            X509Certificate[] acceptedIssuers = a.getAcceptedIssuers();
            Intrinsics.checkNotNullExpressionValue(acceptedIssuers, "getAcceptedIssuers(...)");
            X509Certificate[] acceptedIssuers2 = b.getAcceptedIssuers();
            Intrinsics.checkNotNullExpressionValue(acceptedIssuers2, "getAcceptedIssuers(...)");
            this.issuers = (X509Certificate[]) ArraysKt___ArraysJvmKt.plus(acceptedIssuers, acceptedIssuers2);
        }

        public final X509TrustManager getA() {
            return this.a;
        }

        public final X509TrustManager getB() {
            return this.b;
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.issuers;
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
            Intrinsics.checkNotNullParameter(x509Certificates, "x509Certificates");
            Intrinsics.checkNotNullParameter(s, "s");
            try {
                this.a.checkClientTrusted(x509Certificates, s);
            } catch (CertificateException unused) {
                this.b.checkClientTrusted(x509Certificates, s);
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
            Intrinsics.checkNotNullParameter(x509Certificates, "x509Certificates");
            Intrinsics.checkNotNullParameter(s, "s");
            try {
                this.a.checkServerTrusted(x509Certificates, s);
            } catch (CertificateException unused) {
                this.b.checkServerTrusted(x509Certificates, s);
            }
        }

        public final void checkServerTrusted(X509Certificate[] x509Certificates, String s, String host) throws IllegalAccessException, CertificateException, InvocationTargetException {
            Intrinsics.checkNotNullParameter(x509Certificates, "x509Certificates");
            Intrinsics.checkNotNullParameter(s, "s");
            Intrinsics.checkNotNullParameter(host, "host");
            try {
                tryCheckServerTrusted(this.a, x509Certificates, s, host);
            } catch (CertificateException unused) {
                tryCheckServerTrusted(this.b, x509Certificates, s, host);
            }
        }

        private final void tryCheckServerTrusted(TrustManager trustManager, X509Certificate[] x509CertificateArr, String str, String str2) throws IllegalAccessException, CertificateException, InvocationTargetException {
            try {
                trustManager.getClass().getDeclaredMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class).invoke(trustManager, x509CertificateArr, str, str2);
            } catch (NoSuchMethodException unused) {
                checkServerTrusted(x509CertificateArr, str);
            }
        }
    }
}
