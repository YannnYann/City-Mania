###### Class info.flowersoft.theotown.creation.RegionCreator (info.flowersoft.theotown.creation.RegionCreator)
.class public final Linfo/flowersoft/theotown/creation/RegionCreator;
.super Ljava/lang/Object;
.source "RegionCreator.java"


# instance fields
.field public final activeBiomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;"
        }
    .end annotation
.end field

.field public cityCreator:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final createOriginBackup:Z

.field public final decos:Z

.field public final gameMode:Linfo/flowersoft/theotown/city/GameMode;

.field public final heightmap:Linfo/flowersoft/theotown/creation/HeightMap;

.field public final mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final rivers:Z

.field public final roughness:I

.field public final seed:Ljava/lang/String;

.field public final seedName:Ljava/lang/String;

.field public template:Linfo/flowersoft/theotown/creation/CityCreator$CityData;

.field public final terrain:Z

.field public final tilesPerUnit:I

.field public final trees:Z


# direct methods
.method public static synthetic $r8$lambda$7YsNgq26XYHXUWCvr6F3QJsmw7g(Ljava/lang/Float;)V
    .registers 1

    .line 0
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/String;ZZZZILjava/util/List;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/creation/HeightMap;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZI",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;",
            "Linfo/flowersoft/theotown/city/GameMode;",
            "Linfo/flowersoft/theotown/creation/HeightMap;",
            "Z)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 76
    iput-object p2, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 77
    iput p3, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->tilesPerUnit:I

    .line 78
    iput-object p4, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->seed:Ljava/lang/String;

    .line 79
    iput-boolean p6, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->trees:Z

    .line 80
    iput-boolean p7, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->decos:Z

    .line 81
    iput-boolean p8, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->terrain:Z

    .line 82
    iput-boolean p9, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->rivers:Z

    .line 83
    iput p10, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->roughness:I

    .line 84
    iput-object p11, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->activeBiomes:Ljava/util/List;

    .line 85
    iput-object p12, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    .line 86
    iput-object p13, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->heightmap:Linfo/flowersoft/theotown/creation/HeightMap;

    .line 87
    iput-boolean p14, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->createOriginBackup:Z

    .line 89
    const-string p1, "#"

    invoke-virtual {p5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/16 p1, 0x23

    .line 90
    invoke-virtual {p5, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p5, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 93
    :cond_30
    iput-object p5, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->seedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRegionMap(III)V
    .registers 10

    const/4 v5, 0x0

    move v4, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 240
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/creation/RegionCreator;->addRegionMap(IIIII)V

    return-void
.end method

.method public addRegionMap(IIIII)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 244
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generate map at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RegionCreator"

    invoke-interface {v5, v7, v6}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v8, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->cityCreator:Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v10, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->template:Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    iget v5, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->tilesPerUnit:I

    mul-int v11, v1, v5

    mul-int v12, v2, v5

    mul-int v13, v3, v5

    mul-int v14, v4, v5

    iget-object v15, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    const-string v9, ""

    invoke-virtual/range {v8 .. v15}, Linfo/flowersoft/theotown/creation/CityCreator;->createSubCity(Ljava/lang/String;Linfo/flowersoft/theotown/creation/CityCreator$CityData;IIIILinfo/flowersoft/theotown/city/GameMode;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object v3

    .line 248
    iget-object v4, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->cityCreator:Linfo/flowersoft/theotown/creation/CityCreator;

    new-instance v5, Linfo/flowersoft/theotown/creation/RegionCreator$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Linfo/flowersoft/theotown/creation/RegionCreator$$ExternalSyntheticLambda0;-><init>()V

    iget-boolean v6, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->decos:Z

    invoke-virtual {v4, v3, v5, v6}, Linfo/flowersoft/theotown/creation/CityCreator;->prepareCity(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;Z)V

    .line 251
    iget-object v4, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move/from16 v5, p5

    invoke-virtual {v4, v1, v2, v5}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->newRegionCityFile(III)Ljava/io/File;

    move-result-object v1

    .line 252
    new-instance v2, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v4, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 253
    iget-object v3, v3, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 254
    invoke-static {v2}, Linfo/flowersoft/theotown/city/PreviewCreator;->generateMiniPreview(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 255
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->save()V

    .line 257
    iget-boolean v2, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->createOriginBackup:Z

    if-eqz v2, :cond_99

    .line 258
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getOriginBackupDirectory()Ljava/io/File;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8d

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 260
    :cond_8d
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    invoke-static {v1, v3}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_99
    return-void
.end method

.method public beginCreation(I)V
    .registers 19

    move-object/from16 v0, p0

    .line 216
    iget-object v1, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->deleteAnything()V

    .line 218
    new-instance v2, Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v1, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/creation/CityCreator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v2, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->cityCreator:Linfo/flowersoft/theotown/creation/CityCreator;

    .line 219
    iget v1, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->tilesPerUnit:I

    mul-int v4, p1, v1

    mul-int v5, p1, v1

    iget-object v6, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    iget-object v7, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->seed:Ljava/lang/String;

    iget-object v8, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->seedName:Ljava/lang/String;

    iget-boolean v9, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->trees:Z

    iget-boolean v10, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->terrain:Z

    iget-boolean v11, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->rivers:Z

    iget v12, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->roughness:I

    new-instance v13, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    new-instance v14, Lio/blueflower/stapel2d/util/ValueProperty;

    const-string v1, ""

    invoke-direct {v14, v1}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    iget-object v15, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->activeBiomes:Ljava/util/List;

    iget-object v1, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->heightmap:Linfo/flowersoft/theotown/creation/HeightMap;

    const-string v3, ""

    move-object/from16 v16, v1

    invoke-virtual/range {v2 .. v16}, Linfo/flowersoft/theotown/creation/CityCreator;->generate(Ljava/lang/String;IILinfo/flowersoft/theotown/city/GameMode;Ljava/lang/String;Ljava/lang/String;ZZZILinfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;Linfo/flowersoft/theotown/creation/HeightMap;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/creation/RegionCreator;->template:Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    return-void
.end method

.method public beginCreation(ILinfo/flowersoft/theotown/creation/CityCreator$CityData;)V
    .registers 4

    .line 228
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->deleteAnything()V

    .line 230
    new-instance p1, Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v0, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/creation/CityCreator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->cityCreator:Linfo/flowersoft/theotown/creation/CityCreator;

    .line 231
    iput-object p2, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->template:Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    return-void
.end method

.method public endCreation()V
    .registers 3

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectCities()V

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/RegionCreator;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.creation.RegionCreator$$ExternalSyntheticLambda0 (info.flowersoft.theotown.creation.RegionCreator$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/creation/RegionCreator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Linfo/flowersoft/theotown/creation/RegionCreator;->$r8$lambda$7YsNgq26XYHXUWCvr6F3QJsmw7g(Ljava/lang/Float;)V

    return-void
.end method
