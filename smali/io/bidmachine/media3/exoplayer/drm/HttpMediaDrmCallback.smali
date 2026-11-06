###### Class io.bidmachine.media3.exoplayer.drm.HttpMediaDrmCallback (io.bidmachine.media3.exoplayer.drm.HttpMediaDrmCallback)
.class public final Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;


# instance fields
.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final defaultLicenseUrl:Ljava/lang/String;

.field public final forceDefaultLicenseUrl:Z

.field public final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 76
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 77
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 78
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 129
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->getLicenseServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v1, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 131
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 133
    :cond_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    sget-object v2, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 145
    const-string v3, "text/xml"

    goto :goto_33

    .line 146
    :cond_26
    sget-object v3, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "application/json"

    goto :goto_33

    :cond_31
    const-string v3, "application/octet-stream"

    .line 147
    :goto_33
    const-string v4, "Content-Type"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 149
    const-string p1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_45
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter p1

    .line 154
    :try_start_48
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 155
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_5d

    .line 156
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 157
    invoke-interface {p1}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p1

    .line 159
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object p2

    .line 156
    invoke-static {p1, v0, p2, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->executePost(Lio/bidmachine/media3/datasource/DataSource;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1

    :catchall_5d
    move-exception v0

    move-object p2, v0

    .line 155
    :try_start_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5d

    throw p2

    .line 134
    :cond_61
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;

    new-instance p1, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 135
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v1

    .line 137
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string p1, "No license URL"

    invoke-direct {v6, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Lio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v0
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&signedRequest="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 121
    invoke-interface {p2}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p2

    const/4 v0, 0x0

    .line 124
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 120
    invoke-static {p2, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->executePost(Lio/bidmachine/media3/datasource/DataSource;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 89
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_9
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p1
.end method
