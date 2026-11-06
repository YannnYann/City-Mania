###### Class org.chromium.net.impl.VersionSafeCallbacks$ApiVersion (org.chromium.net.impl.VersionSafeCallbacks$ApiVersion)
.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;
.super Ljava/lang/Object;
.source "VersionSafeCallbacks.java"


# direct methods
.method public static getCronetVersion()Ljava/lang/String;
    .registers 1

    .line 303
    invoke-static {}, Lorg/chromium/net/ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaximumAvailableApiLevel()I
    .registers 2

    .line 293
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3b

    if-ge v0, v1, :cond_1a

    .line 295
    invoke-static {}, Lorg/chromium/net/ApiVersion;->getApiLevel()I

    move-result v0

    return v0

    .line 297
    :cond_1a
    invoke-static {}, Lorg/chromium/net/ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v0

    return v0
.end method
