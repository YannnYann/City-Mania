###### Class info.flowersoft.theotown.city.objects.Wire (info.flowersoft.theotown.city.objects.Wire)
.class public final Linfo/flowersoft/theotown/city/objects/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# instance fields
.field public connectionDir:I

.field public final connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public draft:Linfo/flowersoft/theotown/draft/WireDraft;

.field public frame:I

.field public isPunch:Z

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "$anim_connection_overlay00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 44
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->x:I

    .line 45
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Wire;->y:I

    .line 46
    :goto_13
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 47
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_80

    goto :goto_54

    :sswitch_29
    const-string v0, "punch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_54

    :cond_32
    const/4 p2, 0x3

    goto :goto_54

    :sswitch_34
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_54

    :cond_3d
    const/4 p2, 0x2

    goto :goto_54

    :sswitch_3f
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_54

    :cond_48
    const/4 p2, 0x1

    goto :goto_54

    :sswitch_4a
    const-string v0, "condir"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    const/4 p2, 0x0

    :goto_54
    packed-switch p2, :pswitch_data_92

    .line 61
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_13

    .line 55
    :pswitch_5b
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    goto :goto_13

    .line 49
    :pswitch_62
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/WireDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    goto :goto_13

    .line 52
    :pswitch_71
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->frame:I

    goto :goto_13

    .line 58
    :pswitch_78
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    goto :goto_13

    :cond_7f
    return-void

    :sswitch_data_80
    .sparse-switch
        -0x50c08435 -> :sswitch_4a
        0x66 -> :sswitch_3f
        0xd1b -> :sswitch_34
        0x661212e -> :sswitch_29
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_78
        :pswitch_71
        :pswitch_62
        :pswitch_5b
    .end packed-switch
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/WireDraft;III)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "$anim_connection_overlay00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    .line 37
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Wire;->x:I

    .line 38
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Wire;->y:I

    .line 39
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Wire;->frame:I

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    return-void
.end method


# virtual methods
.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 8

    .line 98
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->frame:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    or-int/2addr v0, v1

    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    .line 99
    iget-object v1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 101
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget v2, v1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    const/4 v3, 0x0

    if-ltz v2, :cond_7a

    .line 102
    iget-boolean v2, p1, Linfo/flowersoft/theotown/city/Drawer;->flat:Z

    if-eqz v2, :cond_33

    .line 104
    iget-boolean v2, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    if-nez v2, :cond_23

    add-int/lit8 v0, v0, 0x10

    .line 105
    :cond_23
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_85

    .line 107
    :cond_33
    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    .line 108
    iget-boolean v2, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    if-nez v2, :cond_43

    add-int/lit8 v1, v1, 0x10

    .line 109
    :cond_43
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v5, v1

    invoke-virtual {p1, v2, v3, v4, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 110
    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_85

    .line 113
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    const/16 v4, 0x30

    if-lt v2, v4, :cond_6a

    add-int/lit8 v0, v0, 0x20

    .line 114
    :cond_6a
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    aget v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_85

    .line 118
    :cond_7a
    iget-object v2, p1, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v1, v0

    invoke-virtual {v2, p1, v4, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;I)V

    .line 121
    :cond_85
    :goto_85
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    if-eqz v0, :cond_a6

    .line 122
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v4, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v5, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 123
    invoke-static {v0, v5}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v0

    aget v0, v4, v0

    .line 122
    invoke-virtual {p1, v1, v3, v2, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_a6
    return-void
.end method

.method public getConnectionDir()I
    .registers 2

    .line 144
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/WireDraft;
    .registers 2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 90
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->frame:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 78
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->y:I

    return v0
.end method

.method public hasConnection()Z
    .registers 2

    .line 136
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isPunch()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 68
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 69
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    if-eqz v0, :cond_27

    const-string v0, "punch"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 70
    :cond_27
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    if-eqz v0, :cond_36

    const-string v0, "condir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_36
    return-void
.end method

.method public setConnection(I)V
    .registers 2

    .line 140
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->connectionDir:I

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 94
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->frame:I

    return-void
.end method

.method public setPunch(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 132
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch:Z

    return-void
.end method
