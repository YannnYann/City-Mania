###### Class com.google.crypto.tink.SecretKeyAccess (com.google.crypto.tink.SecretKeyAccess)
.class public final Lcom/google/crypto/tink/SecretKeyAccess;
.super Ljava/lang/Object;
.source "SecretKeyAccess.java"


# static fields
.field public static final INSTANCE:Lcom/google/crypto/tink/SecretKeyAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/google/crypto/tink/SecretKeyAccess;

    invoke-direct {v0}, Lcom/google/crypto/tink/SecretKeyAccess;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/SecretKeyAccess;->INSTANCE:Lcom/google/crypto/tink/SecretKeyAccess;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/google/crypto/tink/SecretKeyAccess;
    .registers 1

    .line 54
    sget-object v0, Lcom/google/crypto/tink/SecretKeyAccess;->INSTANCE:Lcom/google/crypto/tink/SecretKeyAccess;

    return-object v0
.end method

.method public static requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 72
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "SecretKeyAccess is required"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
