###### Class io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy (io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;,
        Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;,
        Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    }
.end annotation


# virtual methods
.method public abstract getFallbackSelectionFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;
.end method

.method public abstract getMinimumLoadableRetryCount(I)I
.end method

.method public abstract getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
.end method

.method public onLoadTaskConcluded(J)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy.FallbackOptions (io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy$FallbackOptions)
.class public final Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackOptions"
.end annotation


# instance fields
.field public final numberOfExcludedLocations:I

.field public final numberOfExcludedTracks:I

.field public final numberOfLocations:I

.field public final numberOfTracks:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfLocations:I

    .line 124
    iput p2, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedLocations:I

    .line 125
    iput p3, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfTracks:I

    .line 126
    iput p4, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedTracks:I

    return-void
.end method


# virtual methods
.method public isFallbackAvailable(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 132
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfLocations:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedLocations:I

    sub-int/2addr p1, v2

    if-le p1, v1, :cond_c

    return v1

    :cond_c
    return v0

    .line 133
    :cond_d
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfTracks:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedTracks:I

    sub-int/2addr p1, v2

    if-le p1, v1, :cond_15

    return v1

    :cond_15
    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy.FallbackSelection (io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy$FallbackSelection)
.class public final Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackSelection"
.end annotation


# instance fields
.field public final exclusionDurationMs:J

.field public final type:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 153
    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 154
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    .line 155
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy.LoadErrorInfo (io.bidmachine.media3.exoplayer.upstream.LoadErrorHandlingPolicy$LoadErrorInfo)
.class public final Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorInfo"
.end annotation


# instance fields
.field public final errorCount:I

.field public final exception:Ljava/io/IOException;

.field public final loadEventInfo:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final mediaLoadData:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->loadEventInfo:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    .line 97
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->mediaLoadData:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 98
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    .line 99
    iput p4, p0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    return-void
.end method
