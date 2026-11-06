###### Class io.bidmachine.media3.exoplayer.video.FixedFrameRateEstimator (io.bidmachine.media3.exoplayer.video.FixedFrameRateEstimator)
.class public final Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;
    }
.end annotation


# instance fields
.field public candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

.field public candidateMatcherActive:Z

.field public currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

.field public framesWithoutSyncCount:I

.field public lastFramePresentationTimeNs:J

.field public switchToCandidateMatcherWhenSynced:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 51
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    return-void
.end method


# virtual methods
.method public getFrameDurationNs()J
    .registers 3

    .line 120
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getFrameRate()F
    .registers 5

    .line 129
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-float v0, v2

    return v0

    :cond_15
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getFramesWithoutSyncCount()I
    .registers 2

    .line 103
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return v0
.end method

.method public getMatchingFrameDurationSumNs()J
    .registers 3

    .line 111
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->getMatchingFrameDurationSumNs()J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public isSynced()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    return v0
.end method

.method public onNextFrame(J)V
    .registers 10

    .line 70
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 71
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    if-nez v0, :cond_16

    .line 72
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    goto :goto_40

    .line 73
    :cond_16
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_40

    .line 74
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isLastFrameOutlier()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 77
    :cond_2d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 78
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 80
    :cond_39
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 83
    :cond_40
    :goto_40
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 86
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 87
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 88
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 89
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 90
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    .line 92
    :cond_58
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 93
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_67

    :cond_63
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    add-int/lit8 v2, p1, 0x1

    :goto_67
    iput v2, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return-void
.end method

.method public reset()V
    .registers 4

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 58
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 61
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.FixedFrameRateEstimator.Matcher (io.bidmachine.media3.exoplayer.video.FixedFrameRateEstimator$Matcher)
.class public final Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Matcher"
.end annotation


# instance fields
.field public firstFrameDurationNs:J

.field public firstFramePresentationTimeNs:J

.field public frameCount:J

.field public lastFramePresentationTimeNs:J

.field public matchingFrameCount:J

.field public matchingFrameDurationSumNs:J

.field public recentFrameOutlierCount:I

.field public final recentFrameOutlierFlags:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 158
    new-array v0, v0, [Z

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    return-void
.end method

.method public static getRecentFrameOutlierIndex(J)I
    .registers 4

    const-wide/16 v0, 0xf

    .line 221
    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getFrameDurationNs()J
    .registers 6

    .line 186
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    :cond_9
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public getMatchingFrameDurationSumNs()J
    .registers 3

    .line 182
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    return-wide v0
.end method

.method public isLastFrameOutlier()Z
    .registers 6

    .line 175
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_a
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->getRecentFrameOutlierIndex(J)I

    move-result v0

    aget-boolean v0, v2, v0

    return v0
.end method

.method public isSynced()Z
    .registers 5

    .line 170
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onNextFrame(J)V
    .registers 12

    .line 190
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_d

    .line 191
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    goto :goto_5a

    :cond_d
    cmp-long v2, v0, v3

    if-nez v2, :cond_1c

    .line 194
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    .line 195
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 196
    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    goto :goto_5a

    .line 198
    :cond_1c
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    sub-long v5, p1, v5

    .line 199
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->getRecentFrameOutlierIndex(J)I

    move-result v0

    .line 200
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0xf4240

    cmp-long v1, v1, v7

    const/4 v2, 0x1

    if-gtz v1, :cond_4d

    .line 202
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    .line 203
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    .line 204
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v5, v1, v0

    if-eqz v5, :cond_5a

    const/4 v5, 0x0

    .line 205
    aput-boolean v5, v1, v0

    .line 206
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    goto :goto_5a

    .line 209
    :cond_4d
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v5, v1, v0

    if-nez v5, :cond_5a

    .line 210
    aput-boolean v2, v1, v0

    .line 211
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    .line 216
    :cond_5a
    :goto_5a
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    .line 217
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    .line 163
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    .line 164
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    .line 166
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method
