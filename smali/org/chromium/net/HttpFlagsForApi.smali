###### Class org.chromium.net.HttpFlagsForApi (org.chromium.net.HttpFlagsForApi)
.class public final Lorg/chromium/net/HttpFlagsForApi;
.super Ljava/lang/Object;
.source "HttpFlagsForApi.java"


# direct methods
.method public static getHttpFlags(Landroid/content/Context;)Lorg/chromium/net/httpflags/ResolvedFlags;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    invoke-static {}, Lorg/chromium/net/ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->isAppOptedInForTelemetry(Landroid/content/Context;)Z

    move-result v2

    .line 27
    invoke-static {p0, v0, v1, v2}, Lorg/chromium/net/httpflags/HttpFlagsLoader;->getHttpFlags(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/chromium/net/httpflags/ResolvedFlags;

    move-result-object p0

    return-object p0
.end method
