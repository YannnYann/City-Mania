###### Class io.bidmachine.media3.datasource.DefaultDataSource (io.bidmachine.media3.datasource.DefaultDataSource)
.class public final Lio/bidmachine/media3/datasource/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lio/bidmachine/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;
    }
.end annotation


# instance fields
.field public assetDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final baseDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public contentDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final context:Landroid/content/Context;

.field public dataSchemeDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public dataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public fileDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public rawResourceDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final transferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/datasource/TransferListener;",
            ">;"
        }
    .end annotation
.end field

.field public udpDataSource:Lio/bidmachine/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/datasource/DataSource;)V
    .registers 3

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    .line 227
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/datasource/DataSource;

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->baseDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V
    .registers 4

    const/4 v0, 0x0

    .line 380
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 381
    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/datasource/TransferListener;

    invoke-interface {p1, v1}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 3

    .line 234
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->baseDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 236
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->fileDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 238
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->assetDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->contentDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 240
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 241
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->udpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 242
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 243
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rawResourceDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 302
    :try_start_5
    invoke-interface {v0}, Lio/bidmachine/media3/datasource/DataSource;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 304
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-void

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 305
    throw v0

    :cond_f
    return-void
.end method

.method public final getAssetDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 3

    .line 326
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->assetDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_10

    .line 327
    new-instance v0, Lio/bidmachine/media3/datasource/AssetDataSource;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/datasource/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->assetDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 328
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 330
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->assetDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public final getContentDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 3

    .line 334
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->contentDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_10

    .line 335
    new-instance v0, Lio/bidmachine/media3/datasource/ContentDataSource;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/datasource/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->contentDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 336
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 338
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->contentDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public final getDataSchemeDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 2

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_e

    .line 365
    new-instance v0, Lio/bidmachine/media3/datasource/DataSchemeDataSource;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 366
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 368
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public final getFileDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 2

    .line 318
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->fileDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_e

    .line 319
    new-instance v0, Lio/bidmachine/media3/datasource/FileDataSource;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/FileDataSource;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->fileDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 320
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 322
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->fileDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public final getRawResourceDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 3

    .line 372
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rawResourceDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_10

    .line 373
    new-instance v0, Lio/bidmachine/media3/datasource/RawResourceDataSource;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/datasource/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rawResourceDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 374
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 376
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rawResourceDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
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

    .line 294
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_7
    invoke-interface {v0}, Lio/bidmachine/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRtmpDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 4

    .line 342
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_37

    .line 345
    :try_start_4
    const-string v0, "io.bidmachine.media3.datasource.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 346
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/datasource/DataSource;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 348
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_1e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_2f

    :catch_1f
    move-exception v0

    .line 354
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 351
    :catch_28
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_2f
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_37

    .line 357
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->baseDataSource:Lio/bidmachine/media3/datasource/DataSource;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 360
    :cond_37
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->rtmpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public final getUdpDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 2

    .line 310
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->udpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_e

    .line 311
    new-instance v0, Lio/bidmachine/media3/datasource/UdpDataSource;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/UdpDataSource;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->udpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 312
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addListenersToDataSource(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 314
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->udpDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 288
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lio/bidmachine/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final maybeAddListenerToDataSource(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 388
    invoke-interface {p1, p2}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    :cond_5
    return-void
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 251
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 253
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 254
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 255
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getAssetDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto/16 :goto_9e

    .line 257
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getFileDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 259
    :cond_37
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 260
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getAssetDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 261
    :cond_46
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 262
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getContentDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 263
    :cond_55
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 264
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getRtmpDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 265
    :cond_64
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 266
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getUdpDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 267
    :cond_73
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 268
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getDataSchemeDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 269
    :cond_82
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    goto :goto_98

    .line 272
    :cond_93
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->baseDataSource:Lio/bidmachine/media3/datasource/DataSource;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    goto :goto_9e

    .line 270
    :cond_98
    :goto_98
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource;->getRawResourceDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 275
    :goto_9e
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/datasource/DataSource;->open(Lio/bidmachine/media3/datasource/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultDataSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/datasource/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.datasource.DefaultDataSource.Factory (io.bidmachine.media3.datasource.DefaultDataSource$Factory)
.class public final Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lio/bidmachine/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final baseDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final context:Landroid/content/Context;

.field public transferListener:Lio/bidmachine/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 75
    new-instance v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    .line 90
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/datasource/DataSource$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lio/bidmachine/media3/datasource/DefaultDataSource;
    .registers 4

    .line 113
    new-instance v0, Lio/bidmachine/media3/datasource/DefaultDataSource;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 114
    invoke-interface {v2}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Lio/bidmachine/media3/datasource/DataSource;)V

    .line 115
    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    if-eqz v1, :cond_14

    .line 116
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/datasource/DefaultDataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    :cond_14
    return-object v0
.end method
