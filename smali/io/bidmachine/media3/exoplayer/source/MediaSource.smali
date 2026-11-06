###### Class io.bidmachine.media3.exoplayer.source.MediaSource (io.bidmachine.media3.exoplayer.source.MediaSource)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;,
        Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;,
        Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addDrmEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V
.end method

.method public abstract addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.end method

.method public abstract disable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract enable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public getInitialTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMediaItem()Lio/bidmachine/media3/common/MediaItem;
.end method

.method public isSingleWindow()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
.end method

.method public abstract releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract removeDrmEventListener(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V
.end method

.method public abstract removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
.end method

.method public updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSource.Factory (io.bidmachine.media3.exoplayer.source.MediaSource$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final UNSUPPORTED:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;->UNSUPPORTED:Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->UNSUPPORTED:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public abstract createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public abstract setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
.end method

.method public abstract setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSource.MediaPeriodId (io.bidmachine.media3.exoplayer.source.MediaSource$MediaPeriodId)
.class public final Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final nextAdGroupIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final windowSequenceNumber:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 228
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 277
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJI)V
    .registers 7

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 292
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 293
    iput p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 294
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 295
    iput p6, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 11

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 239
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .registers 12

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 257
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 10

    .line 300
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 302
    :cond_9
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 324
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 328
    :cond_a
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 329
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v3, :cond_31

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v3, :cond_31

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_31

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v1, p1, :cond_31

    return v0

    :cond_31
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 339
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 340
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 341
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 342
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 343
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    add-int/2addr v1, v0

    return v1
.end method

.method public isAd()Z
    .registers 3

    .line 316
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSource.MediaSourceCaller (io.bidmachine.media3.exoplayer.source.MediaSource$MediaSourceCaller)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaSourceCaller"
.end annotation


# virtual methods
.method public abstract onSourceInfoRefreshed(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
.end method
