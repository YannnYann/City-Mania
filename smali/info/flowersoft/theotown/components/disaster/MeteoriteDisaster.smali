###### Class info.flowersoft.theotown.components.disaster.MeteoriteDisaster (info.flowersoft.theotown.components.disaster.MeteoriteDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "MeteoriteDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;
    }
.end annotation


# instance fields
.field public final fireAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final meteorAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final meteorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;",
            ">;"
        }
    .end annotation
.end field

.field public final smokeDraft:Linfo/flowersoft/theotown/draft/SmokeDraft;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    .line 47
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animationmeteorball00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 48
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animationfire04"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->fireAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 49
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$smoke03"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/SmokeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->smokeDraft:Linfo/flowersoft/theotown/draft/SmokeDraft;

    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 7

    monitor-enter p0

    .line 275
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 276
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v0

    add-float/2addr v1, v0

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    .line 279
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$300(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)J

    move-result-wide v3

    long-to-float v3, v3

    sub-float v3, v1, v3

    .line 281
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$400(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    invoke-virtual {p0, v2, v4, p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onDraw(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;FLio/blueflower/stapel2d/drawing/Engine;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_1a

    :catchall_37
    move-exception p1

    goto :goto_3b

    .line 283
    :cond_39
    monitor-exit p0

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_37

    throw p1
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const v0, 0x3ba3d70a    # 0.005f

    return v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 356
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    .line 357
    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v1

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

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

    .line 359
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

    .line 332
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

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

    .line 365
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterMeteorite:Z

    return v0
.end method

.method public declared-synchronized issue(II)Z
    .registers 7

    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_30

    if-nez v0, :cond_c

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 339
    :cond_c
    :try_start_c
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 341
    new-instance v2, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;-><init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;)V

    .line 342
    invoke-static {v2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$302(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;J)J

    .line 343
    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$102(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I

    .line 344
    invoke-static {v2, p2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$202(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I

    const/4 p1, 0x4

    .line 345
    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$402(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I

    .line 347
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_30

    .line 350
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "meteorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 94
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 66
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 67
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;-><init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;)V

    .line 69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 70
    :goto_2b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_a2

    goto :goto_6c

    :sswitch_41
    const-string v3, "flight time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_6c

    :cond_4a
    const/4 v2, 0x3

    goto :goto_6c

    :sswitch_4c
    const-string v3, "y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto :goto_6c

    :cond_55
    const/4 v2, 0x2

    goto :goto_6c

    :sswitch_57
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_6c

    :cond_60
    const/4 v2, 0x1

    goto :goto_6c

    :sswitch_62
    const-string v3, "start day"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    packed-switch v2, :pswitch_data_b4

    .line 85
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2b

    .line 82
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$402(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I

    goto :goto_2b

    .line 76
    :pswitch_7b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$202(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I

    goto :goto_2b

    .line 73
    :pswitch_83
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$102(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I

    goto :goto_2b

    .line 79
    :pswitch_8b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$302(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;J)J

    goto :goto_2b

    .line 88
    :cond_93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 91
    :cond_9c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_a1
    return-void

    :sswitch_data_a2
    .sparse-switch
        -0x7f022d22 -> :sswitch_62
        0x78 -> :sswitch_57
        0x79 -> :sswitch_4c
        0x4339047d -> :sswitch_41
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_83
        :pswitch_7b
        :pswitch_73
    .end packed-switch
.end method

.method public final onDraw(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;FLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 286
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v2

    int-to-float v2, v2

    .line 287
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v3

    int-to-float v3, v3

    .line 288
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    .line 289
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v2

    add-float/2addr v2, v5

    .line 290
    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v3

    .line 291
    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 292
    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v3, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 293
    iget-object v3, v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v7, 0x64

    int-to-float v8, v7

    mul-float v8, v8, p2

    .line 296
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 297
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v9

    .line 298
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v10

    .line 300
    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float v12, v8, v9

    .line 301
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/2addr v13, v6

    int-to-float v13, v13

    mul-float v14, v8, v10

    .line 302
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    sub-int v15, v2, v15

    int-to-float v15, v15

    .line 300
    invoke-virtual {v1, v11, v13, v15, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    float-to-int v3, v8

    .line 305
    rem-int/lit8 v11, v3, 0x5

    sub-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x5

    .line 306
    :goto_84
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$400(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v11

    mul-int/2addr v11, v7

    if-ge v3, v11, :cond_d8

    int-to-float v11, v3

    sub-float v13, v11, v8

    const/high16 v15, 0x40a00000    # 5.0f

    div-float/2addr v13, v15

    .line 308
    div-int/lit8 v15, v3, 0x5

    mul-int/lit8 v16, v15, 0x25

    .line 309
    rem-int/lit8 v16, v16, 0xd

    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v17

    add-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    iget-object v5, v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->smokeDraft:Linfo/flowersoft/theotown/draft/SmokeDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v7, v5

    rem-int v16, v16, v7

    .line 310
    aget v5, v5, v16

    .line 311
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float v16, v11, v13

    mul-float v16, v16, v9

    .line 312
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    add-int v4, v6, v16

    int-to-float v4, v4

    .line 313
    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_be

    const/high16 v15, 0x3fc00000    # 1.5f

    goto :goto_c0

    :cond_be
    const/high16 v15, 0x3f000000    # 0.5f

    :goto_c0
    mul-float/2addr v13, v15

    add-float/2addr v11, v13

    const/high16 v13, 0x41000000    # 8.0f

    sub-float/2addr v11, v13

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-int v11, v2, v11

    int-to-float v11, v11

    .line 311
    invoke-virtual {v1, v7, v4, v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v3, v3, 0x5

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/16 v7, 0x64

    goto :goto_84

    .line 317
    :cond_d8
    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 318
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v3

    .line 319
    iget-object v4, v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->fireAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    div-int/lit16 v3, v3, 0xc8

    array-length v5, v4

    rem-int/2addr v3, v5

    aget v3, v4, v3

    const/16 v4, 0xff

    .line 321
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 322
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 323
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v6, v5

    int-to-float v5, v6

    .line 324
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    .line 322
    invoke-virtual {v1, v4, v5, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/4 v2, 0x0

    .line 325
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 327
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$400(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$602(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;F)F

    return-void
.end method

.method public final onImpact(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
    .registers 12

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 173
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_METEORITE_IMPACT:I

    sget-object v3, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v4, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, p0, v5, p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;-><init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 205
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Catastrophe;

    .line 206
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Catastrophe;->issueFlash()V

    .line 207
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Catastrophe;->issueQuake()V

    .line 211
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    :goto_30
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    if-gt v1, v2, :cond_93

    .line 212
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    :goto_3e
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    if-gt v2, v3, :cond_90

    .line 213
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v4

    sub-int v4, v1, v4

    mul-int/2addr v3, v4

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v5

    sub-int v5, v2, v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 214
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 215
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_8d

    const/16 v4, 0x40

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_8d

    const/16 v4, 0x24

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8a

    .line 217
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onInnerImpact(II)V

    goto :goto_8d

    :catchall_87
    move-exception p1

    goto/16 :goto_101

    .line 219
    :cond_8a
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onOuterImpact(II)V

    :cond_8d
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 225
    :cond_93
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_9b
    if-ge v2, v1, :cond_e3

    .line 227
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v4

    .line 228
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v5

    .line 230
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float/2addr v4, v3

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 231
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 232
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v4, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 233
    invoke-virtual {p0, v4, v3}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onSmallerImpact(II)V

    :cond_e0
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 237
    :cond_e3
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$crater4x4"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 238
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 239
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v4, 0x0

    .line 237
    invoke-virtual {v1, v2, v3, p1, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tryToPlaceCrater(Linfo/flowersoft/theotown/draft/BuildingDraft;IILvm2/LuaValue;)V

    .line 241
    monitor-exit v0

    return-void

    :goto_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_3 .. :try_end_102} :catchall_87

    throw p1
.end method

.method public final onInnerImpact(II)V
    .registers 6

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroy(IIZLvm2/LuaValue;)V

    return-void
.end method

.method public final onOuterImpact(II)V
    .registers 5

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    .line 256
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    .line 258
    const-class p2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    const/4 v0, 0x6

    if-eqz v1, :cond_25

    .line 259
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 260
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 261
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    return-void

    :cond_25
    if-eqz p1, :cond_38

    .line 263
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 264
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 265
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Tree;)Z

    :cond_38
    return-void
.end method

.method public final onSmallerImpact(II)V
    .registers 7

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onOuterImpact(II)V

    .line 246
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onOuterImpact(II)V

    .line 247
    :cond_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onOuterImpact(II)V

    .line 248
    :cond_27
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onOuterImpact(II)V

    .line 249
    :cond_34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroy(IIZLvm2/LuaValue;)V

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$crater1x1"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1, p1, p2, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->tryToPlaceCrater(Linfo/flowersoft/theotown/draft/BuildingDraft;IILvm2/LuaValue;)V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 54
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    .line 57
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const-string v0, "meteorites"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    .line 103
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$500(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 104
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 105
    const-string v2, "x"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 106
    const-string v2, "y"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 107
    const-string v2, "start day"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$300(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 108
    const-string v2, "flight time"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$400(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v1

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 109
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_f

    .line 112
    :cond_5c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
    .registers 7

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    .line 117
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 118
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_METEORITE_FLY:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public declared-synchronized update()V
    .registers 6

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v1

    add-float/2addr v0, v1

    .line 155
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->meteorites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    .line 159
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$300(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)J

    move-result-wide v3

    long-to-float v3, v3

    sub-float v3, v0, v3

    .line 160
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$400(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_15

    .line 163
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onImpact(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V

    const/4 v3, 0x1

    .line 164
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$502(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;Z)Z

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3f

    goto :goto_15

    :catchall_3f
    move-exception v0

    goto :goto_43

    .line 168
    :cond_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_3f

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.MeteoriteDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.MeteoriteDisaster$1)
.class Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "MeteoriteDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

.field public final synthetic val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
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

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 0
    const/16 v0, 0xb

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 0
    const/16 v0, 0xb

    return v0
.end method

.method public getTileX()F
    .registers 2

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    int-to-float v0, v0

    return v0
.end method

.method public getTileY()F
    .registers 2

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    int-to-float v0, v0

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$600(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)F

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$500(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.MeteoriteDisaster.AnonymousClass2 (info.flowersoft.theotown.components.disaster.MeteoriteDisaster$2)
.class Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "MeteoriteDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->onImpact(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

.field public final synthetic val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)V
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

    .line 173
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;->this$0:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

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

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    return v0
.end method

.method public getTileY()F
    .registers 2

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$2;->val$meteorite:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.MeteoriteDisaster.Meteorite (info.flowersoft.theotown.components.disaster.MeteoriteDisaster$Meteorite)
.class public Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;
.super Ljava/lang/Object;
.source "MeteoriteDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Meteorite"
.end annotation


# instance fields
.field public alpha:F

.field public flightTime:I

.field public invalid:Z

.field public startDay:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 373
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->this$0:Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$1;)V
    .registers 3

    .line 373
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;-><init>(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I
    .registers 1

    .line 373
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->x:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I
    .registers 2

    .line 373
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->x:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I
    .registers 1

    .line 373
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->y:I

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I
    .registers 2

    .line 373
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->y:I

    return p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)J
    .registers 3

    .line 373
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->startDay:J

    return-wide v0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;J)J
    .registers 3

    .line 373
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->startDay:J

    return-wide p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)I
    .registers 1

    .line 373
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->flightTime:I

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;I)I
    .registers 2

    .line 373
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->flightTime:I

    return p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)Z
    .registers 1

    .line 373
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->invalid:Z

    return p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;Z)Z
    .registers 2

    .line 373
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->invalid:Z

    return p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;)F
    .registers 1

    .line 373
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->alpha:F

    return p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;F)F
    .registers 2

    .line 373
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster$Meteorite;->alpha:F

    return p1
.end method
