###### Class io.blueflower.stapel2d.util.VisibilityAnimationTimer (io.blueflower.stapel2d.util.VisibilityAnimationTimer)
.class public Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;
.super Ljava/lang/Object;
.source "VisibilityAnimationTimer.java"


# instance fields
.field public appearingTime:J

.field public disappearingTime:J

.field public issueTime:J

.field public targetState:Z


# direct methods
.method public constructor <init>(ZJ)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->targetState:Z

    .line 15
    iput-wide p2, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->appearingTime:J

    .line 16
    iput-wide p2, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->disappearingTime:J

    return-void
.end method

.method public static getTime()J
    .registers 2

    .line 58
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getState()F
    .registers 10

    .line 36
    iget-wide v0, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->issueTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_37

    .line 37
    invoke-static {}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->getTime()J

    move-result-wide v5

    iget-wide v7, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->issueTime:J

    sub-long/2addr v5, v7

    .line 38
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->targetState:Z

    if-eqz v0, :cond_24

    .line 39
    iget-wide v7, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->appearingTime:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_35

    long-to-float v0, v5

    long-to-float v1, v7

    div-float/2addr v0, v1

    .line 40
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 43
    :cond_24
    iget-wide v7, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->disappearingTime:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_35

    long-to-float v0, v5

    .line 44
    iget-wide v2, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->appearingTime:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 47
    :cond_35
    iput-wide v2, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->issueTime:J

    .line 49
    :cond_37
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->targetState:Z

    if-eqz v0, :cond_3c

    return v4

    :cond_3c
    return v1
.end method

.method public getTargetState()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->targetState:Z

    return v0
.end method

.method public setState(Z)V
    .registers 4

    .line 20
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->targetState:Z

    if-eq p1, v0, :cond_c

    .line 21
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->targetState:Z

    .line 22
    invoke-static {}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->issueTime:J

    :cond_c
    return-void
.end method
