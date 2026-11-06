###### Class info.flowersoft.theotown.city.objects.Pipe (info.flowersoft.theotown.city.objects.Pipe)
.class public final Linfo/flowersoft/theotown/city/objects/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# instance fields
.field public connectionDir:I

.field public final connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public draft:Linfo/flowersoft/theotown/draft/PipeDraft;

.field public frame:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IILio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "$anim_connection_overlay00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 41
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->x:I

    .line 42
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->y:I

    .line 43
    :goto_13
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 44
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6e

    goto :goto_49

    :sswitch_29
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_49

    :cond_32
    const/4 p2, 0x2

    goto :goto_49

    :sswitch_34
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_49

    :cond_3d
    const/4 p2, 0x1

    goto :goto_49

    :sswitch_3f
    const-string v0, "condir"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 p2, 0x0

    :goto_49
    packed-switch p2, :pswitch_data_7c

    .line 55
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_13

    .line 46
    :pswitch_50
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/PipeDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    goto :goto_13

    .line 49
    :pswitch_5f
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    goto :goto_13

    .line 52
    :pswitch_66
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    goto :goto_13

    :cond_6d
    return-void

    :sswitch_data_6e
    .sparse-switch
        -0x50c08435 -> :sswitch_3f
        0x66 -> :sswitch_34
        0xd1b -> :sswitch_29
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5f
        :pswitch_50
    .end packed-switch
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/PipeDraft;III)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "$anim_connection_overlay00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    .line 35
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->x:I

    .line 36
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->y:I

    .line 37
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    return-void
.end method


# virtual methods
.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 8

    .line 87
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 89
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    aget v0, v0, v1

    .line 91
    iget-object v1, p1, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1, v2, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;I)V

    .line 93
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    if-eqz v0, :cond_58

    .line 94
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v4, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    or-int/2addr v0, v4

    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 95
    invoke-static {v0, v4}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p1, v1, v3, v2, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 97
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v4, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    iget v5, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 98
    invoke-static {v4, v5}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v4

    aget v2, v2, v4

    .line 97
    invoke-virtual {p1, v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_58
    return-void
.end method

.method public getConnectionDir()I
    .registers 2

    .line 111
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;
    .registers 2

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 79
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 71
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 75
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->y:I

    return v0
.end method

.method public hasConnection()Z
    .registers 2

    .line 103
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 62
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 63
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    if-eqz v0, :cond_27

    const-string v0, "condir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_27
    return-void
.end method

.method public setConnection(I)V
    .registers 2

    .line 107
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->connectionDir:I

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 83
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pipe;->frame:I

    return-void
.end method
