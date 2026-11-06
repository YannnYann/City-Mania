###### Class io.bidmachine.media3.exoplayer.dash.DashUtil (io.bidmachine.media3.exoplayer.dash.DashUtil)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method public static buildDataSpec(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/datasource/DataSpec;"
        }
    .end annotation

    .line 67
    new-instance v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 68
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    .line 69
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setPosition(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    .line 70
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setLength(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 71
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/dash/DashUtil;->resolveCacheKey(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setKey(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method public static resolveCacheKey(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;)Ljava/lang/String;
    .registers 3

    .line 334
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 337
    :cond_7
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
