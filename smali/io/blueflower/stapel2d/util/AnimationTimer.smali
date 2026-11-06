###### Class io.blueflower.stapel2d.util.AnimationTimer (io.blueflower.stapel2d.util.AnimationTimer)
.class public Lio/blueflower/stapel2d/util/AnimationTimer;
.super Ljava/lang/Object;
.source "AnimationTimer.java"


# instance fields
.field public duration:J

.field public running:Z

.field public startTime:J

.field public state:Z


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->duration:J

    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 7

    .line 27
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->running:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_25

    .line 28
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/AnimationTimer;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1e

    .line 29
    iget-wide v4, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->duration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    goto :goto_1e

    :cond_1a
    long-to-float v0, v2

    long-to-float v1, v4

    div-float/2addr v0, v1

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->running:Z

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->state:Z

    return v1

    .line 37
    :cond_25
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->state:Z

    if-eqz v0, :cond_2a

    return v1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public final getTime()J
    .registers 3

    .line 42
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->running:Z

    .line 22
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/AnimationTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->startTime:J

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/AnimationTimer;->state:Z

    return-void
.end method
