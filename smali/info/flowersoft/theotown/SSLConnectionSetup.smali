###### Class info.flowersoft.theotown.SSLConnectionSetup (info.flowersoft.theotown.SSLConnectionSetup)
.class public final Linfo/flowersoft/theotown/SSLConnectionSetup;
.super Ljava/lang/Object;
.source "SSLConnectionSetup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSSLConnectionSetup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SSLConnectionSetup.kt\ninfo/flowersoft/theotown/SSLConnectionSetup\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,98:1\n4253#2,12:99\n4253#2,12:111\n*S KotlinDebug\n*F\n+ 1 SSLConnectionSetup.kt\ninfo/flowersoft/theotown/SSLConnectionSetup\n*L\n27#1:99,12\n33#1:111,12\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/SSLConnectionSetup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/SSLConnectionSetup;

    invoke-direct {v0}, Linfo/flowersoft/theotown/SSLConnectionSetup;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/SSLConnectionSetup;->INSTANCE:Linfo/flowersoft/theotown/SSLConnectionSetup;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    .line 18
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 19
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    .line 18
    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public final getCertificateTrustManager(Ljava/security/cert/X509Certificate;)Ljavax/net/ssl/X509TrustManager;
    .registers 7

    .line 22
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 23
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 25
    const-string v2, "root"

    invoke-virtual {v1, v2, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 23
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 27
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    const-string v0, "getTrustManagers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4263
    array-length v1, p1

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_3a

    aget-object v3, p1, v2

    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_37

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 27
    :cond_3a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method

.method public final getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 7

    .line 31
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 33
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const-string v1, "getTrustManagers(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4263
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_27

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 33
    :cond_2a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final setup(Ljava/lang/String;)V
    .registers 5

    const-string v0, "rootCert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/SSLConnectionSetup;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 39
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/SSLConnectionSetup;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/SSLConnectionSetup;->getCertificateTrustManager(Ljava/security/cert/X509Certificate;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    .line 41
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 42
    new-instance v2, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;

    invoke-direct {v2, v0, p1}, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/X509TrustManager;)V

    filled-new-array {v2}, [Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;

    move-result-object p1

    check-cast p1, [Ljavax/net/ssl/TrustManager;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 44
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.SSLConnectionSetup.CompositeX509TrustManager (info.flowersoft.theotown.SSLConnectionSetup$CompositeX509TrustManager)
.class public final Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;
.super Ljava/lang/Object;
.source "SSLConnectionSetup.kt"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/SSLConnectionSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositeX509TrustManager"
.end annotation


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Ljavax/net/ssl/X509TrustManager;

.field private final issuers:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/X509TrustManager;)V
    .registers 4

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    .line 50
    iput-object p2, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    .line 52
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    const-string v0, "getAcceptedIssuers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->issuers:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method private final tryCheckServerTrusted(Ljavax/net/ssl/TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 84
    const-class v0, Ljava/lang/String;

    .line 85
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 86
    const-string v2, "checkServerTrusted"

    .line 87
    const-class v3, [Ljava/security/cert/X509Certificate;

    .line 89
    filled-new-array {v3, v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_19} :catch_1a

    return-void

    .line 93
    :catch_1a
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    const-string v0, "x509Certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_a
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    .line 60
    :catch_10
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    const-string v0, "x509Certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :try_start_a
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    .line 68
    :catch_10
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "x509Certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :try_start_f
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {p0, v0, p1, p2, p3}, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->tryCheckServerTrusted(Ljavax/net/ssl/TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    .line 79
    :catch_15
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {p0, v0, p1, p2, p3}, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->tryCheckServerTrusted(Ljavax/net/ssl/TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getA()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->a:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->issuers:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final getB()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/SSLConnectionSetup$CompositeX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method
