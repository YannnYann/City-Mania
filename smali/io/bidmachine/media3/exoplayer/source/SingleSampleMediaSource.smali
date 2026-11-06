###### Class io.bidmachine.media3.exoplayer.source.SingleSampleMediaSource (io.bidmachine.media3.exoplayer.source.SingleSampleMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

.field public final downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public final durationUs:J

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public final timeline:Lio/bidmachine/media3/common/Timeline;

.field public transferListener:Lio/bidmachine/media3/datasource/TransferListener;

.field public final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;Lio/bidmachine/media3/datasource/DataSource$Factory;JLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/common/base/Supplier;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;",
            "Lio/bidmachine/media3/datasource/DataSource$Factory;",
            "J",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Z",
            "Ljava/lang/Object;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 194
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 195
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->durationUs:J

    .line 196
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 197
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 198
    new-instance p3, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {p3}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    sget-object p6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 200
    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p3

    iget-object p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 201
    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p3

    .line 202
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p6

    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p3

    move-object/from16 p6, p8

    .line 203
    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object p3

    .line 204
    invoke-virtual {p3}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v7

    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 205
    new-instance p3, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p3}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const-string p7, "text/x-unknown"

    .line 207
    invoke-static {p6, p7}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    iget-object p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 208
    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    iget p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 209
    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    iget p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 210
    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    iget-object p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 211
    invoke-virtual {p3, p6}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    .line 212
    iget-object p6, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz p6, :cond_64

    move-object p1, p6

    :cond_64
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->format:Lio/bidmachine/media3/common/Format;

    .line 214
    new-instance p1, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object p2, p2, Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 216
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 217
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 219
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide v1, p4

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->timeline:Lio/bidmachine/media3/common/Timeline;

    move-object/from16 p1, p9

    .line 227
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;Lio/bidmachine/media3/datasource/DataSource$Factory;JLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/common/base/Supplier;Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$1;)V
    .registers 11

    .line 52
    invoke-direct/range {p0 .. p9}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;Lio/bidmachine/media3/datasource/DataSource$Factory;JLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 16

    .line 250
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->format:Lio/bidmachine/media3/common/Format;

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 257
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 259
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    :goto_1e
    move-object v10, p1

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    goto :goto_1e

    :goto_22
    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaPeriod;-><init>(Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/common/Format;JLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ZLio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V

    return-object v0
.end method

.method public getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    .line 234
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 240
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 264
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaPeriod;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.SingleSampleMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.SingleSampleMediaSource$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$1;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.source.SingleSampleMediaSource.Factory (io.bidmachine.media3.exoplayer.source.SingleSampleMediaSource$Factory)
.class public final Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public tag:Ljava/lang/Object;

.field public trackId:Ljava/lang/String;

.field public treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/datasource/DataSource$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 73
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-void
.end method


# virtual methods
.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;J)Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;
    .registers 15

    .line 161
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    const/4 v10, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/MediaItem$SubtitleConfiguration;Lio/bidmachine/media3/datasource/DataSource$Factory;JLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/common/base/Supplier;Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$1;)V

    return-object v0
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_8

    .line 116
    :cond_3
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    :goto_8
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method
