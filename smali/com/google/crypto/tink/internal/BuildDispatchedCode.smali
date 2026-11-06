###### Class com.google.crypto.tink.internal.BuildDispatchedCode (com.google.crypto.tink.internal.BuildDispatchedCode)
.class public final Lcom/google/crypto/tink/internal/BuildDispatchedCode;
.super Ljava/lang/Object;
.source "BuildDispatchedCode.java"


# direct methods
.method public static getApiLevel()Ljava/lang/Integer;
    .registers 1

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
