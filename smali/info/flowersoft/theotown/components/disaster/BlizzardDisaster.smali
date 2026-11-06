###### Class info.flowersoft.theotown.components.disaster.BlizzardDisaster (info.flowersoft.theotown.components.disaster.BlizzardDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "BlizzardDisaster.java"


# instance fields
.field public final SNOW_ON_ROAD_ANIM:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final SNOW_TILE:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public active:Z

.field public startDay:J

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 20
    const-string v0, "$animationsnowroad"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 21
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->SNOW_ON_ROAD_ANIM:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 22
    const-string v0, "$snowtile00"

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 23
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->SNOW_TILE:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-void
.end method


# virtual methods
.method public final end()V
    .registers 3

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()[I
    .registers 3

    .line 163
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->x:I

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->y:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    return v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public issue(II)Z
    .registers 5

    .line 149
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->isActive()Z

    move-result v0

    if-nez v0, :cond_25

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->startDay:J

    .line 151
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->x:I

    .line 152
    iput p2, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->y:I

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    .line 155
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultWeather;

    const p2, 0x945d1

    .line 156
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V

    :cond_25
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

    .line 35
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    goto :goto_41

    :sswitch_16
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_41

    :cond_1f
    const/4 v1, 0x3

    goto :goto_41

    :sswitch_21
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_41

    :cond_2a
    const/4 v1, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_41

    :cond_35
    const/4 v1, 0x1

    goto :goto_41

    :sswitch_37
    const-string v2, "start day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    packed-switch v1, :pswitch_data_78

    .line 50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 44
    :pswitch_48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->y:I

    goto :goto_0

    .line 41
    :pswitch_4f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->x:I

    goto :goto_0

    .line 38
    :pswitch_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    goto :goto_0

    .line 47
    :pswitch_5d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->startDay:J

    goto :goto_0

    :cond_64
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        -0x7f022d22 -> :sswitch_37
        -0x54d080fa -> :sswitch_2c
        0x78 -> :sswitch_21
        0x79 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_56
        :pswitch_4f
        :pswitch_48
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-string v0, "active"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 59
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    if-eqz v0, :cond_30

    .line 60
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 61
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 62
    const-string v0, "start day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->startDay:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_30
    return-void
.end method

.method public final spawnSnow()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x64

    if-ge v0, v1, :cond_3a

    .line 118
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    .line 119
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v1, v3

    float-to-double v2, v2

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 122
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->x:I

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->y:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->spawnSnow(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    return-void
.end method

.method public final spawnSnow(II)V
    .registers 10

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 129
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 131
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p2, :cond_5f

    .line 132
    iget-object p2, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->SNOW_ON_ROAD_ANIM:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    return-void

    .line 136
    :cond_32
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasWire(II)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->SNOW_TILE:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 137
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->SNOW_TILE:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    :cond_5f
    return-void
.end method

.method public update()V
    .registers 8

    .line 70
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->active:Z

    if-eqz v0, :cond_1f

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 72
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->startDay:J

    sub-long/2addr v0, v2

    const/16 v4, 0x1e

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_18

    .line 74
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->end()V

    return-void

    :cond_18
    long-to-float v6, v0

    sub-long/2addr v4, v2

    long-to-float v2, v4

    div-float/2addr v6, v2

    .line 76
    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->update(JF)V

    :cond_1f
    return-void
.end method

.method public final update(JF)V
    .registers 8

    .line 87
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/DefaultWeather;

    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    :cond_18
    const-wide/16 v2, 0x4

    cmp-long v0, p1, v2

    if-nez v0, :cond_26

    const/high16 v0, 0x40000000    # 2.0f

    .line 93
    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->setDownfallSpeed(F)V

    .line 94
    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setFogEnabled(Z)V

    :cond_26
    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_31

    const/high16 v1, 0x40400000    # 3.0f

    .line 97
    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setDownfallSpeed(F)V

    :cond_31
    const-wide/16 v1, 0x6

    cmp-long v1, p1, v1

    if-nez v1, :cond_3c

    const/high16 v1, 0x40800000    # 4.0f

    .line 100
    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setDownfallSpeed(F)V

    :cond_3c
    const-wide/16 v1, 0x14

    cmp-long v1, p1, v1

    if-nez v1, :cond_47

    const/high16 v2, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {p3, v2}, Linfo/flowersoft/theotown/components/DefaultWeather;->setDownfallSpeed(F)V

    :cond_47
    const-wide/16 v2, 0x19

    cmp-long p1, p1, v2

    if-nez p1, :cond_58

    .line 107
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 108
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->setFogEnabled(Z)V

    :cond_58
    if-ltz v0, :cond_5f

    if-gtz v1, :cond_5f

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;->spawnSnow()V

    :cond_5f
    return-void
.end method
