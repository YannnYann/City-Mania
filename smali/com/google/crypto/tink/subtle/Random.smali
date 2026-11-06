###### Class com.google.crypto.tink.subtle.Random (com.google.crypto.tink.subtle.Random)
.class public final Lcom/google/crypto/tink/subtle/Random;
.super Ljava/lang/Object;
.source "Random.java"


# direct methods
.method public static randBytes(I)[B
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Random;->randBytes(I)[B

    move-result-object p0

    return-object p0
.end method
