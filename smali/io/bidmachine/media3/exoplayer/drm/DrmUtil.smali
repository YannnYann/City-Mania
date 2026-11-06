###### Class io.bidmachine.media3.exoplayer.drm.DrmUtil (io.bidmachine.media3.exoplayer.drm.DrmUtil)
.class public final Lio/bidmachine/media3/exoplayer/drm/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DrmUtil$Api23;
    }
.end annotation


# direct methods
.method public static executePost(Lio/bidmachine/media3/datasource/DataSource;Ljava/lang/String;[BLjava/util/Map;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 161
    new-instance v1, Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/datasource/StatsDataSource;-><init>(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 163
    new-instance p0, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 165
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 167
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setHttpMethod(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setHttpBody([B)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v3

    const/4 p0, 0x0

    move-object p1, v3

    .line 174
    :goto_26
    :try_start_26
    new-instance p2, Lio/bidmachine/media3/datasource/DataSourceInputStream;

    invoke-direct {p2, v1, p1}, Lio/bidmachine/media3/datasource/DataSourceInputStream;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_33

    .line 176
    :try_start_2b
    invoke-static {p2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_2f
    .catch Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_2b .. :try_end_2f} :catch_3a
    .catchall {:try_start_2b .. :try_end_2f} :catchall_37

    .line 185
    :try_start_2f
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception v0

    move-object p0, v0

    move-object v8, p0

    goto :goto_59

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_55

    :catch_3a
    move-exception v0

    move-object p3, v0

    .line 178
    :try_start_3c
    invoke-static {p3, p0}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->getRedirectUrl(Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    add-int/lit8 p0, p0, 0x1

    .line 183
    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec;->buildUpon()Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_37

    .line 185
    :try_start_50
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_33

    goto :goto_26

    .line 180
    :cond_54
    :try_start_54
    throw p3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_37

    .line 185
    :goto_55
    :try_start_55
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    throw p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_33

    .line 189
    :goto_59
    new-instance v2, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;

    .line 191
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v4

    .line 192
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 193
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v6

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Lio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v2
.end method

.method public static getErrorCodeForMediaDrmException(Ljava/lang/Throwable;I)I
    .registers 5

    .line 88
    instance-of v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v0, :cond_13

    .line 90
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    .line 92
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    return p0

    .line 93
    :cond_13
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x1776

    if-lt v0, v1, :cond_22

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil$Api23;->isMediaDrmResetException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v2

    .line 95
    :cond_22
    instance-of v0, p0, Landroid/media/NotProvisionedException;

    const/16 v1, 0x1772

    if-nez v0, :cond_5f

    .line 96
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_5f

    .line 98
    :cond_2f
    instance-of v0, p0, Landroid/media/DeniedByServerException;

    if-eqz v0, :cond_36

    const/16 p0, 0x1777

    return p0

    .line 100
    :cond_36
    instance-of v0, p0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v0, :cond_3d

    const/16 p0, 0x1771

    return p0

    .line 102
    :cond_3d
    instance-of v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v0, :cond_44

    const/16 p0, 0x1773

    return p0

    .line 104
    :cond_44
    instance-of p0, p0, Lio/bidmachine/media3/exoplayer/drm/KeysExpiredException;

    if-eqz p0, :cond_4b

    const/16 p0, 0x1778

    return p0

    :cond_4b
    const/4 p0, 0x1

    if-ne p1, p0, :cond_4f

    return v2

    :cond_4f
    const/4 p0, 0x2

    if-ne p1, p0, :cond_55

    const/16 p0, 0x1774

    return p0

    :cond_55
    const/4 p0, 0x3

    if-ne p1, p0, :cond_59

    return v1

    .line 116
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5f
    :goto_5f
    return v1
.end method

.method public static getRedirectUrl(Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;
    .registers 5

    .line 203
    iget v0, p0, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x133

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x134

    if-ne v0, v1, :cond_2a

    :cond_b
    const/4 v0, 0x5

    if-ge p1, v0, :cond_2a

    .line 209
    iget-object p0, p0, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    if-eqz p0, :cond_2a

    .line 211
    const-string p1, "Location"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2a

    .line 212
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    const/4 p1, 0x0

    .line 213
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2a
    return-object v2
.end method

.method public static isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z
    .registers 3

    .line 125
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1e

    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_1e

    .line 127
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Landroid/media/NotProvisionedException;.<init>("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static isFailureToConstructResourceBusyException(Ljava/lang/Throwable;)Z
    .registers 3

    .line 136
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1e

    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_1e

    .line 138
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 139
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Landroid/media/ResourceBusyException;.<init>("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DrmUtil.Api23 (io.bidmachine.media3.exoplayer.drm.DrmUtil$Api23)
.class public final Lio/bidmachine/media3/exoplayer/drm/DrmUtil$Api23;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static isMediaDrmResetException(Ljava/lang/Throwable;)Z
    .registers 1

    .line 223
    instance-of p0, p0, Landroid/media/MediaDrmResetException;

    return p0
.end method
