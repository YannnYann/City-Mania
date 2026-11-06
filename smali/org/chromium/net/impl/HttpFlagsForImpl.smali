###### Class org.chromium.net.impl.HttpFlagsForImpl (org.chromium.net.impl.HttpFlagsForImpl)
.class public final Lorg/chromium/net/impl/HttpFlagsForImpl;
.super Ljava/lang/Object;
.source "HttpFlagsForImpl.java"


# direct methods
.method public static getHttpFlags(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Lorg/chromium/net/httpflags/ResolvedFlags;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "source"
        }
    .end annotation

    .line 29
    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, p1}, Lorg/chromium/net/impl/CronetManifest;->isAppOptedInForTelemetry(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Z

    move-result p1

    .line 27
    invoke-static {p0, v0, v1, p1}, Lorg/chromium/net/httpflags/HttpFlagsLoader;->getHttpFlags(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/chromium/net/httpflags/ResolvedFlags;

    move-result-object p0

    return-object p0
.end method
