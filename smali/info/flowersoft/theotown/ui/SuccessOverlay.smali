###### Class info.flowersoft.theotown.ui.SuccessOverlay (info.flowersoft.theotown.ui.SuccessOverlay)
.class public Linfo/flowersoft/theotown/ui/SuccessOverlay;
.super Ljava/lang/Object;
.source "SuccessOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;,
        Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;,
        Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;
    }
.end annotation


# static fields
.field public static instance:Linfo/flowersoft/theotown/ui/SuccessOverlay;


# instance fields
.field public ICONS:[I

.field public final defaultPlacement:[I

.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;",
            ">;"
        }
    .end annotation
.end field

.field public lastDisplayMS:J

.field public final particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;",
            ">;"
        }
    .end annotation
.end field

.field public final placements:[[I

.field public final rnd:Ljava/util/Random;

.field public final toasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 37
    new-array v0, v0, [[I

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->placements:[[I

    const/4 v0, 0x0

    .line 38
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->defaultPlacement:[I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->rnd:Ljava/util/Random;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->particles:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 290
    sput-object v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->instance:Linfo/flowersoft/theotown/ui/SuccessOverlay;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;
    .registers 1

    .line 283
    sget-object v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->instance:Linfo/flowersoft/theotown/ui/SuccessOverlay;

    if-nez v0, :cond_b

    .line 284
    new-instance v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/SuccessOverlay;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->instance:Linfo/flowersoft/theotown/ui/SuccessOverlay;

    .line 286
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->instance:Linfo/flowersoft/theotown/ui/SuccessOverlay;

    return-object v0
.end method


# virtual methods
.method public addEvent(ID)V
    .registers 6

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;-><init>()V

    .line 57
    iput p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->type:I

    .line 58
    iput-wide p2, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->amount:D

    const/16 p2, 0xc80

    .line 59
    iput p2, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->targetDisplayTimeMS:I

    .line 61
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_24

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    :goto_25
    if-eqz p2, :cond_3f

    .line 62
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    if-ge p3, v1, :cond_3f

    iget p3, p2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->type:I

    if-eq p3, p1, :cond_3f

    .line 64
    iget p1, p2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->effectiveDisplayedTimeMS:I

    add-int/lit16 p1, p1, -0xbb8

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->effectiveDisplayedTimeMS:I

    .line 67
    :cond_3f
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParticle(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFFLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;I)V
    .registers 13

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;-><init>(Linfo/flowersoft/theotown/ui/SuccessOverlay$1;)V

    .line 73
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->animation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 74
    iput p2, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->x:F

    .line 75
    iput p3, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->y:F

    .line 76
    iput p4, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->xSpeed:F

    .line 77
    iput p5, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->ySpeed:F

    .line 78
    iput p6, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startScale:F

    .line 79
    iput p7, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endScale:F

    .line 80
    iput-object p8, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startColor:Lio/blueflower/stapel2d/drawing/Color;

    if-nez p8, :cond_1c

    .line 81
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 82
    :cond_1c
    iput-object p9, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endColor:Lio/blueflower/stapel2d/drawing/Color;

    if-nez p9, :cond_24

    .line 83
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 84
    :cond_24
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide p1

    iput-wide p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startTime:J

    int-to-long p1, p10

    .line 85
    iput-wide p1, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->lifeTime:J

    .line 86
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->particles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToast(Ljava/lang/String;)V
    .registers 5

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2d

    .line 92
    new-instance v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;-><init>(Linfo/flowersoft/theotown/ui/SuccessOverlay$1;)V

    .line 93
    iput-object p1, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;->text:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_21

    const/16 p1, 0x1f4

    goto :goto_23

    :cond_21
    const/16 p1, 0x7d0

    :goto_23
    iput p1, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;->targetDisplayTimeMS:I

    .line 95
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_2f

    .line 97
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2b

    throw p1
.end method

.method public declared-synchronized draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 112
    :try_start_5
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v11

    .line 113
    iget-wide v3, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->lastDisplayMS:J

    sub-long v3, v11, v3

    long-to-int v0, v3

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v13, 0x0

    if-gez v0, :cond_18

    move v0, v13

    :cond_18
    move v3, v13

    .line 116
    :goto_19
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_53

    .line 117
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;

    .line 118
    iget v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->effectiveDisplayedTimeMS:I

    add-int/2addr v6, v0

    iput v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->effectiveDisplayedTimeMS:I

    int-to-float v6, v6

    .line 119
    iget v7, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->targetDisplayTimeMS:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_45

    cmpg-float v5, v6, v14

    if-gez v5, :cond_45

    .line 121
    invoke-virtual {v1, v2, v4, v6}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->drawEvent(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;F)V

    goto :goto_50

    :catchall_42
    move-exception v0

    goto/16 :goto_1b6

    :cond_45
    cmpl-float v4, v6, v14

    if-ltz v4, :cond_50

    .line 123
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_53
    move v3, v13

    .line 128
    :goto_54
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->particles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/high16 v9, 0x437f0000    # 255.0f

    if-ge v3, v4, :cond_104

    .line 129
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->particles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;

    .line 130
    iget-wide v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startTime:J

    sub-long v6, v11, v6

    long-to-float v6, v6

    iget-wide v7, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->lifeTime:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v7, v6, v5

    if-ltz v7, :cond_f8

    cmpg-float v7, v6, v14

    if-gez v7, :cond_f8

    sub-float v7, v14, v6

    .line 132
    iget-object v8, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 133
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    iget-object v10, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 134
    invoke-virtual {v10}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    iget-object v15, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v6

    add-float/2addr v10, v15

    float-to-int v10, v10

    iget-object v15, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 135
    invoke-virtual {v15}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v7

    iget-object v5, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v15, v5

    float-to-int v5, v15

    .line 132
    invoke-virtual {v2, v8, v10, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 136
    iget v5, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->startScale:F

    mul-float/2addr v5, v7

    iget v8, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->endScale:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 137
    invoke-virtual {v2, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    mul-float/2addr v7, v9

    float-to-int v5, v7

    .line 138
    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 139
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 140
    iget-object v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->animation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v6, v13

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    .line 141
    iget-object v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->animation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v6, v13

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    .line 142
    iget v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->x:F

    iget v7, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->y:F

    iget-object v8, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->animation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v8, v8, v13

    invoke-virtual {v2, v5, v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 143
    iget v5, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->x:F

    iget v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->xSpeed:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iput v5, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->x:F

    .line 144
    iget v5, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->y:F

    iget v6, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->ySpeed:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iput v5, v4, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;->y:F

    goto :goto_ff

    .line 146
    :cond_f8
    iget-object v4, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->particles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :goto_ff
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_54

    .line 151
    :cond_104
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1af

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    if-eqz v3, :cond_1af

    .line 152
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;

    .line 153
    iget v4, v3, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;->displayedTimeMS:I

    int-to-float v5, v4

    iget v6, v3, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;->targetDisplayTimeMS:I

    int-to-float v6, v6

    div-float v15, v5, v6

    add-int/2addr v4, v0

    .line 154
    iput v4, v3, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;->displayedTimeMS:I

    .line 155
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 156
    iget-object v10, v3, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;->text:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    .line 158
    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v4

    .line 159
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v16

    .line 160
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v6, v15, v6

    const/high16 v7, 0x41200000    # 10.0f

    if-gez v6, :cond_147

    mul-float v6, v15, v7

    :goto_144
    move/from16 v17, v6

    goto :goto_156

    :cond_147
    const v6, 0x3f666666    # 0.9f

    cmpl-float v8, v15, v6

    if-lez v8, :cond_154

    sub-float v6, v15, v6

    mul-float/2addr v6, v7

    sub-float v6, v14, v6

    goto :goto_144

    :cond_154
    move/from16 v17, v14

    .line 167
    :goto_156
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 168
    invoke-virtual {v2, v14, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/high16 v6, 0x43340000    # 180.0f

    mul-float v6, v6, v17

    float-to-int v6, v6

    .line 169
    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v6, v3

    .line 170
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    div-int/lit8 v8, v16, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v7

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v6, v18

    sub-float v8, v8, v19

    mul-int/lit8 v19, v5, 0x2

    div-int/lit8 v5, v19, 0x3

    int-to-float v5, v5

    add-float/2addr v7, v4

    div-float v4, v7, v18

    sub-float/2addr v5, v4

    move v4, v8

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 176
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    mul-float v3, v17, v9

    float-to-int v3, v3

    .line 177
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 178
    div-int/lit8 v3, v16, 0x2

    int-to-float v5, v3

    div-int/lit8 v3, v19, 0x3

    int-to-float v6, v3

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v4, v10

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    cmpl-float v0, v15, v14

    if-ltz v0, :cond_1af

    .line 180
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    monitor-enter v2
    :try_end_1a5
    .catchall {:try_start_5 .. :try_end_1a5} :catchall_42

    .line 181
    :try_start_1a5
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->toasts:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    monitor-exit v2

    goto :goto_1af

    :catchall_1ac
    move-exception v0

    monitor-exit v2
    :try_end_1ae
    .catchall {:try_start_1a5 .. :try_end_1ae} :catchall_1ac

    :try_start_1ae
    throw v0

    .line 186
    :cond_1af
    :goto_1af
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 190
    iput-wide v11, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay;->lastDisplayMS:J
    :try_end_1b4
    .catchall {:try_start_1ae .. :try_end_1b4} :catchall_42

    .line 191
    monitor-exit p0

    return-void

    :goto_1b6
    :try_start_1b6
    monitor-exit p0
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_42

    throw v0
.end method

.method public final drawEvent(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;F)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 194
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->ICONS:[I

    if-nez v3, :cond_1c

    .line 195
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_SHORT_BUILD_TIME:I

    filled-new-array/range {v4 .. v9}, [I

    move-result-object v3

    iput-object v3, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->ICONS:[I

    .line 205
    :cond_1c
    iget v3, v2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->type:I

    if-ltz v3, :cond_1ba

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->ICONS:[I

    array-length v5, v4

    if-lt v3, v5, :cond_27

    goto/16 :goto_1ba

    .line 208
    :cond_27
    aget v9, v4, v3

    const/4 v10, 0x1

    if-nez v3, :cond_36

    .line 211
    iget-wide v4, v2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->amount:D

    double-to-int v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v2

    :goto_34
    move-object v11, v2

    goto :goto_4e

    :cond_36
    const/4 v4, 0x3

    if-ne v3, v4, :cond_42

    .line 213
    iget-wide v4, v2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->amount:D

    double-to-int v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeRegionCoins(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    :cond_42
    if-ne v3, v10, :cond_4b

    .line 215
    iget-wide v4, v2, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->amount:D

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 214
    :cond_4b
    const-string v2, ""

    goto :goto_34

    .line 217
    :goto_4e
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->placements:[[I

    aget-object v2, v2, v3

    if-nez v2, :cond_56

    .line 218
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->defaultPlacement:[I

    :cond_56
    move-object v12, v2

    .line 219
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v13, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, p3

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v3, v2, v14

    const/high16 v4, 0x40400000    # 3.0f

    div-float v15, v3, v4

    cmpg-float v8, v2, v14

    if-gez v8, :cond_6c

    goto :goto_6e

    :cond_6c
    sub-float v2, v14, v15

    :goto_6e
    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 224
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 226
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v3

    .line 229
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v4

    const/16 v5, 0x3c

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 230
    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v4, 0x1e

    move/from16 v16, v10

    .line 232
    invoke-virtual {v13, v11}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    .line 233
    invoke-virtual {v13, v11}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v14

    float-to-int v14, v14

    mul-int/lit8 v14, v14, 0x2

    .line 234
    div-int/lit8 v10, v10, 0x2

    sub-int v10, v6, v10

    .line 235
    div-int/lit8 v14, v14, 0x2

    sub-int v14, v7, v14

    .line 237
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 238
    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v6, v2

    .line 239
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 p3, v8

    const/4 v8, 0x0

    int-to-float v5, v8

    int-to-float v4, v4

    int-to-float v3, v3

    const/16 v8, 0x3c

    int-to-float v8, v8

    move/from16 v17, v7

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v21, v5

    move v5, v3

    move/from16 v3, v21

    move/from16 v21, v8

    move v8, v6

    move/from16 v6, v21

    move/from16 v21, v17

    move-object/from16 v17, v12

    move/from16 v12, v21

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move/from16 v19, v5

    .line 240
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 242
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 243
    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    if-gez p3, :cond_fc

    move v3, v2

    .line 244
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v4, v10, -0x1a

    int-to-float v4, v4

    move v5, v3

    move v3, v4

    int-to-float v4, v12

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move v6, v5

    const/4 v5, 0x0

    move/from16 v20, v6

    const/4 v6, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto :goto_100

    :cond_fc
    move/from16 v20, v2

    const/16 v18, 0x0

    :goto_100
    int-to-float v2, v10

    int-to-float v3, v14

    .line 245
    invoke-virtual {v1, v13, v11, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 246
    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-ltz v2, :cond_1ab

    .line 249
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->rnd:Ljava/util/Random;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Random;->setSeed(J)V

    .line 250
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v11, v18

    :goto_11a
    const/16 v3, 0x64

    if-ge v11, v3, :cond_1ab

    float-to-double v3, v15

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    .line 252
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    sub-double/2addr v5, v3

    double-to-float v3, v5

    .line 253
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v3

    sub-float v4, v20, v4

    .line 255
    invoke-virtual {v1, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    add-int/lit8 v4, v10, -0x1a

    int-to-float v4, v4

    int-to-float v5, v12

    .line 258
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->rnd:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float v6, v6, v20

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v7, v7, v19

    .line 259
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->rnd:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    float-to-double v13, v8

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v7, v0

    float-to-double v0, v6

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v7, v0

    add-float/2addr v7, v6

    .line 262
    aget v0, v17, v18

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    .line 263
    aget v1, v17, v16

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v14, v8, v3

    mul-float/2addr v4, v14

    mul-float v8, v3, v6

    add-float/2addr v4, v8

    mul-float/2addr v5, v14

    mul-float v8, v3, v7

    add-float/2addr v5, v8

    mul-float/2addr v6, v14

    mul-float/2addr v0, v3

    add-float/2addr v6, v0

    mul-float/2addr v7, v14

    mul-float/2addr v1, v3

    add-float/2addr v7, v1

    mul-float/2addr v4, v14

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    mul-float/2addr v14, v5

    mul-float/2addr v3, v7

    add-float/2addr v14, v3

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v14

    .line 270
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_11a

    .line 274
    :cond_1ab
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xff

    .line 275
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 276
    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_1ba
    :goto_1ba
    return-void
.end method

.method public getDustAnimation()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 3

    .line 48
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$anim_dust00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public declared-synchronized getEventOfType(I)Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 105
    :goto_2
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 106
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;

    iget v1, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->type:I

    if-ne v1, p1, :cond_22

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    goto :goto_28

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_25
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_20

    throw p1
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setPlacement(III)V
    .registers 5

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SuccessOverlay;->placements:[[I

    filled-new-array {p2, p3}, [I

    move-result-object p2

    aput-object p2, v0, p1

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SuccessOverlay.AnonymousClass1 (info.flowersoft.theotown.ui.SuccessOverlay$1)
.class public synthetic Linfo/flowersoft/theotown/ui/SuccessOverlay$1;
.super Ljava/lang/Object;
.source "SuccessOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SuccessOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.ui.SuccessOverlay.Event (info.flowersoft.theotown.ui.SuccessOverlay$Event)
.class public Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;
.super Ljava/lang/Object;
.source "SuccessOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SuccessOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public amount:D

.field public effectiveDisplayedTimeMS:I

.field public targetDisplayTimeMS:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SuccessOverlay.Particle (info.flowersoft.theotown.ui.SuccessOverlay$Particle)
.class public Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;
.super Ljava/lang/Object;
.source "SuccessOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SuccessOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Particle"
.end annotation


# instance fields
.field public animation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public endColor:Lio/blueflower/stapel2d/drawing/Color;

.field public endScale:F

.field public lifeTime:J

.field public startColor:Lio/blueflower/stapel2d/drawing/Color;

.field public startScale:F

.field public startTime:J

.field public x:F

.field public xSpeed:F

.field public y:F

.field public ySpeed:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/SuccessOverlay$1;)V
    .registers 2

    .line 302
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/SuccessOverlay$Particle;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SuccessOverlay.Toast (info.flowersoft.theotown.ui.SuccessOverlay$Toast)
.class public Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;
.super Ljava/lang/Object;
.source "SuccessOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SuccessOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Toast"
.end annotation


# instance fields
.field public displayedTimeMS:I

.field public targetDisplayTimeMS:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/SuccessOverlay$1;)V
    .registers 2

    .line 316
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/SuccessOverlay$Toast;-><init>()V

    return-void
.end method
