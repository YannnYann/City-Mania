###### Class info.flowersoft.theotown.components.disaster.FloodingDisaster (info.flowersoft.theotown.components.disaster.FloodingDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "FloodingDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;
    }
.end annotation


# instance fields
.field public active:Z

.field public floodedTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;",
            ">;"
        }
    .end annotation
.end field

.field public originalWaterTilesCount:I

.field public startDay:J

.field public targetDay:J

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final flood(Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;)Z
    .registers 7

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v1, p1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    iget v2, p1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const v0, 0x3ba3d70a    # 0.005f

    return v0
.end method

.method public getLocation()[I
    .registers 3

    .line 200
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    return v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 205
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterFlooding:Z

    return v0
.end method

.method public issue(II)Z
    .registers 8

    .line 185
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    .line 187
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    .line 188
    iput p2, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    .line 189
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->startDay:J

    const-wide/16 v1, 0x19

    add-long/2addr p1, v1

    .line 190
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    add-long/2addr p1, v1

    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->targetDay:J

    .line 191
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWaterTiles()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->originalWaterTilesCount:I

    return v0

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_b6

    goto :goto_62

    :sswitch_16
    const-string v2, "original water tiles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_62

    :cond_1f
    const/4 v1, 0x6

    goto :goto_62

    :sswitch_21
    const-string v2, "target day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_62

    :cond_2a
    const/4 v1, 0x5

    goto :goto_62

    :sswitch_2c
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_62

    :cond_35
    const/4 v1, 0x4

    goto :goto_62

    :sswitch_37
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_62

    :cond_40
    const/4 v1, 0x3

    goto :goto_62

    :sswitch_42
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_62

    :cond_4b
    const/4 v1, 0x2

    goto :goto_62

    :sswitch_4d
    const-string v2, "flooded tiles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_62

    :cond_56
    const/4 v1, 0x1

    goto :goto_62

    :sswitch_58
    const-string v2, "start day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :goto_62
    packed-switch v1, :pswitch_data_d4

    .line 74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 61
    :pswitch_69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->originalWaterTilesCount:I

    goto :goto_0

    .line 52
    :pswitch_70
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->targetDay:J

    goto :goto_0

    .line 58
    :pswitch_77
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    goto :goto_0

    .line 55
    :pswitch_7e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    goto/16 :goto_0

    .line 46
    :pswitch_86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    goto/16 :goto_0

    .line 64
    :pswitch_8e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 65
    :goto_91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;-><init>(Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 68
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_91

    .line 71
    :cond_a8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 49
    :pswitch_ad
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->startDay:J

    goto/16 :goto_0

    :cond_b5
    return-void

    :sswitch_data_b6
    .sparse-switch
        -0x7f022d22 -> :sswitch_58
        -0x7027c93e -> :sswitch_4d
        -0x54d080fa -> :sswitch_42
        0x78 -> :sswitch_37
        0x79 -> :sswitch_2c
        0x1ce9508d -> :sswitch_21
        0x218b736d -> :sswitch_16
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_8e
        :pswitch_86
        :pswitch_7e
        :pswitch_77
        :pswitch_70
        :pswitch_69
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const-string v0, "active"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 82
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    if-eqz v0, :cond_6e

    .line 83
    const-string v0, "start day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->startDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 84
    const-string v0, "target day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->targetDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 85
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    const-string v0, "original water tiles"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->originalWaterTilesCount:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 88
    const-string v0, "flooded tiles"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 90
    :goto_4f
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 91
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    .line 92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 94
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 96
    :cond_6b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_6e
    return-void
.end method

.method public update()V
    .registers 16

    .line 102
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    if-eqz v0, :cond_1ab

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 105
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    .line 106
    iget v3, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->originalWaterTilesCount:I

    int-to-float v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    sub-float v3, v4, v3

    .line 108
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 109
    iget v5, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->originalWaterTilesCount:I

    add-int/lit16 v5, v5, 0x190

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 110
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getWaterTiles()I

    move-result v5

    sub-int/2addr v3, v5

    .line 111
    iget-wide v5, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->startDay:J

    sub-long/2addr v1, v5

    long-to-float v1, v1

    iget-wide v7, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->targetDay:J

    sub-long/2addr v7, v5

    long-to-float v2, v7

    div-float/2addr v1, v2

    cmpl-float v2, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ltz v2, :cond_81

    .line 114
    iput-boolean v6, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->active:Z

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    .line 118
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v3, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    iget v1, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    invoke-virtual {v2, v6, v3, v1, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    goto :goto_65

    .line 120
    :cond_7b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_81
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15f

    move v1, v6

    .line 122
    :goto_89
    div-int/lit8 v2, v3, 0x4

    if-ge v1, v2, :cond_1ab

    .line 124
    new-instance v2, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v2, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 125
    iget v5, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    add-int/lit8 v5, v5, -0x10

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_9c
    iget v7, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    add-int/lit8 v7, v7, 0x10

    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-gt v5, v7, :cond_14c

    .line 126
    iget v7, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    add-int/lit8 v7, v7, -0x10

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_b6
    iget v8, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    add-int/lit8 v8, v8, 0x10

    iget-object v10, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v7, v8, :cond_148

    .line 127
    invoke-virtual {v0, v7, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    .line 128
    invoke-virtual {v0, v7, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v10

    .line 130
    iget-object v11, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    invoke-virtual {v11, v7, v5}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v11

    if-nez v11, :cond_144

    if-eqz v10, :cond_e3

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v10

    if-nez v10, :cond_144

    :cond_e3
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v10

    iget-boolean v10, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->dry:Z

    if-nez v10, :cond_144

    iget-object v10, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 131
    invoke-virtual {v10, v7, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWaterPlaceable(II)Z

    move-result v10

    if-eqz v10, :cond_144

    .line 132
    iget v10, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->x:I

    sub-int v10, v7, v10

    .line 133
    iget v11, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->y:I

    sub-int v11, v5, v11

    mul-int/2addr v10, v10

    mul-int/2addr v11, v11

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    int-to-double v10, v10

    .line 134
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    div-float v10, v4, v10

    iget-short v11, v8, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/lit8 v11, v11, 0xa

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v11, v9

    :goto_10e
    const/16 v12, 0x8

    if-gt v11, v12, :cond_136

    .line 136
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v12

    add-int/2addr v12, v7

    .line 137
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v13

    add-int/2addr v13, v5

    .line 138
    iget-object v14, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14, v12, v13}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v14

    if-eqz v14, :cond_130

    iget-object v14, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v12

    if-eqz v12, :cond_133

    :cond_130
    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v10, v12

    :cond_133
    mul-int/lit8 v11, v11, 0x2

    goto :goto_10e

    .line 142
    :cond_136
    new-instance v11, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v8

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-direct {v11, p0, v7, v5, v8}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;-><init>(Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;IILjava/lang/String;)V

    invoke-virtual {v2, v11, v10}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_144
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b6

    :cond_148
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9c

    .line 146
    :cond_14c
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v5

    if-eqz v5, :cond_1ab

    .line 147
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->flood(Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_89

    .line 153
    :cond_15f
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->floodedTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    :cond_165
    :goto_165
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    .line 156
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_165

    .line 157
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v3, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    iget v4, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    invoke-virtual {v2, v6, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    .line 158
    iget-object v2, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->groundId:Ljava/lang/String;

    if-eqz v2, :cond_1a7

    .line 159
    const-class v3, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 160
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    iget v4, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    iget v1, v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    invoke-virtual {v3, v4, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    if-eqz v2, :cond_1a7

    .line 161
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    if-eq v3, v2, :cond_1a7

    .line 162
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 165
    :cond_1a7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_165

    :cond_1ab
    return-void
.end method

###### Class info.flowersoft.theotown.components.disaster.FloodingDisaster.TileCoord (info.flowersoft.theotown.components.disaster.FloodingDisaster$TileCoord)
.class Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;
.super Ljava/lang/Object;
.source "FloodingDisaster.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileCoord"
.end annotation


# instance fields
.field public groundId:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->this$0:Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p2, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    .line 220
    iput p3, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    .line 221
    iput-object p4, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->groundId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->this$0:Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 261
    instance-of v1, p1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    if-eqz v1, :cond_17

    .line 262
    check-cast p1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;

    .line 263
    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    iget v2, p1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    if-ne v1, v2, :cond_17

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    iget p1, p1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    if-ne v1, p1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 256
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    mul-int/lit16 v0, v0, 0x800

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 231
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_54

    goto :goto_36

    :sswitch_16
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v1, 0x2

    goto :goto_36

    :sswitch_21
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v1, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    packed-switch v1, :pswitch_data_62

    .line 242
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 239
    :pswitch_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->groundId:Ljava/lang/String;

    goto :goto_0

    .line 236
    :pswitch_44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    goto :goto_0

    .line 233
    :pswitch_4b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    goto :goto_0

    :cond_52
    return-void

    nop

    :sswitch_data_54
    .sparse-switch
        0x78 -> :sswitch_2c
        0x79 -> :sswitch_21
        0xd1b -> :sswitch_16
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 250
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->groundId:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->groundId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 271
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster$TileCoord;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%d, %d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
