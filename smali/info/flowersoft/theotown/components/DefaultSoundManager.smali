###### Class info.flowersoft.theotown.components.DefaultSoundManager (info.flowersoft.theotown.components.DefaultSoundManager)
.class public final Linfo/flowersoft/theotown/components/DefaultSoundManager;
.super Linfo/flowersoft/theotown/city/components/SoundManager;
.source "DefaultSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;,
        Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;
    }
.end annotation


# instance fields
.field public active:Z

.field public final idToSoundSource:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;",
            ">;"
        }
    .end annotation
.end field

.field public final leftSounds:[F

.field public final rightSounds:[F

.field public final soundSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;",
            ">;"
        }
    .end annotation
.end field

.field public tiles:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/SoundManager;-><init>()V

    const/4 v0, 0x3

    .line 32
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    .line 33
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    .line 44
    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->idToSoundSource:Lcom/badlogic/gdx/utils/IntMap;

    .line 45
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->active:Z

    .line 47
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_NATURE:I

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->addAmbientSound(II)V

    const/4 v0, 0x1

    .line 48
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_OCEAN:I

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->addAmbientSound(II)V

    const/4 v0, 0x2

    .line 49
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_TRAFFIC:I

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->addAmbientSound(II)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultSoundManager;-><init>()V

    .line 69
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    :cond_d
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/DefaultSoundManager;)[F
    .registers 1

    .line 25
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/DefaultSoundManager;)[F
    .registers 1

    .line 25
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    return-object p0
.end method


# virtual methods
.method public final addAmbientSound(II)V
    .registers 6

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->AMBIENT:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;-><init>(Linfo/flowersoft/theotown/components/DefaultSoundManager;FI)V

    invoke-virtual {p0, p2, v0, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public afterCollection()V
    .registers 10

    .line 117
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_14

    :goto_7
    if-ge v2, v1, :cond_43

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    aput v3, v0, v2

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 123
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    :goto_1a
    if-ge v2, v1, :cond_43

    .line 125
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    aget v5, v4, v2

    mul-float/2addr v5, v0

    iget v6, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v7}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v5

    aput v5, v4, v2

    .line 126
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    aget v5, v4, v2

    mul-float/2addr v5, v0

    iget v8, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    div-float/2addr v5, v6

    invoke-static {v5, v3, v7}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_43
    return-void
.end method

.method public beforeCollection()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_11

    .line 77
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 78
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_11
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    return-void
.end method

.method public final collect(IIIF)V
    .registers 8

    int-to-float p1, p1

    .line 104
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result p2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2e

    .line 108
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    aget v1, p2, p3

    add-float/2addr v1, p4

    aput v1, p2, p3

    .line 109
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    aget v1, p2, p3

    mul-float/2addr p4, p1

    div-float/2addr p4, v0

    add-float/2addr v1, p4

    aput v1, p2, p3

    return-void

    .line 111
    :cond_2e
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->leftSounds:[F

    aget v2, v1, p3

    div-float/2addr p1, v0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p4

    add-float/2addr v2, p2

    aput v2, v1, p3

    .line 112
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->rightSounds:[F

    aget p2, p1, p3

    add-float/2addr p2, p4

    aput p2, p1, p3

    return-void
.end method

.method public collect(Linfo/flowersoft/theotown/city/Tiles;IIIIZ)V
    .registers 9

    .line 84
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    if-eqz v0, :cond_3d

    sget v0, Linfo/flowersoft/theotown/resources/Settings;->soundAmbientLevel:I

    if-nez v0, :cond_9

    goto :goto_3d

    .line 89
    :cond_9
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 90
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v1

    .line 91
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz v1, :cond_21

    if-nez p6, :cond_21

    const/4 p1, 0x0

    const/high16 p3, 0x41200000    # 10.0f

    .line 94
    invoke-virtual {p0, p4, p5, p1, p3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->collect(IIIF)V

    goto :goto_38

    :cond_21
    if-eqz p1, :cond_2d

    const/high16 p3, 0x42200000    # 40.0f

    .line 96
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    mul-float/2addr p1, p3

    const/4 p3, 0x2

    invoke-virtual {p0, p4, p5, p3, p1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->collect(IIIF)V

    goto :goto_38

    .line 97
    :cond_2d
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_38

    const/high16 p1, 0x3f800000    # 1.0f

    .line 98
    invoke-virtual {p0, p4, p5, p2, p1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->collect(IIIF)V

    .line 100
    :cond_38
    :goto_38
    iget p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    add-int/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->tiles:I

    :cond_3d
    :goto_3d
    return-void
.end method

.method public declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 150
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->active:Z

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    .line 152
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->pause()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v0

    goto :goto_1e

    .line 154
    :cond_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw v0
.end method

.method public declared-synchronized playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V
    .registers 7

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 171
    :try_start_3
    invoke-static {p3, v0, p2, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->access$200(Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;ILinfo/flowersoft/theotown/resources/SoundType;Z)V

    .line 172
    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->resume()V

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->idToSoundSource:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 175
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->idToSoundSource:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    .line 176
    iget-object p1, p1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :catchall_1f
    move-exception p1

    goto :goto_43

    .line 178
    :cond_21
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;-><init>(I)V

    .line 179
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->idToSoundSource:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object p3, v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-static {p3, p1, p2, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->access$200(Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;ILinfo/flowersoft/theotown/resources/SoundType;Z)V

    .line 184
    iget-boolean p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->active:Z

    if-eqz p1, :cond_41

    .line 185
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->resume()V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_1f

    .line 188
    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_1f

    throw p1
.end method

.method public declared-synchronized playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V
    .registers 5

    monitor-enter p0

    .line 164
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->active:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 165
    invoke-static {p3, p1, p2, v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->access$200(Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;ILinfo/flowersoft/theotown/resources/SoundType;Z)V

    .line 166
    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->resume()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_11

    .line 168
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw p1
.end method

.method public declared-synchronized resume()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 157
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->active:Z

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    .line 159
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->resume()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v0

    goto :goto_1e

    .line 161
    :cond_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw v0
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

.method public declared-synchronized update()V
    .registers 4

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->update()V

    const/4 v0, 0x0

    .line 135
    :goto_5
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 136
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    .line 137
    iget-object v2, v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->isValid()Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_47

    :cond_24
    :goto_24
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->resume()V

    .line 138
    :cond_27
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->isValid()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 139
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->update()V

    goto :goto_42

    .line 141
    :cond_31
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->stop()V

    .line 142
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->soundSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager;->idToSoundSource:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundId:I

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_22

    add-int/lit8 v0, v0, -0x1

    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 147
    :cond_45
    monitor-exit p0

    return-void

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_22

    throw v0
.end method

###### Class info.flowersoft.theotown.components.DefaultSoundManager.AnonymousClass1 (info.flowersoft.theotown.components.DefaultSoundManager$1)
.class public Linfo/flowersoft/theotown/components/DefaultSoundManager$1;
.super Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;
.source "DefaultSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultSoundManager;->addAmbientSound(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager;

.field public final synthetic val$ambientType:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultSoundManager;FI)V
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

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    iput p3, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;->val$ambientType:I

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;-><init>(F)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .registers 5

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->access$000(Linfo/flowersoft/theotown/components/DefaultSoundManager;)[F

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;->val$ambientType:I

    aget v1, v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->access$100(Linfo/flowersoft/theotown/components/DefaultSoundManager;)[F

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$1;->val$ambientType:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVolume(FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultSoundManager.CompoundSoundSource (info.flowersoft.theotown.components.DefaultSoundManager$CompoundSoundSource)
.class public Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;
.super Ljava/lang/Object;
.source "DefaultSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundSoundSource"
.end annotation


# instance fields
.field public mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

.field public soundId:I

.field public soundSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;-><init>(Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;F)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    .line 250
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundId:I

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->isValid()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 2

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->resume()V

    .line 259
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->update()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->pause()V

    .line 272
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public update()V
    .registers 2

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->mainSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->update()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultSoundManager.CompoundSoundSource.AnonymousClass1 (info.flowersoft.theotown.components.DefaultSoundManager$CompoundSoundSource$1)
.class public Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;
.super Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;
.source "DefaultSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;-><init>(F)V

    return-void
.end method


# virtual methods
.method public getStartRate()F
    .registers 3

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->getStartRate()F

    move-result v0

    return v0

    .line 197
    :cond_1a
    invoke-super {p0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->getStartRate()F

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 241
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method

.method public update()V
    .registers 8

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 205
    :goto_7
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 206
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    .line 207
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->isValid()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v3, :cond_29

    .line 208
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->update()V

    goto :goto_39

    .line 210
    :cond_29
    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v2, :cond_30

    .line 212
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    .line 214
    :cond_30
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 219
    :cond_3c
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v1

    move v3, v2

    .line 222
    :goto_4a
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v4, v4, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7e

    .line 223
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;

    iget-object v4, v4, Linfo/flowersoft/theotown/components/DefaultSoundManager$CompoundSoundSource;->soundSources:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    .line 224
    iget-object v5, v4, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v5, :cond_7b

    .line 226
    invoke-virtual {v5}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->getVolumeLeft()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v5

    sub-float v5, v1, v5

    mul-float/2addr v2, v5

    .line 227
    iget-object v4, v4, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->getVolumeRight()F

    move-result v4

    invoke-static {v4, v6, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v4

    sub-float v4, v1, v4

    mul-float/2addr v3, v4

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_7e
    sub-float v0, v1, v2

    sub-float/2addr v1, v3

    .line 232
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVolume(FF)V

    return-void

    .line 234
    :cond_87
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultSoundManager.SoundSource (info.flowersoft.theotown.components.DefaultSoundManager$SoundSource)
.class public abstract Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;
.super Ljava/lang/Object;
.source "DefaultSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SoundSource"
.end annotation


# instance fields
.field public initialVolume:F

.field public loop:Z

.field public soundID:I

.field public stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

.field public type:Linfo/flowersoft/theotown/resources/SoundType;


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->initialVolume:F

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;ILinfo/flowersoft/theotown/resources/SoundType;Z)V
    .registers 4

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->setSound(ILinfo/flowersoft/theotown/resources/SoundType;Z)V

    return-void
.end method


# virtual methods
.method public getStartRate()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public pause()V
    .registers 2

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 9

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-eqz v0, :cond_7

    .line 305
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    .line 307
    :cond_7
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->soundID:I

    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->type:Linfo/flowersoft/theotown/resources/SoundType;

    iget v4, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->initialVolume:F

    iget-boolean v6, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->loop:Z

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->getStartRate()F

    move-result v7

    move v5, v4

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;FFZF)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    .line 308
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->update()V

    return-void
.end method

.method public final setSound(ILinfo/flowersoft/theotown/resources/SoundType;Z)V
    .registers 4

    .line 288
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->soundID:I

    .line 289
    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->type:Linfo/flowersoft/theotown/resources/SoundType;

    .line 290
    iput-boolean p3, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->loop:Z

    return-void
.end method

.method public abstract update()V
.end method
