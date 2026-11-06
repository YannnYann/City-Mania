###### Class info.flowersoft.theotown.city.objects.FlyingObject (info.flowersoft.theotown.city.objects.FlyingObject)
.class public final Linfo/flowersoft/theotown/city/objects/FlyingObject;
.super Ljava/lang/Object;
.source "FlyingObject.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public controllerId:I

.field public data:J

.field public data2:J

.field public dir:I

.field public draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

.field public drawRadius:I

.field public frame:I

.field public height:F

.field public nextHeight:F

.field public p:F

.field public speed:F

.field public vapor:Linfo/flowersoft/theotown/draft/SmokeDraft;

.field public visibleDir:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIIII)V
    .registers 9

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "$watervapor00"

    const-class v1, Linfo/flowersoft/theotown/draft/SmokeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/SmokeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->vapor:Linfo/flowersoft/theotown/draft/SmokeDraft;

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    .line 57
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    .line 58
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    .line 59
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    .line 60
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    int-to-float p2, p5

    .line 61
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    .line 62
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    .line 63
    iput p6, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->controllerId:I

    .line 64
    iget p1, p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->drawRadius:I

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->drawRadius:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "$watervapor00"

    const-class v1, Linfo/flowersoft/theotown/draft/SmokeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/SmokeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->vapor:Linfo/flowersoft/theotown/draft/SmokeDraft;

    .line 68
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method


