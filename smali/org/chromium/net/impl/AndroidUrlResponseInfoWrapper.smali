###### Class org.chromium.net.impl.AndroidUrlResponseInfoWrapper (org.chromium.net.impl.AndroidUrlResponseInfoWrapper)
.class public Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;
.super Lorg/chromium/net/UrlResponseInfo;
.source "AndroidUrlResponseInfoWrapper.java"


# instance fields
.field public final mBackend:Landroid/net/http/UrlResponseInfo;

.field public final mProxyServerCompat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backend",
            "proxyServerCompat"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/chromium/net/UrlResponseInfo;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    .line 30
    iput-object p2, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mProxyServerCompat:Ljava/lang/String;

    return-void
.end method

.method public static createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->isResponseInfoNull(Landroid/net/http/UrlResponseInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 47
    :cond_8
    new-instance v0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;-><init>(Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createForUrlRequest(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->isResponseInfoNull(Landroid/net/http/UrlResponseInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_8
    new-instance v0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    const-string v1, ":0"

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;-><init>(Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isResponseInfoNull(Landroid/net/http/UrlResponseInfo;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 59
    :cond_4
    :try_start_4
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_9

    const/4 p0, 0x0

    return p0

    :catch_9
    return v0
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/HeaderBlock;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeadersAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline2;->m(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHeaderBlockWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/HeaderBlock;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/net/http/UrlResponseInfo;)I

    move-result v0

    return v0
.end method

.method public getHttpStatusText()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedProtocol()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline5;->m(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mProxyServerCompat:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedByteCount()J
    .registers 3

    .line 113
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline7;->m(Landroid/net/http/UrlResponseInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline4;->m(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlChain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/UrlResponseInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public wasCached()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline6;->m(Landroid/net/http/UrlResponseInfo;)Z

    move-result v0

    return v0
.end method
