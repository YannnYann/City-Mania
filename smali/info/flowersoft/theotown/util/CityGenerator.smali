###### Class info.flowersoft.theotown.util.CityGenerator (info.flowersoft.theotown.util.CityGenerator)
.class public Linfo/flowersoft/theotown/util/CityGenerator;
.super Ljava/lang/Object;
.source "CityGenerator.java"


# instance fields
.field public author:Ljava/lang/String;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public decos:Z

.field public disabledBiomeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gameMode:Linfo/flowersoft/theotown/city/GameMode;

.field public heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

.field public name:Ljava/lang/String;

.field public region:Z

.field public regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

.field public rivers:Z

.field public roughness:I

.field public seed:Ljava/lang/String;

.field public size:Linfo/flowersoft/theotown/city/MapSize;

.field public terrain:Z

.field public trees:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/CityGenerator;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/RegionLayout;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    .line 92
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 93
    new-instance v1, Linfo/flowersoft/theotown/resources/HeightMapManager;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

    .line 94
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setTo(Linfo/flowersoft/theotown/util/CityGenerator;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/RegionLayout;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 58
    new-instance v0, Linfo/flowersoft/theotown/resources/HeightMapManager;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/resources/HeightMapManager;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

    .line 60
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/CityGenerator;->setRandomName()V

    .line 61
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/CityGenerator;->setRandomSeed()V

    .line 63
    iput-boolean p2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    .line 65
    sget-object p1, Linfo/flowersoft/theotown/resources/Settings;->author:Ljava/lang/String;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    if-eqz p2, :cond_37

    .line 67
    invoke-static {}, Linfo/flowersoft/theotown/city/MapSize;->values()[Linfo/flowersoft/theotown/city/MapSize;

    move-result-object p1

    sget p2, Linfo/flowersoft/theotown/resources/Settings;->regionMapSize:I

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/CityGenerator;->select([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/MapSize;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    goto :goto_45

    .line 69
    :cond_37
    invoke-static {}, Linfo/flowersoft/theotown/city/MapSize;->values()[Linfo/flowersoft/theotown/city/MapSize;

    move-result-object p1

    sget p2, Linfo/flowersoft/theotown/resources/Settings;->mapSize:I

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/CityGenerator;->select([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/MapSize;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    .line 71
    :goto_45
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p1

    sget p2, Linfo/flowersoft/theotown/resources/Settings;->gameMode:I

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/CityGenerator;->select([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/GameMode;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    .line 72
    sget-object p2, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    if-ne p1, p2, :cond_5b

    sget-object p1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    .line 73
    :cond_5b
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->trees:Z

    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    .line 74
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->decos:Z

    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    .line 75
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->terrain:Z

    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    .line 76
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->rivers:Z

    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    .line 77
    sget p1, Linfo/flowersoft/theotown/resources/Settings;->terrainRoughness:I

    iput p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    .line 78
    iget-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 79
    sget-object p1, Linfo/flowersoft/theotown/resources/Settings;->disabledBiomes:Ljava/util/List;

    if-eqz p1, :cond_7d

    .line 80
    iget-object p2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 292
    instance-of v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 293
    check-cast p1, Linfo/flowersoft/theotown/util/CityGenerator;

    .line 294
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    if-ne v0, v2, :cond_47

    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    iget-boolean v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    if-ne v0, v2, :cond_47

    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    iget-boolean v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    if-ne v0, v2, :cond_47

    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    iget-boolean v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    if-ne v0, v2, :cond_47

    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    iget-boolean v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    if-ne v0, v2, :cond_47

    iget v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    iget v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    if-ne v0, v2, :cond_47

    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    .line 300
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    iget-boolean v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    if-ne v0, v2, :cond_47

    iget-object p1, p1, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    return p1

    :cond_47
    return v1
.end method

.method public generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/ProgressVariable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)",
            "Linfo/flowersoft/theotown/creation/CityCreator$CityData;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 239
    new-instance v2, Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/creation/CityCreator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 241
    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_20
    move-object v8, v0

    goto :goto_25

    :cond_22
    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    goto :goto_20

    .line 242
    :goto_25
    new-instance v0, Ljava/io/File;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_CACHE_DIR:Ljava/io/File;

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 244
    :cond_38
    new-instance v0, Ljava/io/File;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    :cond_3f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_73

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 250
    :try_start_4c
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v5, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v0

    invoke-interface {v3, v5, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->loadHeightMap(Lcom/badlogic/gdx/files/FileHandle;I)Linfo/flowersoft/theotown/creation/HeightMap;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_61} :catch_62

    goto :goto_67

    :catch_62
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v4

    :goto_67
    if-nez v0, :cond_70

    .line 254
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v5, "Couldn\'t read heightmap"

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :cond_70
    :goto_70
    move-object/from16 v16, v0

    goto :goto_80

    .line 256
    :cond_73
    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

    iget-object v3, v1, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v3

    invoke-virtual {v0, v8, v3}, Linfo/flowersoft/theotown/resources/HeightMapManager;->get(Ljava/lang/String;I)Linfo/flowersoft/theotown/creation/HeightMap;

    move-result-object v0

    goto :goto_70

    .line 259
    :goto_80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_8b

    return-object v4

    .line 261
    :cond_8b
    iget-object v3, v1, Linfo/flowersoft/theotown/util/CityGenerator;->name:Ljava/lang/String;

    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    .line 262
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v4

    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/MapSize;->getHeight()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    iget-object v7, v1, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    iget-boolean v9, v1, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    iget-boolean v10, v1, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    iget-boolean v11, v1, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    iget v12, v1, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    iget-object v0, v1, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    .line 265
    invoke-static {v0}, Linfo/flowersoft/theotown/creation/CityCreator;->collectAvailableBiomes(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 261
    invoke-virtual/range {v2 .. v16}, Linfo/flowersoft/theotown/creation/CityCreator;->generate(Ljava/lang/String;IILinfo/flowersoft/theotown/city/GameMode;Ljava/lang/String;Ljava/lang/String;ZZZILinfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;Linfo/flowersoft/theotown/creation/HeightMap;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 268
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v3, v1, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setAuthor(Ljava/lang/String;)V

    :cond_bc
    return-object v0
.end method

.method public getActiveBiomes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    invoke-static {v0}, Linfo/flowersoft/theotown/creation/CityCreator;->collectAvailableBiomes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledBiomeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    return-object v0
.end method

.method public getEffectiveGridSize()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getEffectiveSize()I
    .registers 3

    .line 215
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/CityGenerator;->getEffectiveGridSize()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getGameMode()Linfo/flowersoft/theotown/city/GameMode;
    .registers 2

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    return-object v0
.end method

.method public getHeightMapManager()Linfo/flowersoft/theotown/resources/HeightMapManager;
    .registers 2

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;
    .registers 2

    .line 235
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoughness()I
    .registers 2

    .line 138
    iget v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    return v0
.end method

.method public getSeed()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Linfo/flowersoft/theotown/city/MapSize;
    .registers 2

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    return-object v0
.end method

.method public isDecos()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    return v0
.end method

.method public isRegion()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    return v0
.end method

.method public isRivers()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    return v0
.end method

.method public isTerrain()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    return v0
.end method

.method public isTrees()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    return v0
.end method

.method public saveSettings()V
    .registers 3

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    sput-object v0, Linfo/flowersoft/theotown/resources/Settings;->author:Ljava/lang/String;

    .line 103
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    if-eqz v0, :cond_11

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->regionMapSize:I

    goto :goto_19

    .line 106
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->mapSize:I

    .line 108
    :goto_19
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->gameMode:I

    .line 109
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->trees:Z

    .line 110
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->decos:Z

    .line 111
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->terrain:Z

    .line 112
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->rivers:Z

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->terrainRoughness:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Linfo/flowersoft/theotown/resources/Settings;->disabledBiomes:Ljava/util/List;

    return-void
.end method

.method public final select([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 85
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_12

    :cond_6
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 87
    :cond_9
    array-length v0, p1

    if-lt p2, v0, :cond_f

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 88
    :cond_f
    aget-object p1, p1, p2

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    return-void
.end method

.method public setDecos(Z)V
    .registers 2

    .line 154
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    return-void
.end method

.method public setDisabledBiomeIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    return-void
.end method

.method public setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 2

    .line 231
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->name:Ljava/lang/String;

    return-void
.end method

.method public setRandomName()V
    .registers 2

    .line 174
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generateFiltered()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->name:Ljava/lang/String;

    return-void
.end method

.method public setRandomSeed()V
    .registers 5

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    if-eqz v0, :cond_34

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_34

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    return-void

    .line 182
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    return-void
.end method

.method public setRivers(Z)V
    .registers 2

    .line 162
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    return-void
.end method

.method public setRoughness(I)V
    .registers 2

    .line 166
    iput p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    return-void
.end method

.method public setSeed(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    return-void
.end method

.method public setSize(Linfo/flowersoft/theotown/city/MapSize;)V
    .registers 2

    .line 223
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    return-void
.end method

.method public setTerrain(Z)V
    .registers 2

    .line 158
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    return-void
.end method

.method public setTo(Linfo/flowersoft/theotown/util/CityGenerator;)V
    .registers 4

    .line 274
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->name:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->name:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->author:Ljava/lang/String;

    .line 276
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->seed:Ljava/lang/String;

    .line 277
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->size:Linfo/flowersoft/theotown/city/MapSize;

    .line 278
    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->region:Z

    .line 279
    iget-object v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    .line 280
    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    .line 281
    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->decos:Z

    .line 282
    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->terrain:Z

    .line 283
    iget-boolean v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->rivers:Z

    .line 284
    iget v0, p1, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    iput v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->roughness:I

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    iget-object v1, p1, Linfo/flowersoft/theotown/util/CityGenerator;->disabledBiomeIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object p1, p1, Linfo/flowersoft/theotown/util/CityGenerator;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    return-void
.end method

.method public setTrees(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/CityGenerator;->trees:Z

    return-void
.end method
