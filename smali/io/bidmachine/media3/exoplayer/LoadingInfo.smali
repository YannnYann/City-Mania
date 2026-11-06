###### Class io.bidmachine.media3.exoplayer.LoadingInfo (io.bidmachine.media3.exoplayer.LoadingInfo)
.class public final Lio/bidmachine/media3/exoplayer/LoadingInfo;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;
    }
.end annotation


# instance fields
.field public final lastRebufferRealtimeMs:J

.field public final playbackPositionUs:J

.field public final playbackSpeed:F


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->access$100(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    .line 117
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->access$200(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    .line 118
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->access$300(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;Lio/bidmachine/media3/exoplayer/LoadingInfo$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo;-><init>(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;
    .registers 3

    .line 123
    new-instance v0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>(Lio/bidmachine/media3/exoplayer/LoadingInfo;Lio/bidmachine/media3/exoplayer/LoadingInfo$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 144
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 147
    :cond_a
    check-cast p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;

    .line 148
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_25

    iget v1, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    iget v3, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_25

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 155
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.LoadingInfo.AnonymousClass1 (io.bidmachine.media3.exoplayer.LoadingInfo$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/LoadingInfo$1;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/LoadingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.LoadingInfo.Builder (io.bidmachine.media3.exoplayer.LoadingInfo$Builder)
.class public final Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/LoadingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public lastRebufferRealtimeMs:J

.field public playbackPositionUs:J

.field public playbackSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    const v2, -0x800001

    .line 40
    iput v2, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    .line 41
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/LoadingInfo;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    .line 46
    iget v0, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    iput v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    .line 47
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/LoadingInfo;Lio/bidmachine/media3/exoplayer/LoadingInfo$1;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>(Lio/bidmachine/media3/exoplayer/LoadingInfo;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)J
    .registers 3

    .line 32
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)F
    .registers 1

    .line 32
    iget p0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;)J
    .registers 3

    .line 32
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-wide v0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/LoadingInfo;
    .registers 3

    .line 85
    new-instance v0, Lio/bidmachine/media3/exoplayer/LoadingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo;-><init>(Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;Lio/bidmachine/media3/exoplayer/LoadingInfo$1;)V

    return-object v0
.end method

.method public setLastRebufferRealtimeMs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 78
    :goto_13
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-object p0
.end method

.method public setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;
    .registers 3

    .line 53
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    return-object p0
.end method

.method public setPlaybackSpeed(F)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_f

    const v0, -0x800001

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 65
    :goto_10
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 66
    iput p1, p0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    return-object p0
.end method
