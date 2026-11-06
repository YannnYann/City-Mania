###### Class com.google.crypto.tink.signature.Ed25519PublicKeyManager (com.google.crypto.tink.signature.Ed25519PublicKeyManager)
.class public Lcom/google/crypto/tink/signature/Ed25519PublicKeyManager;
.super Ljava/lang/Object;
.source "Ed25519PublicKeyManager.java"


# direct methods
.method public static getKeyType()Ljava/lang/String;
    .registers 1

    .line 25
    const-string v0, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey"

    return-object v0
.end method