# virtual methods
.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 7

    .line 160
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 162
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    neg-float v0, v1

    .line 163
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    .line 165
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyingType:I

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v2, :cond_33

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2b

    return-void

    .line 173
    :cond_2b
    invoke-virtual {p0, v3, v0, v1, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->drawAirplane(FFILinfo/flowersoft/theotown/city/Drawer;)V

    return-void

    .line 170
    :cond_2f
    invoke-virtual {p0, v3, v0, v1, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->drawRocket(FFILinfo/flowersoft/theotown/city/Drawer;)V

    return-void

    .line 167
    :cond_33
    invoke-virtual {p0, v3, v0, v1, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->drawHelicopter(FFILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public final drawAirplane(FFILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 14

    .line 247
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    invoke-virtual {p0, p3, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->movePositionX(IF)F

    move-result v0

    add-float/2addr p1, v0

    .line 248
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    invoke-virtual {p0, p3, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->movePositionY(IF)F

    move-result p3

    add-float/2addr p2, p3

    .line 250
    iget p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v4

    .line 251
    iget p3, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int p3, v4, p3

    add-int/lit8 p3, p3, 0x4

    rem-int/lit8 p3, p3, 0x4

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    mul-int/lit8 v0, v0, 0x4

    add-int v5, p3, v0

    .line 253
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v0

    rem-int v1, v5, v1

    aget v0, v0, v1

    invoke-virtual {p4, p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 255
    iget-object p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object p3, p3, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    if-eqz p3, :cond_59

    .line 256
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v8

    .line 257
    iget p3, p4, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float p3, p3

    const/high16 v0, 0x43480000    # 200.0f

    div-float v6, p3, v0

    .line 258
    invoke-virtual {p4, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 259
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget-object p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v2, p3, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    iget-object v3, p3, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animationSpotIndices:[[I

    iget v7, p4, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move-object v1, p4

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    neg-float p1, p1

    neg-float p2, p2

    .line 261
    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_59
    return-void
.end method

.method public final drawHelicopter(FFILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 189
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->movePositionX(IF)F

    move-result v3

    add-float v15, p1, v3

    .line 190
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->movePositionY(IF)F

    move-result v1

    add-float v1, p2, v1

    .line 192
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v5

    .line 193
    iget v3, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int v3, v5, v3

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    iget v4, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    mul-int/lit8 v4, v4, 0x4

    add-int v6, v3, v4

    .line 194
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v4, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, v6

    invoke-virtual {v2, v3, v15, v1, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 196
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    if-eqz v3, :cond_ca

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ca

    .line 197
    iget-object v3, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 199
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 200
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 201
    iget v8, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->speed:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_6e

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit8 v9, v9, 0xa

    mul-int/2addr v8, v9

    div-int/2addr v8, v4

    rem-int/lit8 v8, v8, 0x4

    goto :goto_76

    :cond_6e
    iget v4, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit16 v4, v4, 0xc8

    rem-int/lit8 v4, v4, 0x4

    add-int/lit8 v8, v4, 0x4

    .line 202
    :goto_76
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v8, 0x7

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 203
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v9, v3, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float v9, v9

    add-float/2addr v9, v15

    iget v10, v3, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float v10, v10

    add-float/2addr v10, v1

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, v4

    invoke-virtual {v2, v8, v9, v10, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 207
    :cond_92
    iget-object v3, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 209
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v12

    .line 210
    iget v3, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    div-float v7, v3, v4

    .line 211
    invoke-virtual {v2, v15, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    move v3, v1

    .line 212
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v4, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move v8, v3

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animationSpotIndices:[[I

    move v9, v8

    iget v8, v2, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    const/4 v13, 0x1

    .line 213
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v0, v16

    .line 212
    invoke-virtual/range {v1 .. v14}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;ZII)V

    neg-float v1, v15

    neg-float v0, v0

    .line 214
    invoke-virtual {v2, v1, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_ca
    return-void
.end method

.method public final drawRocket(FFILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p4

    .line 219
    iget-object v2, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 221
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v4, p1, v4

    .line 224
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v3, v5, v4, v1, v6}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 226
    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    if-eqz v5, :cond_a9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a9

    .line 228
    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 229
    iget v6, v3, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v7

    rem-int/2addr v6, v8

    .line 230
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v9, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    iget v5, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget v10, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v6, v10

    aget v6, v7, v6

    invoke-virtual {v3, v8, v9, v5, v6}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 234
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v13

    .line 235
    iget v5, v3, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v5, v5

    const/high16 v6, 0x43480000    # 200.0f

    div-float v8, v5, v6

    .line 237
    invoke-virtual {v3, v4, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    move-object v5, v2

    .line 238
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move v7, v4

    iget-object v4, v6, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animation:Ljava/util/List;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->animationSpotIndices:[[I

    iget v9, v3, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    const/4 v14, 0x1

    .line 239
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    move-object v10, v5

    move-object v5, v6

    const/4 v6, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v17, v7

    move v7, v6

    move/from16 v0, v17

    .line 238
    invoke-virtual/range {v2 .. v15}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;ZII)V

    neg-float v0, v0

    neg-float v1, v1

    .line 240
    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    goto :goto_ab

    :cond_a9
    move-object/from16 v16, v2

    .line 243
    :goto_ab
    invoke-virtual/range {v16 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public flyTo(IIF)V
    .registers 6

    .line 148
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_24

    .line 149
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    .line 150
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    .line 151
    iget p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    .line 152
    iget p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    .line 154
    :cond_24
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    .line 155
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    return-void
.end method

.method public getActualHeight()F
    .registers 2

    .line 291
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    return v0
.end method

.method public getActualX()I
    .registers 3

    .line 283
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getActualY()I
    .registers 3

    .line 287
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getControllerId()I
    .registers 2

    .line 339
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->controllerId:I

    return v0
.end method

.method public getDir()I
    .registers 2

    .line 295
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
    .registers 2

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object v0
.end method

.method public getDrawRadius()I
    .registers 2

    .line 347
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->drawRadius:I

    return v0
.end method

.method public getFrame()I
    .registers 2

    .line 140
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    return v0
.end method

.method public getHeight()F
    .registers 2

    .line 303
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    return v0
.end method

.method public getNextHeight()F
    .registers 2

    .line 311
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    return v0
.end method

.method public getP()F
    .registers 2

    .line 323
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    return v0
.end method

.method public getSpeed()F
    .registers 2

    .line 331
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->speed:F

    return v0
.end method

.method public getVisibleDir()I
    .registers 2

    .line 299
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 275
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 279
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    return v0
.end method

.method public final lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z
    .registers 6

    .line 265
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0xbab

    mul-long/2addr v0, v2

    .line 266
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

    if-gez p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_156

    goto/16 :goto_b6

    :sswitch_19
    const-string v3, "next height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_b6

    :cond_23
    const/16 v2, 0xc

    goto/16 :goto_b6

    :sswitch_27
    const-string v3, "controller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_b6

    :cond_31
    const/16 v2, 0xb

    goto/16 :goto_b6

    :sswitch_35
    const-string v3, "visible dir"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_b6

    :cond_3f
    const/16 v2, 0xa

    goto/16 :goto_b6

    :sswitch_43
    const-string v3, "speed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_b6

    :cond_4d
    const/16 v2, 0x9

    goto/16 :goto_b6

    :sswitch_51
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_b6

    :cond_5b
    const/16 v2, 0x8

    goto/16 :goto_b6

    :sswitch_5f
    const-string v3, "data2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_b6

    :cond_68
    const/4 v2, 0x7

    goto :goto_b6

    :sswitch_6a
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_b6

    :cond_73
    const/4 v2, 0x6

    goto :goto_b6

    :sswitch_75
    const-string v3, "dir"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_b6

    :cond_7e
    const/4 v2, 0x5

    goto :goto_b6

    :sswitch_80
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_b6

    :cond_89
    const/4 v2, 0x4

    goto :goto_b6

    :sswitch_8b
    const-string v3, "y"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_b6

    :cond_94
    const/4 v2, 0x3

    goto :goto_b6

    :sswitch_96
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_b6

    :cond_9f
    const/4 v2, 0x2

    goto :goto_b6

    :sswitch_a1
    const-string v3, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto :goto_b6

    :cond_aa
    const/4 v2, 0x1

    goto :goto_b6

    :sswitch_ac
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_b6

    :cond_b5
    const/4 v2, 0x0

    :goto_b6
    packed-switch v2, :pswitch_data_18c

    .line 117
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 96
    :pswitch_be
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    goto/16 :goto_0

    .line 111
    :pswitch_c6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->controllerId:I

    goto/16 :goto_0

    .line 90
    :pswitch_ce
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    goto/16 :goto_0

    .line 102
    :pswitch_d6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->speed:F

    goto/16 :goto_0

    .line 114
    :pswitch_e0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    goto/16 :goto_0

    .line 108
    :pswitch_e8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data2:J

    goto/16 :goto_0

    .line 105
    :pswitch_f0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    goto/16 :goto_0

    .line 87
    :pswitch_f8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    goto/16 :goto_0

    .line 75
    :pswitch_100
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iput-object v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    if-eqz v1, :cond_116

    .line 78
    iget v0, v1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->drawRadius:I

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->drawRadius:I

    goto/16 :goto_0

    .line 77
    :cond_116
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No flying object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could be found."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :pswitch_132
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    goto/16 :goto_0

    .line 81
    :pswitch_13a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    goto/16 :goto_0

    .line 99
    :pswitch_142
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    goto/16 :goto_0

    .line 93
    :pswitch_14c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    goto/16 :goto_0

    :cond_154
    return-void

    nop

    :sswitch_data_156
    .sparse-switch
        -0x48c76ed9 -> :sswitch_ac
        0x70 -> :sswitch_a1
        0x78 -> :sswitch_96
        0x79 -> :sswitch_8b
        0xd1b -> :sswitch_80
        0x1848d -> :sswitch_75
        0x2eefaa -> :sswitch_6a
        0x5af05c8 -> :sswitch_5f
        0x5d2a96d -> :sswitch_51
        0x6890047 -> :sswitch_43
        0x7b077df -> :sswitch_35
        0x25fe639c -> :sswitch_27
        0x415ac6f4 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_14c
        :pswitch_142
        :pswitch_13a
        :pswitch_132
        :pswitch_100
        :pswitch_f8
        :pswitch_f0
        :pswitch_e8
        :pswitch_e0
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
    .end packed-switch
.end method

.method public final movePositionX(IF)F
    .registers 4

    .line 0
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x2

    if-gt p1, v0, :cond_b

    const/high16 p1, 0x41800000    # 16.0f

    :goto_9
    mul-float/2addr p2, p1

    return p2

    :cond_b
    const/high16 p1, -0x3e800000    # -16.0f

    goto :goto_9
.end method

.method public final movePositionY(IF)F
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x2

    mul-int/2addr p1, v0

    .line 185
    rem-int/lit8 p1, p1, 0x10

    if-gt p1, v0, :cond_e

    const/high16 p1, 0x41000000    # 8.0f

    :goto_c
    mul-float/2addr p2, p1

    return p2

    :cond_e
    const/high16 p1, -0x3f000000    # -8.0f

    goto :goto_c
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 125
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 126
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 127
    const-string v0, "dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->dir:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 128
    const-string v0, "visible dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->visibleDir:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 129
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 130
    const-string v0, "next height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 131
    const-string v0, "p"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 132
    const-string v0, "speed"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->speed:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 133
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 134
    const-string v0, "data2"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data2:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 135
    const-string v0, "controller"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->controllerId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 136
    const-string v0, "frame"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setControllerId(I)V
    .registers 2

    .line 343
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->controllerId:I

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 144
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->frame:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    int-to-float p1, p1

    .line 307
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->height:F

    return-void
.end method

.method public setNextHeight(I)V
    .registers 2

    int-to-float p1, p1

    .line 315
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->nextHeight:F

    return-void
.end method

.method public setP(F)V
    .registers 2

    .line 327
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    .line 335
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->speed:F

    return-void
.end method

.method public update(F)V
    .registers 4

    .line 271
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->speed:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->p:F

    return-void
.end method
