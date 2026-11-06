###### Class com.google.crypto.tink.Mac (com.google.crypto.tink.Mac)
.class public interface abstract Lcom/google/crypto/tink/Mac;
.super Ljava/lang/Object;
.source "Mac.java"


# virtual methods
.method public abstract verifyMac([B[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mac",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
