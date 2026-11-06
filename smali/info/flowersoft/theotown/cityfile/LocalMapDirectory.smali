###### Class info.flowersoft.theotown.cityfile.LocalMapDirectory (info.flowersoft.theotown.cityfile.LocalMapDirectory)
.class public Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
.super Linfo/flowersoft/theotown/cityfile/MapDirectory;
.source "LocalMapDirectory.java"


# instance fields
.field public mapFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public noMemoryAccess:Z

.field public final region:Z

.field public final sourceZipContent:Linfo/flowersoft/theotown/util/json/JSONArray;

.field public final sourceZipFile:Lcom/badlogic/gdx/files/FileHandle;


# direct methods
.method public static synthetic $r8$lambda$Ja_mUFeNH3Tp2XrZwgDhT2Xz8dM(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    new-instance v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 185
    :try_start_e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2e

    .line 188
    :catch_12
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->canRecoverFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 190
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->recoverFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 192
    :try_start_26
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 200
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    monitor-enter p1

    .line 201
    :try_start_37
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p1

    goto :goto_41

    :catchall_3e
    move-exception p0

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw p0

    :cond_41
    :goto_41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;Z)V
    .registers 7

    .line 70
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->mapFiles:Ljava/util/List;

    .line 72
    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 73
    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 74
    iput-object p4, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipContent:Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 75
    iput-boolean p5, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->region:Z

    .line 77
    new-instance p2, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    .line 78
    new-instance p2, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPrivateTheoTownDir()Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_33
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_4a

    .line 86
    :cond_44
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->createNoMediaFile(Ljava/io/File;)Z

    goto :goto_5a

    :cond_4a
    :goto_4a
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->noMemoryAccess:Z

    .line 83
    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    .line 84
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_5a
    :goto_5a
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    .line 90
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->migrateCities(Ljava/io/File;Ljava/io/File;)V

    .line 93
    :cond_67
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectCities()V

    return-void
.end method

.method public static collectRegions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getRegionsDir()Ljava/io/File;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 56
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_35
    return-object v1
.end method

.method public static getDefault(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
    .registers 7

    .line 444
    new-instance v0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "maps"

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;Z)V

    return-object v0
.end method

.method public static getNewRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
    .registers 6

    .line 462
    invoke-static {}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectRegions()Ljava/util/List;

    move-result-object v0

    .line 464
    const-string v1, "[^a-zA-Z0-9-_.]"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    .line 468
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 469
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 472
    :cond_40
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object p0

    return-object p0
.end method

.method public static getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
    .registers 3

    const/4 v0, 0x0

    .line 458
    invoke-static {p0, p1, v0, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object p0

    return-object p0
.end method

.method public static getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
    .registers 10

    .line 476
    new-instance v0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;Z)V

    return-object v0
.end method

.method public static getScenario(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
    .registers 7

    .line 451
    new-instance v0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "scenarios"

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;Z)V

    return-object v0
.end method


# virtual methods
.method public canRecoverFile(Ljava/io/File;)Z
    .registers 6

    .line 417
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".backup"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public canReset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 4

    .line 100
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->hasSource()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getOriginBackupDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x1

    return p1
.end method

.method public collectCities()V
    .registers 7

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->mapFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Files in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapDirectory"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 344
    array-length v1, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v1, :cond_5e

    aget-object v3, v0, v2

    .line 345
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".city"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-boolean v4, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->region:Z

    if-eqz v4, :cond_56

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isValidRegionCityFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 350
    :cond_56
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->mapFiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_5e
    return-void
.end method

