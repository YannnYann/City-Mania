###### Class com.google.crypto.tink.signature.RsaSsaPssVerifyKeyManager (com.google.crypto.tink.signature.RsaSsaPssVerifyKeyManager)
.class public Lcom/google/crypto/tink/signature/RsaSsaPssVerifyKeyManager;
.super Ljava/lang/Object;
.source "RsaSsaPssVerifyKeyManager.java"


# direct methods
.method public static getKeyType()Ljava/lang/String;
    .registers 1

    .line 24
    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey"

    return-object v0
.end method
