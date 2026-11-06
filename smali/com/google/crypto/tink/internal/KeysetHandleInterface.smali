###### Class com.google.crypto.tink.internal.KeysetHandleInterface (com.google.crypto.tink.internal.KeysetHandleInterface)
.class public interface abstract Lcom/google/crypto/tink/internal/KeysetHandleInterface;
.super Ljava/lang/Object;
.source "KeysetHandleInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
    }
.end annotation


# virtual methods
.method public abstract getAt(I)Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public abstract getPrimary()Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
.end method

.method public abstract size()I
.end method

###### Class com.google.crypto.tink.internal.KeysetHandleInterface.Entry (com.google.crypto.tink.internal.KeysetHandleInterface$Entry)
.class public interface abstract Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
.super Ljava/lang/Object;
.source "KeysetHandleInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/KeysetHandleInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getKey()Lcom/google/crypto/tink/Key;
.end method

.method public abstract getStatus()Lcom/google/crypto/tink/KeyStatus;
.end method
