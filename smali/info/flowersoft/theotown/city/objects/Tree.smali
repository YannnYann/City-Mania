###### Class info.flowersoft.theotown.city.objects.Tree (info.flowersoft.theotown.city.objects.Tree)
.class public final Linfo/flowersoft/theotown/city/objects/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# instance fields
.field public burning:Z

.field public draft:Linfo/flowersoft/theotown/draft/TreeDraft;

.field public frame:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/TreeDraft;III)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 62
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    .line 63
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Tree;->x:I

    .line 64
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Tree;->y:I

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$tree00"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/TreeDraft;

    iput-object v2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 34
    :goto_11
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 35
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_a0

    goto :goto_5d

    :sswitch_27
    const-string v4, "frame"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_5d

    :cond_30
    const/4 v3, 0x4

    goto :goto_5d

    :sswitch_32
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_5d

    :cond_3b
    const/4 v3, 0x3

    goto :goto_5d

    :sswitch_3d
    const-string v4, "y"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_5d

    :cond_46
    const/4 v3, 0x2

    goto :goto_5d

    :sswitch_48
    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_5d

    :cond_51
    move v3, v0

    goto :goto_5d

    :sswitch_53
    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v1

    :goto_5d
    packed-switch v3, :pswitch_data_b6

    .line 51
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_11

    .line 37
    :pswitch_64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 38
    const-class v3, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/TreeDraft;

    iput-object v2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    goto :goto_11

    .line 48
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->y:I

    goto :goto_11

    .line 45
    :pswitch_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->x:I

    goto :goto_11

    .line 42
    :pswitch_81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    goto :goto_11

    .line 55
    :cond_88
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz p1, :cond_9f

    .line 56
    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    iget p1, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v3, p1

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    :cond_9f
    return-void

    :sswitch_data_a0
    .sparse-switch
        0x66 -> :sswitch_53
        0x78 -> :sswitch_48
        0x79 -> :sswitch_3d
        0xd1b -> :sswitch_32
        0x5d2a96d -> :sswitch_27
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_64
        :pswitch_81
    .end packed-switch
.end method


# virtual methods
.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 9

    .line 97
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    mul-int/lit16 v2, v1, 0x3200

    .line 101
    iget v3, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    rem-int/2addr v3, v2

    const v4, 0xa9cb

    iget v5, p0, Linfo/flowersoft/theotown/city/objects/Tree;->x:I

    mul-int/2addr v5, v4

    const v4, 0x9201

    iget v6, p0, Linfo/flowersoft/theotown/city/objects/Tree;->y:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    rem-int/2addr v5, v2

    add-int/2addr v3, v5

    rem-int/2addr v3, v2

    div-int/lit16 v3, v3, 0x3200

    .line 103
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    neg-float v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v4, v5

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v6, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    mul-int/2addr v1, v6

    add-int/2addr v1, v3

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v4, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 105
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->burning:Z

    if-eqz v0, :cond_62

    .line 106
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    neg-float v0, v0

    mul-float/2addr v0, v5

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 107
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Tree;->x:I

    iget v4, p0, Linfo/flowersoft/theotown/city/objects/Tree;->y:I

    invoke-virtual {v0, p1, v2, v3, v4}, Linfo/flowersoft/theotown/drawing/Drawing;->drawFire(Linfo/flowersoft/theotown/city/Drawer;III)V

    .line 108
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    mul-float/2addr v0, v5

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_62
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;
    .registers 2

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 77
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 81
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->y:I

    return v0
.end method

.method public isBurning()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->burning:Z

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "$tree00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 69
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 71
    :cond_19
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 72
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 73
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Tree;->y:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setBurning(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->burning:Z

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 117
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Tree;->frame:I

    return-void
.end method
