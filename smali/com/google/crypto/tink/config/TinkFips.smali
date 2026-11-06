###### Class com.google.crypto.tink.config.TinkFips (com.google.crypto.tink.config.TinkFips)
.class public final Lcom/google/crypto/tink/config/TinkFips;
.super Ljava/lang/Object;
.source "TinkFips.java"


# direct methods
.method public static useOnlyFips()Z
    .registers 1

    .line 30
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    return v0
.end method
