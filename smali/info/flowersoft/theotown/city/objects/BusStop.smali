###### Class info.flowersoft.theotown.city.objects.BusStop (info.flowersoft.theotown.city.objects.BusStop)
.class public final Linfo/flowersoft/theotown/city/objects/BusStop;
.super Ljava/lang/Object;
.source "BusStop.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

.field public lastVisit:J

.field public final level:I

.field public usage:F

.field public waiting:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/BusStopDraft;III)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 93
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->x:I

    .line 94
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->y:I

    .line 95
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->lastVisit:J

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    move v1, v0

    .line 45
    :goto_e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_b6

    goto :goto_70

    :sswitch_24
    const-string v4, "waiting"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_70

    :cond_2d
    const/4 v3, 0x6

    goto :goto_70

    :sswitch_2f
    const-string v4, "last visit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_70

    :cond_38
    const/4 v3, 0x5

    goto :goto_70

    :sswitch_3a
    const-string v4, "usage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_70

    :cond_43
    const/4 v3, 0x4

    goto :goto_70

    :sswitch_45
    const-string v4, "lvl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_70

    :cond_4e
    const/4 v3, 0x3

    goto :goto_70

    :sswitch_50
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_70

    :cond_59
    const/4 v3, 0x2

    goto :goto_70

    :sswitch_5b
    const-string v4, "y"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_70

    :cond_64
    const/4 v3, 0x1

    goto :goto_70

    :sswitch_66
    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_70

    :cond_6f
    move v3, v0

    :goto_70
    packed-switch v3, :pswitch_data_d4

    .line 70
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_e

    .line 64
    :pswitch_77
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    goto :goto_e

    .line 58
    :pswitch_7e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->lastVisit:J

    goto :goto_e

    .line 61
    :pswitch_85
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    goto :goto_e

    .line 67
    :pswitch_8c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    goto/16 :goto_e

    .line 48
    :pswitch_92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 49
    const-class v3, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BusStopDraft;

    iput-object v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    goto/16 :goto_e

    .line 55
    :pswitch_a2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->y:I

    goto/16 :goto_e

    .line 52
    :pswitch_aa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->x:I

    goto/16 :goto_e

    .line 75
    :cond_b2
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        0x78 -> :sswitch_66
        0x79 -> :sswitch_5b
        0xd1b -> :sswitch_50
        0x1a422 -> :sswitch_45
        0x6a67da1 -> :sswitch_3a
        0x1caf2b41 -> :sswitch_2f
        0x4289964d -> :sswitch_24
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a2
        :pswitch_92
        :pswitch_8c
        :pswitch_85
        :pswitch_7e
        :pswitch_77
    .end packed-switch
.end method


# virtual methods
.method public addWaiter()Z
    .registers 2

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/BusStop;->addWaiters(I)Z

    move-result v0

    return v0
.end method

.method public addWaiters(I)Z
    .registers 3

    .line 147
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    .line 148
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    if-gt v0, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public drawBack(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 14

    .line 162
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    const/4 v0, 0x2

    .line 163
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 164
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0xc

    int-to-float v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getOffset()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_26
    const/4 v1, 0x4

    .line 166
    invoke-static {v1, p2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v1

    if-nez v1, :cond_43

    .line 167
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0xc

    int-to-float v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getOffset()I

    move-result v5

    add-int/2addr v5, v0

    aget v0, v4, v5

    invoke-virtual {p1, v1, v2, v3, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 170
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpots:Ljava/util/List;

    if-eqz v0, :cond_66

    .line 171
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float v8, v0, v1

    .line 173
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v10

    .line 174
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpots:Ljava/util/List;

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpotIndices:[[I

    iget v9, p1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v7, p2

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    :cond_66
    return-void
.end method

.method public drawFront(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 14

    .line 180
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    const/16 v0, 0x8

    .line 181
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 182
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getOffset()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_27
    const/4 v0, 0x1

    .line 184
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v0

    if-nez v0, :cond_43

    .line 185
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getOffset()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 188
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpots:Ljava/util/List;

    if-eqz v0, :cond_66

    .line 189
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float v8, v0, v1

    .line 191
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v10

    .line 192
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpots:Ljava/util/List;

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpotIndices:[[I

    iget v9, p1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v7, p2

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    :cond_66
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;
    .registers 2

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    return-object v0
.end method

.method public getLastVisit()J
    .registers 3

    .line 111
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->lastVisit:J

    return-wide v0
.end method

.method public final getOffset()I
    .registers 3

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getOverallUsage()F
    .registers 4

    .line 133
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    int-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getWaiting()I
    .registers 2

    .line 129
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 103
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 107
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->y:I

    return v0
.end method

.method public final lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z
    .registers 8

    .line 156
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->y:I

    int-to-long v0, v0

    iget-wide v2, p1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0xbab

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 157
    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x5

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    const p1, 0x3ecccccd    # 0.4f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3c

    const/4 p1, 0x1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method

.method public removeWaiters(I)V
    .registers 5

    .line 119
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 120
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_20

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 121
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    goto :goto_2b

    :cond_20
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 123
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    .line 125
    :goto_2b
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 80
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 81
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    if-eqz v0, :cond_32

    const-string v0, "lvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_32
    if-eqz p2, :cond_55

    .line 85
    const-string p2, "last visit"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->lastVisit:J

    invoke-interface {p2, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    const-string p2, "usage"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    const-string p2, "waiting"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_55
    return-void
.end method

.method public setLastVisit(J)V
    .registers 3

    .line 115
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->lastVisit:J

    return-void
.end method

.method public setUsage(F)V
    .registers 2

    .line 137
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->usage:F

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/BusStop;->waiting:I

    return-void
.end method
