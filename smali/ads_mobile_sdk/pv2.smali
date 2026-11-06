###### Class ads_mobile_sdk.pv2 (ads_mobile_sdk.pv2)
.class public final Lads_mobile_sdk/pv2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lcom/google/crypto/tink/PublicKeyVerify;

.field public c:Lcom/google/crypto/tink/PublicKeyVerify;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lads_mobile_sdk/pv2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lads_mobile_sdk/pv2;->b:Lcom/google/crypto/tink/PublicKeyVerify;

    .line 33
    iput-object v0, p0, Lads_mobile_sdk/pv2;->c:Lcom/google/crypto/tink/PublicKeyVerify;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 34
    const-class v0, Lcom/google/crypto/tink/PublicKeyVerify;

    iget-object v1, p0, Lads_mobile_sdk/pv2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 36
    :try_start_b
    invoke-static {}, Lcom/google/crypto/tink/signature/SignatureConfig;->register()V

    .line 37
    new-instance v1, Ljava/lang/String;

    const-string v2, "eyJwcmltYXJ5S2V5SWQiOjMzMTUxOTk4MTksImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQVNoRGZwOUM5QjcrMU1nMmJQbHJ5WExPOHVScDd6YWZJMldSYURmR1ZqVmlJaEFJNFZzTmVrcCs0bVY0d2toZlhVb3pQZWs5TjgxcUdIK2plNnhjOFpoQkhQIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMzE1MTk5ODE5LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    const/4 v3, 0x0

    .line 40
    invoke-static {v2, v3}, Lads_mobile_sdk/hi;->a(Ljava/lang/String;Z)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 41
    invoke-static {v1}, Lcom/google/crypto/tink/TinkJsonProtoKeysetFormat;->parseKeysetWithoutSecret(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    .line 45
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/PublicKeyVerify;

    iput-object v1, p0, Lads_mobile_sdk/pv2;->b:Lcom/google/crypto/tink/PublicKeyVerify;

    .line 46
    new-instance v1, Ljava/lang/String;

    const-string v2, "eyJwcmltYXJ5S2V5SWQiOjMwODI3ODA4ODgsImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQkEyWW5HaWFpc3pEcGtJcWpjalorUTJ2alFUUldQZjhFcTlkZVlhNFpKa3lJaEFCQWFESTd6QWJkQXVpQmlnOWdHSkJ1VTUzSGg5Z0RCa0t2amswS2tabDhjIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMDgyNzgwODg4LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    .line 49
    invoke-static {v2, v3}, Lads_mobile_sdk/hi;->a(Ljava/lang/String;Z)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 50
    invoke-static {v1}, Lcom/google/crypto/tink/TinkJsonProtoKeysetFormat;->parseKeysetWithoutSecret(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/PublicKeyVerify;

    iput-object v0, p0, Lads_mobile_sdk/pv2;->c:Lcom/google/crypto/tink/PublicKeyVerify;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception v0

    .line 55
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Failed to verify program"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4f
    return-void
.end method

.method public final a(Lads_mobile_sdk/db;)Z
    .registers 5

    .line 112
    invoke-virtual {p1}, Lads_mobile_sdk/db;->w()Lads_mobile_sdk/eh2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/eh2;->x()Lads_mobile_sdk/hh2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/hh2;->x()Lads_mobile_sdk/du;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/du;->i()[B

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lads_mobile_sdk/db;->w()Lads_mobile_sdk/eh2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/eh2;->w()Lads_mobile_sdk/du;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/du;->i()[B

    move-result-object p1

    .line 116
    :try_start_1c
    invoke-virtual {p0}, Lads_mobile_sdk/pv2;->a()V

    .line 117
    iget-object v1, p0, Lads_mobile_sdk/pv2;->b:Lcom/google/crypto/tink/PublicKeyVerify;

    if-eqz v1, :cond_27

    .line 118
    invoke-interface {v1, v0, p1}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    goto :goto_35

    .line 120
    :cond_27
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v1
    :try_end_2d
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_2d} :catch_2d

    :catch_2d
    const/4 v1, 0x0

    .line 124
    :try_start_2e
    iget-object v2, p0, Lads_mobile_sdk/pv2;->c:Lcom/google/crypto/tink/PublicKeyVerify;

    if-eqz v2, :cond_37

    .line 125
    invoke-interface {v2, v0, p1}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V
    :try_end_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_35} :catch_37

    :goto_35
    const/4 p1, 0x1

    return p1

    :catch_37
    :cond_37
    return v1
.end method
