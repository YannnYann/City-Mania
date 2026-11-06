###### Class com.google.crypto.tink.RegistryConfiguration (com.google.crypto.tink.RegistryConfiguration)
.class public Lcom/google/crypto/tink/RegistryConfiguration;
.super Ljava/lang/Object;
.source "RegistryConfiguration.java"


# direct methods
.method public static get()Lcom/google/crypto/tink/Configuration;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/google/crypto/tink/internal/RegistryConfiguration;->get()Lcom/google/crypto/tink/internal/RegistryConfiguration;

    move-result-object v0

    return-object v0
.end method
