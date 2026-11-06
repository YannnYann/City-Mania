###### Class info.flowersoft.theotown.city.objects.Ship (info.flowersoft.theotown.city.objects.Ship)
.class public final Linfo/flowersoft/theotown/city/objects/Ship;
.super Ljava/lang/Object;
.source "Ship.java"


# instance fields
.field public controller:I

.field public data:J

.field public dir:I

.field public draft:Linfo/flowersoft/theotown/draft/ShipDraft;

.field public frame:I

.field public invalid:Z

.field public p:F

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/ShipDraft;IIII)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->draft:Linfo/flowersoft/theotown/draft/ShipDraft;

    .line 37
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Ship;->x:I

    .line 38
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Ship;->y:I

    .line 39
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Ship;->controller:I

    .line 40
    iput p5, p0, Linfo/flowersoft/theotown/city/objects/Ship;->frame:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :goto_4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_d4

    goto :goto_66

    :sswitch_1a
    const-string v3, "frame"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_66

    :cond_23
    const/4 v2, 0x6

    goto :goto_66

    :sswitch_25
    const-string v3, "data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_66

    :cond_2e
    const/4 v2, 0x5

    goto :goto_66

    :sswitch_30
    const-string v3, "dir"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_66

    :cond_39
    move v2, v0

    goto :goto_66

    :sswitch_3b
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_66

    :cond_44
    const/4 v2, 0x3

    goto :goto_66

    :sswitch_46
    const-string v3, "y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_66

    :cond_4f
    const/4 v2, 0x2

    goto :goto_66

    :sswitch_51
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto :goto_66

    :cond_5a
    const/4 v2, 0x1

    goto :goto_66

    :sswitch_5c
    const-string v3, "p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    packed-switch v2, :pswitch_data_f2

    .line 70
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_4

    .line 58
    :pswitch_6d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->frame:I

    goto :goto_4

    .line 67
    :pswitch_74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->data:J

    goto :goto_4

    .line 61
    :pswitch_7b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->dir:I

    goto :goto_4

    .line 47
    :pswitch_82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ShipDraft;

    iput-object v2, p0, Linfo/flowersoft/theotown/city/objects/Ship;->draft:Linfo/flowersoft/theotown/draft/ShipDraft;

    if-eqz v2, :cond_94

    goto/16 :goto_4

    .line 49
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found no ship of id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :pswitch_ab
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->y:I

    goto/16 :goto_4

    .line 52
    :pswitch_b3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->x:I

    goto/16 :goto_4

    .line 64
    :pswitch_bb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->p:F

    goto/16 :goto_4

    .line 74
    :cond_c7
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->frame:I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->draft:Linfo/flowersoft/theotown/draft/ShipDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    div-int/2addr v1, v0

    rem-int/2addr p1, v1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->frame:I

    return-void

    nop

    :sswitch_data_d4
    .sparse-switch
        0x70 -> :sswitch_5c
        0x78 -> :sswitch_51
        0x79 -> :sswitch_46
        0xd1b -> :sswitch_3b
        0x1848d -> :sswitch_30
        0x2eefaa -> :sswitch_25
        0x5d2a96d -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_b3
        :pswitch_ab
        :pswitch_82
        :pswitch_7b
        :pswitch_74
        :pswitch_6d
    .end packed-switch
.end method


# virtual methods
.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getController()I
    .registers 2

    .line 104
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->controller:I

    return v0
.end method

.method public getData()J
    .registers 3

    .line 143
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->data:J

    return-wide v0
.end method

.method public getDir()I
    .registers 2

    .line 116
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->dir:I

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/ShipDraft;
    .registers 2

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->draft:Linfo/flowersoft/theotown/draft/ShipDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 112
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->frame:I

    return v0
.end method

.method public getP()F
    .registers 2

    .line 120
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->p:F

    return v0
.end method

.method public getX()I
    .registers 2

    .line 96
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 100
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->y:I

    return v0
.end method

.method public isInvalid()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->invalid:Z

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->draft:Linfo/flowersoft/theotown/draft/ShipDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 79
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 80
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 81
    const-string v0, "frame"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 82
    const-string v0, "dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->dir:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 83
    const-string v0, "p"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Ship;->p:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 84
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->data:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setController(I)V
    .registers 2

    .line 108
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->controller:I

    return-void
.end method

.method public setData(J)V
    .registers 3

    .line 147
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->data:J

    return-void
.end method

.method public setInvalid()V
    .registers 2

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->invalid:Z

    return-void
.end method

.method public setP(F)V
    .registers 2

    .line 124
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->p:F

    return-void
.end method

.method public setTarget(I)V
    .registers 4

    .line 128
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->x:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->dir:I

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->x:I

    .line 129
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->y:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->dir:I

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Ship;->y:I

    .line 130
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->dir:I

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Ship;->p:F

    return-void
.end method
