###### Class info.flowersoft.theotown.components.disaster.EarthQuakeDisaster (info.flowersoft.theotown.components.disaster.EarthQuakeDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "EarthQuakeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;
    }
.end annotation


# instance fields
.field public final quakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final destructionWave(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V
    .registers 13

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 103
    :try_start_3
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$500(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F

    move-result v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$500(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$600(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F

    move-result v2

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$600(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 105
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$000(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v3

    sub-int/2addr v3, v2

    :goto_27
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$000(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v4

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_c5

    .line 106
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$100(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v4

    sub-int/2addr v4, v2

    :goto_33
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$100(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v5

    add-int/2addr v5, v2

    if-gt v4, v5, :cond_c1

    .line 107
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 108
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$000(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v5

    sub-int v5, v3, v5

    .line 109
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$100(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v6

    sub-int v6, v4, v6

    mul-int v7, v5, v5

    mul-int v8, v6, v6

    add-int/2addr v7, v8

    int-to-double v7, v7

    .line 110
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    cmpg-float v7, v7, v1

    if-gtz v7, :cond_bd

    .line 112
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$600(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v1

    .line 113
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$500(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F

    move-result v8

    div-float/2addr v8, v1

    int-to-float v5, v5

    mul-float/2addr v7, v5

    int-to-float v5, v6

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 114
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 115
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v6, v6

    mul-float/2addr v6, v1

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_bd

    .line 117
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_b6

    .line 119
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v6

    if-nez v6, :cond_b6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v6, :cond_b6

    .line 120
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v7, 0xf

    .line 121
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 122
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v8, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v9, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v10, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v9, v10, v5}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v6, v7, v8, v9}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_b6

    :catchall_b4
    move-exception p1

    goto :goto_c7

    .line 125
    :cond_b6
    :goto_b6
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroy(IIZLvm2/LuaValue;)V

    :cond_bd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    :cond_c1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_27

    .line 131
    :cond_c5
    monitor-exit v0

    return-void

    :goto_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_3 .. :try_end_c8} :catchall_b4

    throw p1
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const v0, 0x3b03126f    # 0.002f

    return v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    .line 163
    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$000(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v1

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$100(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    goto :goto_28

    .line 165
    :cond_22
    :try_start_22
    filled-new-array {v1, v1}, [I

    move-result-object v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_20

    monitor-exit p0

    return-object v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_20

    throw v0
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

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

.method public isAutoEnabled()Z
    .registers 2

    .line 171
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterEarthquake:Z

    return v0
.end method

.method public declared-synchronized issue(II)Z
    .registers 9

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->isActive()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_65

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    monitor-exit p0

    return v1

    .line 138
    :cond_a
    :try_start_a
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;-><init>(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;)V

    .line 139
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$302(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;J)J

    .line 140
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$002(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;I)I

    .line 141
    invoke-static {v0, p2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$102(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;I)I

    .line 142
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p2, v2

    .line 143
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr p1, v2

    add-float/2addr p1, v2

    float-to-double v2, p2

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p2, v4

    mul-float/2addr p2, p1

    invoke-static {v0, p2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$502(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;F)F

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float/2addr p1, p2

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$602(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;F)F

    .line 146
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$402(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;I)I

    .line 148
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

    monitor-enter p1
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_65

    .line 149
    :try_start_4d
    iget-object p2, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V

    .line 151
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_67

    .line 153
    :try_start_56
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Catastrophe;

    .line 154
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Catastrophe;->issueQuake()V
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_65

    .line 156
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_65
    move-exception p1

    goto :goto_6a

    :catchall_67
    move-exception p2

    .line 151
    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p2

    :goto_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_65

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    .line 36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_d
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V
    .registers 7

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 47
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_EARTHQUAKE:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public declared-synchronized update()V
    .registers 7

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v1

    add-float/2addr v0, v1

    .line 83
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->quakes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    .line 86
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$300(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)J

    move-result-wide v3

    long-to-float v3, v3

    sub-float v3, v0, v3

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3e

    const/4 v3, 0x1

    .line 90
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$202(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;Z)Z

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :catchall_3c
    move-exception v0

    goto :goto_50

    .line 93
    :cond_3e
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$400(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_15

    .line 94
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->destructionWave(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V

    .line 95
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$408(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_3c

    goto :goto_15

    .line 99
    :cond_4e
    monitor-exit p0

    return-void

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_3c

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.EarthQuakeDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.EarthQuakeDisaster$1)
.class Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "EarthQuakeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

.field public final synthetic val$quake:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;->val$quake:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getTileX()F
    .registers 2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;->val$quake:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$000(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    return v0
.end method

.method public getTileY()F
    .registers 2

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;->val$quake:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$100(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;->val$quake:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->access$200(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.EarthQuakeDisaster.Quake (info.flowersoft.theotown.components.disaster.EarthQuakeDisaster$Quake)
.class public Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;
.super Ljava/lang/Object;
.source "EarthQuakeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Quake"
.end annotation


# instance fields
.field public destructionCount:I

.field public dx:F

.field public dy:F

.field public invalid:Z

.field public issueDay:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->this$0:Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$1;)V
    .registers 3

    .line 179
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;-><init>(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I
    .registers 1

    .line 179
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->x:I

    return p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;I)I
    .registers 2

    .line 179
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->x:I

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I
    .registers 1

    .line 179
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->y:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;I)I
    .registers 2

    .line 179
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->y:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)Z
    .registers 1

    .line 179
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->invalid:Z

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;Z)Z
    .registers 2

    .line 179
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->invalid:Z

    return p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)J
    .registers 3

    .line 179
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->issueDay:J

    return-wide v0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;J)J
    .registers 3

    .line 179
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->issueDay:J

    return-wide p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I
    .registers 1

    .line 179
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->destructionCount:I

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;I)I
    .registers 2

    .line 179
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->destructionCount:I

    return p1
.end method

.method public static synthetic access$408(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)I
    .registers 3

    .line 179
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->destructionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->destructionCount:I

    return v0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F
    .registers 1

    .line 179
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->dx:F

    return p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;F)F
    .registers 2

    .line 179
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->dx:F

    return p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;)F
    .registers 1

    .line 179
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->dy:F

    return p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;F)F
    .registers 2

    .line 179
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster$Quake;->dy:F

    return p1
.end method
