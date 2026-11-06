###### Class com.google.crypto.tink.internal.ConscryptUtil (com.google.crypto.tink.internal.ConscryptUtil)
.class public final Lcom/google/crypto/tink/internal/ConscryptUtil;
.super Ljava/lang/Object;
.source "ConscryptUtil.java"


# static fields
.field public static final conscryptProviderNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    const-string v0, "AndroidOpenSSL"

    const-string v1, "Conscrypt"

    const-string v2, "GmsCore_OpenSSL"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/ConscryptUtil;->conscryptProviderNames:[Ljava/lang/String;

    return-void
.end method

.method public static providerOrNull()Ljava/security/Provider;
    .registers 4

    .line 32
    sget-object v0, Lcom/google/crypto/tink/internal/ConscryptUtil;->conscryptProviderNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 33
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static providerWithReflectionOrNull()Ljava/security/Provider;
    .registers 5

    const/4 v0, 0x0

    .line 51
    :try_start_1
    const-string v1, "org.conscrypt.Conscrypt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    const-string v2, "newProvider"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    return-object v1

    :catchall_19
    return-object v0
.end method