.method public deleteAnything()V
    .registers 5

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 259
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 260
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public findFileForNewCity(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .line 395
    const-string v0, "[^a-zA-Z0-9_]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 397
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".city"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v0, 0x0

    .line 401
    :goto_27
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_4e
    return-object v1

    :cond_4f
    return-object v0
.end method

.method public getLoadingProgress()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginBackupDirectory()Ljava/io/File;
    .registers 4

    .line 408
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    const-string v2, ".origin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRegionFile()Ljava/io/File;
    .registers 4

    .line 253
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    const-string v2, "region.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;
    .registers 6

    .line 135
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionFile()Ljava/io/File;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 139
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 142
    :try_start_1a
    new-instance v1, Linfo/flowersoft/theotown/cityfile/RegionInformation;

    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/List;)V
    :try_end_26
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1a .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception v0

    .line 144
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Get region"

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-nez v1, :cond_50

    .line 151
    :try_start_32
    new-instance v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;

    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/List;)V
    :try_end_3e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_32 .. :try_end_3e} :catch_44

    .line 152
    :try_start_3e
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z
    :try_end_41
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_3e .. :try_end_41} :catch_42

    return-object v0

    :catch_42
    move-exception v1

    goto :goto_48

    :catch_44
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 155
    :goto_48
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Info"

    invoke-interface {v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v0

    :cond_50
    return-object v1
.end method

.method public hasNoMemoryAccess()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->noMemoryAccess:Z

    return v0
.end method

.method public hasSource()Z
    .registers 2

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipFile:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOnline()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    if-eqz p1, :cond_55

    .line 175
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_e
    const/4 p2, 0x4

    .line 178
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->mapFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 182
    new-instance v3, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Ljava/io/File;)V

    if-nez v1, :cond_31

    .line 206
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_34

    .line 208
    :cond_31
    invoke-interface {p2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 213
    :cond_37
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 215
    :try_start_3a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x270f

    invoke-interface {p2, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p2

    .line 217
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    :goto_46
    iget-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$1;-><init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_55

    .line 230
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_55
    return-void
.end method

.method public loadingFailed()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final migrateCities(Ljava/io/File;Ljava/io/File;)V
    .registers 11

    .line 361
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 365
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_14
    if-ge v2, v1, :cond_44

    aget-object v5, v0, v2

    .line 366
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".city"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 367
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 369
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 377
    :cond_44
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migrated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maps, failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAP MIGRATION"

    invoke-interface {p2, v1, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 379
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "Migration successful"

    invoke-interface {p1, v1, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_72
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "Failed on directory removement"

    invoke-interface {p1, v1, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    return-void
.end method

.method public newRegionCityFile(III)Ljava/io/File;
    .registers 6

    .line 387
    const-string v0, "_"

    if-nez p3, :cond_1b

    .line 388
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->findFileForNewCity(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 390
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->findFileForNewCity(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public recoverFile(Ljava/io/File;)Z
    .registers 6

    .line 425
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recover "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileRecovery"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    return v1

    .line 428
    :cond_20
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".backup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_41

    return v1

    .line 431
    :cond_41
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_damaged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 433
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 437
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_67
    return v0
.end method

.method public requiresPassword()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public reset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 10

    .line 105
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->hasSource()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->restoreFromZipSource(Ljava/io/File;)V

    return v1

    .line 109
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getOriginBackupDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_52

    .line 111
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    .line 112
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile()Ljava/io/File;

    move-result-object v2

    .line 113
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 116
    :cond_42
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v1

    .line 119
    :cond_49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_52
    return v3
.end method

.method public restoreFromZipSource()V
    .registers 2

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->restoreFromZipSource(Ljava/io/File;)V

    return-void
.end method

.method public restoreFromZipSource(Ljava/io/File;)V
    .registers 10

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipFile:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_10d

    .line 277
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipContent:Linfo/flowersoft/theotown/util/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_70

    move v1, v2

    move v3, v1

    .line 282
    :goto_2a
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipContent:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_71

    .line 283
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipContent:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 284
    const-string v5, "dir"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 285
    const-string v5, "name"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p1, :cond_63

    .line 289
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_63
    if-eqz p1, :cond_6d

    invoke-virtual {p1, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_70
    const/4 v3, -0x1

    :cond_71
    if-eqz v3, :cond_104

    .line 300
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->sourceZipFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->openStream(Lcom/badlogic/gdx/files/FileHandle;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    :cond_85
    :goto_85
    :try_start_85
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_f9

    .line 304
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_85

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p1, :cond_b5

    .line 309
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bd

    goto :goto_b5

    :catch_b3
    move-exception p1

    goto :goto_fd

    :cond_b5
    :goto_b5
    if-eqz p1, :cond_85

    invoke-virtual {p1, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_bd
    add-int/lit8 v2, v2, 0x1

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_cc

    goto :goto_f9

    .line 316
    :cond_cc
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 317
    invoke-static {v1, v3}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 320
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "MapDirectory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 324
    :cond_f9
    :goto_f9
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_fc} :catch_b3

    goto :goto_104

    .line 326
    :goto_fd
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Restore region zip"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_104
    :goto_104
    if-lez v2, :cond_10d

    .line 331
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectCities()V

    const/4 p1, 0x0

    .line 332
    invoke-virtual {p0, p1, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    :cond_10d
    :goto_10d
    return-void
.end method

.method public saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z
    .registers 4

    .line 165
    :try_start_0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getJson()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/Files;->writeTextFileSecured(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    return p1

    :catch_11
    move-exception p1

    .line 167
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Save region information"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.LocalMapDirectory.AnonymousClass1 (info.flowersoft.theotown.cityfile.LocalMapDirectory$1)
.class public Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$1;
.super Ljava/lang/Object;
.source "LocalMapDirectory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$1;->this$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityloader/CityKeeper;)I
    .registers 5

    .line 223
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v0

    .line 224
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide p1

    sub-long/2addr p1, v0

    long-to-float p1, p1

    .line 226
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 220
    check-cast p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    check-cast p2, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$1;->compare(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.cityfile.LocalMapDirectory$$ExternalSyntheticLambda0 (info.flowersoft.theotown.cityfile.LocalMapDirectory$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->$r8$lambda$Ja_mUFeNH3Tp2XrZwgDhT2Xz8dM(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Ljava/io/File;)V

    return-void
.end method
