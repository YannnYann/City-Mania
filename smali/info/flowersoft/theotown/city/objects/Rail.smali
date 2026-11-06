###### Class info.flowersoft.theotown.city.objects.Rail (info.flowersoft.theotown.city.objects.Rail)
.class public final Linfo/flowersoft/theotown/city/objects/Rail;
.super Ljava/lang/Object;
.source "Rail.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public connectionDir:I

.field public connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public draft:Linfo/flowersoft/theotown/draft/RailDraft;

.field public frame:I

.field public pile:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/RailDraft;II)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "$anim_connection_overlay00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 33
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    .line 34
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Rail;->x:I

    .line 35
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Rail;->y:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    const-string v1, "$anim_connection_overlay00"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-nez v0, :cond_1b

    .line 40
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 43
    :cond_1b
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Rail;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method

.method private lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z
    .registers 4

    .line 129
    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->x:I

    mul-int/lit8 v0, v0, 0x17

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->y:I

    mul-int/lit16 v1, v1, 0xe07

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x5

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

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

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 15

    .line 85
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 86
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    mul-int/lit8 v0, v0, -0xc

    .line 88
    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->pile:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 89
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v0

    iget-object v4, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RailDraft;->pileFrames:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 92
    :cond_1d
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    or-int/2addr v1, v3

    iget v3, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v1, v3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v8

    .line 93
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget v4, v3, Linfo/flowersoft/theotown/draft/RailDraft;->pileHeight:I

    neg-int v4, v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, v8

    invoke-virtual {p1, v1, v2, v4, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 95
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    if-eqz v1, :cond_52

    .line 96
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v0

    iget-object v5, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v6, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 97
    invoke-static {v1, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v1

    aget v1, v5, v1

    .line 96
    invoke-virtual {p1, v3, v2, v4, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 100
    :cond_52
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/RailDraft;->animationSpots:Ljava/util/List;

    if-eqz v3, :cond_80

    .line 101
    iget v1, v1, Linfo/flowersoft/theotown/draft/RailDraft;->pileHeight:I

    sub-int/2addr v0, v1

    .line 102
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/objects/Rail;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v12

    int-to-float v1, v0

    .line 103
    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 104
    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v1, v1

    const/high16 v3, 0x43480000    # 200.0f

    div-float v10, v1, v3

    .line 106
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/RailDraft;->animationSpots:Ljava/util/List;

    iget-object v7, v1, Linfo/flowersoft/theotown/draft/RailDraft;->animationSpotIndices:[[I

    iget v11, p1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v9, v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    neg-int p1, v0

    int-to-float p1, p1

    .line 108
    invoke-virtual {v5, v2, p1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_80
    return-void
.end method

.method public drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 114
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    mul-int/lit8 v2, v2, -0xc

    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget v4, v3, Linfo/flowersoft/theotown/draft/RailDraft;->pileHeight:I

    sub-int v9, v2, v4

    .line 115
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v9

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, v0

    const/4 v10, 0x0

    invoke-virtual {p1, v2, v10, v4, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 117
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RailDraft;->animationFGSpots:Ljava/util/List;

    if-eqz v2, :cond_4e

    .line 118
    invoke-direct/range {p0 .. p1}, Linfo/flowersoft/theotown/city/objects/Rail;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v8

    .line 119
    invoke-virtual {p1, v10, v4}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 120
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float v6, v2, v3

    .line 121
    rem-int/lit8 v4, v0, 0x10

    .line 122
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/RailDraft;->animationFGSpots:Ljava/util/List;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RailDraft;->animationFGSpotIndices:[[I

    iget v7, p1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v5, v4

    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    neg-int v0, v9

    int-to-float v0, v0

    .line 124
    invoke-virtual {p1, v10, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_4e
    return-void
.end method

.method public getAlign()I
    .registers 2

    .line 162
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    rem-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getConnectionDir()I
    .registers 2

    .line 178
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/RailDraft;
    .registers 2

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 154
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 134
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 138
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->y:I

    return v0
.end method

.method public hasConnection()Z
    .registers 2

    .line 170
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isPile()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->pile:Z

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_94

    goto :goto_57

    :sswitch_16
    const-string v2, "connection dir"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_57

    :cond_1f
    const/4 v1, 0x5

    goto :goto_57

    :sswitch_21
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_57

    :cond_2a
    const/4 v1, 0x4

    goto :goto_57

    :sswitch_2c
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_57

    :cond_35
    const/4 v1, 0x3

    goto :goto_57

    :sswitch_37
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_57

    :cond_40
    const/4 v1, 0x2

    goto :goto_57

    :sswitch_42
    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_57

    :cond_4b
    const/4 v1, 0x1

    goto :goto_57

    :sswitch_4d
    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    packed-switch v1, :pswitch_data_ae

    .line 69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 66
    :pswitch_5e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    goto :goto_0

    .line 51
    :pswitch_65
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RailDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    goto :goto_0

    .line 57
    :pswitch_74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->y:I

    goto :goto_0

    .line 54
    :pswitch_7b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->x:I

    goto/16 :goto_0

    .line 63
    :pswitch_83
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->pile:Z

    goto/16 :goto_0

    .line 60
    :pswitch_8b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    goto/16 :goto_0

    :cond_93
    return-void

    :sswitch_data_94
    .sparse-switch
        0x66 -> :sswitch_4d
        0x70 -> :sswitch_42
        0x78 -> :sswitch_37
        0x79 -> :sswitch_2c
        0xd1b -> :sswitch_21
        0x4b9df04b -> :sswitch_16
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_83
        :pswitch_7b
        :pswitch_74
        :pswitch_65
        :pswitch_5e
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 77
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 78
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 79
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 80
    const-string v0, "p"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->pile:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 81
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    if-eqz v0, :cond_48

    const-string v0, "connection dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_48
    return-void
.end method

.method public setAlign(I)V
    .registers 2

    .line 166
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    return-void
.end method

.method public setConnection(I)V
    .registers 2

    .line 174
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->connectionDir:I

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 158
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->frame:I

    return-void
.end method

.method public setPile(Z)V
    .registers 2

    .line 146
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Rail;->pile:Z

    return-void
.end method
