###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory)
.class public final Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;,
        Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;
    }
.end annotation


# instance fields
.field public dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public externalImageLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

.field public liveMaxOffsetMs:J

.field public liveMaxSpeed:F

.field public liveMinOffsetMs:J

.field public liveMinSpeed:F

.field public liveTargetOffsetMs:J

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public parseSubtitlesDuringExtraction:Z

.field public serverSideAdInsertionMediaSourceFactory:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

.field public subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public static synthetic $r8$lambda$CtLSudEHHYZR2mecqez4x4wudSA(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;Lio/bidmachine/media3/common/Format;)[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 537
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 537
    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 538
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 539
    invoke-interface {p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser;Lio/bidmachine/media3/common/Format;)V

    goto :goto_1a

    .line 540
    :cond_15
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;-><init>(Lio/bidmachine/media3/common/Format;)V

    :goto_1a
    const/4 p0, 0x1

    new-array p0, p0, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V
    .registers 4

    .line 149
    new-instance v0, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V
    .registers 5

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 182
    new-instance v0, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 183
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {v1, p2, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Lio/bidmachine/media3/extractor/ExtractorsFactory;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 184
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDataSourceFactory(Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 185
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 186
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 187
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    .line 188
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 189
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->parseSubtitlesDuringExtraction:Z

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Class;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 1

    .line 101
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 101
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static maybeClipMediaSource(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/source/MediaSource;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 7

    .line 581
    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    iget-wide v1, v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    iget-boolean v0, v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v0, :cond_17

    return-object p1

    .line 586
    :cond_17
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    iget-object p1, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, p1, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 587
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->setStartPositionUs(J)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 588
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->setEndPositionUs(J)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v0, v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v0, v0, 0x1

    .line 589
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->setEnableInitialDiscontinuity(Z)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v0, v0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 590
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->setAllowDynamicClippingUpdates(Z)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    iget-object p0, p0, Lio/bidmachine/media3/common/MediaItem;->clippingConfiguration:Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean p0, p0, Lio/bidmachine/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 591
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->setRelativeToDefaultPosition(Z)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->build()Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/Class;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 866
    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Lio/bidmachine/media3/datasource/DataSource$Factory;",
            ")",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;"
        }
    .end annotation

    .line 858
    :try_start_0
    const-class v0, Lio/bidmachine/media3/datasource/DataSource$Factory;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 860
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 12

    .line 467
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 469
    const-string v1, "ssai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 470
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 472
    :cond_24
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string v1, "application/x-image-uri"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 474
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;

    iget-object v1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-wide v1, v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    .line 475
    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->externalImageLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    .line 476
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;-><init>(JLio/bidmachine/media3/exoplayer/source/ExternalLoader;)V

    .line 477
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;

    move-result-object p1

    return-object p1

    .line 480
    :cond_4a
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v0, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 481
    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 483
    iget-object v1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-wide v1, v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_67

    .line 484
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setJpegExtractorFlags(I)V

    .line 489
    :cond_67
    :try_start_67
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getMediaSourceFactory(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_6d} :catch_1cd

    .line 493
    iget-object v1, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 494
    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->buildUpon()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 495
    iget-object v5, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v5, v5, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_80

    .line 496
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    invoke-virtual {v1, v5, v6}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 498
    :cond_80
    iget-object v5, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget v5, v5, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-nez v5, :cond_90

    .line 499
    iget v5, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 501
    :cond_90
    iget-object v5, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget v5, v5, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_9d

    .line 502
    iget v5, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 504
    :cond_9d
    iget-object v5, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v5, v5, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_aa

    .line 505
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    invoke-virtual {v1, v5, v6}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 507
    :cond_aa
    iget-object v5, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v5, v5, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_b7

    .line 508
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    invoke-virtual {v1, v5, v6}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 510
    :cond_b7
    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    move-result-object v1

    .line 512
    iget-object v5, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 513
    invoke-virtual {p1}, Lio/bidmachine/media3/common/MediaItem;->buildUpon()Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setLiveConfiguration(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object p1

    .line 516
    :cond_cf
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;

    move-result-object v0

    .line 518
    iget-object v1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    .line 519
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 520
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c4

    .line 521
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    new-array v2, v5, [Lio/bidmachine/media3/exoplayer/source/MediaSource;

    const/4 v5, 0x0

    .line 522
    aput-object v0, v2, v5

    move v0, v5

    .line 523
    :goto_ee
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1bf

    .line 524
    iget-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->parseSubtitlesDuringExtraction:Z

    if-eqz v6, :cond_19f

    .line 525
    new-instance v6, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v6}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 527
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 528
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 529
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget v7, v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 530
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget v7, v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 531
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 532
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 533
    invoke-virtual {v6}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v6

    .line 534
    new-instance v7, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v6}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;Lio/bidmachine/media3/common/Format;)V

    .line 542
    new-instance v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-direct {v8, v9, v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V

    .line 546
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v7, v6}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_17b

    .line 548
    invoke-virtual {v6}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    const-string v9, "application/x-media3-cues"

    .line 549
    invoke-virtual {v7, v9}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    iget-object v9, v6, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 550
    invoke-virtual {v7, v9}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 552
    invoke-interface {v9, v6}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I

    move-result v6

    .line 551
    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/Format$Builder;->setCueReplacementBehavior(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    .line 553
    invoke-virtual {v6}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v6

    .line 544
    :cond_17b
    invoke-virtual {v8, v5, v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->enableLazyLoadingWithSingleTrack(ILio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object v6

    .line 555
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v7, :cond_186

    .line 556
    invoke-virtual {v6, v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    :cond_186
    add-int/lit8 v7, v0, 0x1

    .line 560
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v8, v8, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/bidmachine/media3/common/MediaItem;->fromUri(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem;

    move-result-object v8

    .line 559
    invoke-virtual {v6, v8}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object v6

    aput-object v6, v2, v7

    goto :goto_1bb

    .line 562
    :cond_19f
    new-instance v6, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-direct {v6, v7}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    .line 564
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v7, :cond_1ad

    .line 565
    invoke-virtual {v6, v7}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    :cond_1ad
    add-int/lit8 v7, v0, 0x1

    .line 569
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;

    .line 568
    invoke-virtual {v6, v8, v3, v4}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;J)Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;

    move-result-object v6

    aput-object v6, v2, v7

    :goto_1bb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_ee

    .line 573
    :cond_1bf
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;-><init>([Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    .line 575
    :cond_1c4
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->maybeClipMediaSource(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/source/MediaSource;)Lio/bidmachine/media3/exoplayer/source/MediaSource;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->maybeWrapWithAdsMediaSource(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/source/MediaSource;)Lio/bidmachine/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1

    :catch_1cd
    move-exception p1

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->parseSubtitlesDuringExtraction:Z

    .line 200
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setParseSubtitlesDuringExtraction(Z)V

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
    .registers 3

    .line 219
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setCodecsToParseWithinGopSampleDependencies(I)V

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public final maybeWrapWithAdsMediaSource(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/source/MediaSource;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 4

    .line 596
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method public setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
    .registers 3

    .line 425
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V

    return-object p0
.end method

.method public bridge synthetic setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
    .registers 4

    .line 434
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 435
    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 434
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)V

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
    .registers 3

    .line 448
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 449
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 454
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)V

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
    .registers 3

    .line 209
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory.DelegateFactoryLoader (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader)
.class public final Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field public cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

.field public codecsToParseWithinGopSampleDependencies:I

.field public dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

.field public final extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field public parseSubtitlesDuringExtraction:Z

.field public subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public static synthetic $r8$lambda$02Ag92APX3ryBmUyXp7TDemy9J4(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 787
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IUsrEJ2l09JExQyItiL1S8zFM0s(Ljava/lang/Class;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 1

    .line 799
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->access$000(Ljava/lang/Class;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SgS7-MhzFTfR7cPWGP9hUgCiYDc(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 793
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fX5DWqlMzQ0C_zY3q7qxxNHCCew(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 781
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nudpevM-vSfk6krBX4YDJYpev4s(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/ExtractorsFactory;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V
    .registers 3

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    .line 646
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 647
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 648
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    const/4 p1, 0x1

    .line 649
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->parseSubtitlesDuringExtraction:Z

    return-void
.end method


# virtual methods
.method public getMediaSourceFactory(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    if-eqz v0, :cond_f

    return-object v0

    .line 664
    :cond_f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v0

    .line 666
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 667
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    if-eqz v1, :cond_20

    .line 668
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 670
    :cond_20
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    if-eqz v1, :cond_27

    .line 671
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 673
    :cond_27
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v1, :cond_2e

    .line 674
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 676
    :cond_2e
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 677
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->parseSubtitlesDuringExtraction:Z

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 678
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->codecsToParseWithinGopSampleDependencies:I

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 680
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final loadSupplier(I)Lcom/google/common/base/Supplier;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    if-eqz v0, :cond_f

    return-object v0

    .line 774
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 776
    const-class v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    if-eqz p1, :cond_73

    const/4 v2, 0x1

    if-eq p1, v2, :cond_63

    const/4 v2, 0x2

    if-eq p1, v2, :cond_54

    const/4 v2, 0x3

    if-eq p1, v2, :cond_44

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    .line 802
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    goto :goto_81

    .line 806
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized contentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_44
    const-string v0, "io.bidmachine.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    .line 797
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 799
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    goto :goto_81

    .line 791
    :cond_54
    sget v2, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->$r8$clinit:I

    .line 792
    const-class v2, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 793
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    :goto_61
    move-object v1, v2

    goto :goto_81

    .line 784
    :cond_63
    const-string v2, "io.bidmachine.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    .line 785
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 786
    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 787
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    goto :goto_61

    .line 779
    :cond_73
    sget v2, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->$r8$clinit:I

    .line 780
    const-class v2, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 781
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    goto :goto_61

    .line 809
    :goto_81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V
    .registers 4

    .line 719
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 720
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 721
    invoke-interface {v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setCodecsToParseWithinGopSampleDependencies(I)V
    .registers 3

    .line 713
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->codecsToParseWithinGopSampleDependencies:I

    .line 714
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/ExtractorsFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public setDataSourceFactory(Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 685
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    if-eq p1, v0, :cond_10

    .line 686
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 689
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 690
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_10
    return-void
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)V
    .registers 4

    .line 726
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 727
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 728
    invoke-interface {v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setJpegExtractorFlags(I)V
    .registers 4

    .line 740
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    instance-of v1, v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    if-eqz v1, :cond_b

    .line 741
    check-cast v0, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;->setJpegExtractorFlags(I)Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    :cond_b
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)V
    .registers 4

    .line 733
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 734
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 735
    invoke-interface {v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setParseSubtitlesDuringExtraction(Z)V
    .registers 4

    .line 695
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->parseSubtitlesDuringExtraction:Z

    .line 696
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/ExtractorsFactory;->experimentalSetTextTrackTranscodingEnabled(Z)Lio/bidmachine/media3/extractor/ExtractorsFactory;

    .line 697
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 698
    invoke-interface {v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_11

    :cond_21
    return-void
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V
    .registers 4

    .line 704
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 705
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/ExtractorsFactory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/extractor/ExtractorsFactory;

    .line 706
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 707
    invoke-interface {v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_11

    :cond_21
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->$r8$lambda$fX5DWqlMzQ0C_zY3q7qxxNHCCew(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->$r8$lambda$02Ag92APX3ryBmUyXp7TDemy9J4(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->$r8$lambda$SgS7-MhzFTfR7cPWGP9hUgCiYDc(Ljava/lang/Class;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->$r8$lambda$IUsrEJ2l09JExQyItiL1S8zFM0s(Ljava/lang/Class;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public final synthetic f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->$r8$lambda$nudpevM-vSfk6krBX4YDJYpev4s(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lio/bidmachine/media3/datasource/DataSource$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory.UnknownSubtitlesExtractor (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$UnknownSubtitlesExtractor)
.class public final Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownSubtitlesExtractor"
.end annotation


# instance fields
.field public final format:Lio/bidmachine/media3/common/Format;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;)V
    .registers 2

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 828
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    .line 829
    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 830
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 831
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lio/bidmachine/media3/common/Format;

    .line 833
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const-string v1, "text/x-unknown"

    .line 834
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lio/bidmachine/media3/common/Format;

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 835
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 836
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 831
    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p2, 0x7fffffff

    .line 841
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skip(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_b

    return p2

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/Format;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;->$r8$lambda$CtLSudEHHYZR2mecqez4x4wudSA(Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;Lio/bidmachine/media3/common/Format;)[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
