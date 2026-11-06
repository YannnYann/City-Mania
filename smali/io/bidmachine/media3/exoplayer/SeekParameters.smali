###### Class io.bidmachine.media3.exoplayer.SeekParameters (io.bidmachine.media3.exoplayer.SeekParameters)
.class public final Lio/bidmachine/media3/exoplayer/SeekParameters;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# static fields
.field public static final CLOSEST_SYNC:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public static final EXACT:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public static final NEXT_SYNC:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public static final PREVIOUS_SYNC:Lio/bidmachine/media3/exoplayer/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 42
    new-instance v0, Lio/bidmachine/media3/exoplayer/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/bidmachine/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/SeekParameters;->EXACT:Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 45
    new-instance v3, Lio/bidmachine/media3/exoplayer/SeekParameters;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Lio/bidmachine/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v3, Lio/bidmachine/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 49
    new-instance v3, Lio/bidmachine/media3/exoplayer/SeekParameters;

    invoke-direct {v3, v4, v5, v1, v2}, Lio/bidmachine/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v3, Lio/bidmachine/media3/exoplayer/SeekParameters;->PREVIOUS_SYNC:Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 52
    new-instance v3, Lio/bidmachine/media3/exoplayer/SeekParameters;

    invoke-direct {v3, v1, v2, v4, v5}, Lio/bidmachine/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v3, Lio/bidmachine/media3/exoplayer/SeekParameters;->NEXT_SYNC:Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 55
    sput-object v0, Lio/bidmachine/media3/exoplayer/SeekParameters;->DEFAULT:Lio/bidmachine/media3/exoplayer/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 10

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_d

    move v2, v4

    goto :goto_e

    :cond_d
    move v2, v3

    .line 76
    :goto_e
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_16

    move v3, v4

    .line 77
    :cond_16
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 78
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    .line 79
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/SeekParameters;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 125
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 126
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 132
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolveSeekPositionUs(JJJ)J
    .registers 15

    .line 93
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_f

    return-wide p1

    :cond_f
    const-wide/high16 v4, -0x8000000000000000L

    move-wide v0, p1

    .line 97
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide p1

    .line 98
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    cmp-long v4, p1, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_2d

    cmp-long v4, p3, v2

    if-gtz v4, :cond_2d

    move v4, v6

    goto :goto_2e

    :cond_2d
    move v4, v5

    :goto_2e
    cmp-long v7, p1, p5

    if-gtz v7, :cond_37

    cmp-long v2, p5, v2

    if-gtz v2, :cond_37

    move v5, v6

    :cond_37
    if-eqz v4, :cond_4c

    if-eqz v5, :cond_4c

    sub-long p1, p3, v0

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    sub-long v0, p5, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_51

    goto :goto_4e

    :cond_4c
    if-eqz v4, :cond_4f

    :goto_4e
    return-wide p3

    :cond_4f
    if-eqz v5, :cond_52

    :cond_51
    return-wide p5

    :cond_52
    return-wide p1
.end method
