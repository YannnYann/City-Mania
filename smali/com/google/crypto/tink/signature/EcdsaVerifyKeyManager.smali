###### Class com.google.crypto.tink.signature.EcdsaVerifyKeyManager (com.google.crypto.tink.signature.EcdsaVerifyKeyManager)
.class public Lcom/google/crypto/tink/signature/EcdsaVerifyKeyManager;
.super Ljava/lang/Object;
.source "EcdsaVerifyKeyManager.java"


# direct methods
.method public static getKeyType()Ljava/lang/String;
    .registers 1

    .line 25
    const-string v0, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    return-object v0
.end method
