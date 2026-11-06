###### Class info.flowersoft.theotown.cityfile.MapDirectory (info.flowersoft.theotown.cityfile.MapDirectory)
.class public abstract Linfo/flowersoft/theotown/cityfile/MapDirectory;
.super Ljava/lang/Object;
.source "MapDirectory.java"


# instance fields
.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public dir:Ljava/io/File;

.field public final maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ">;"
        }
    .end annotation
.end field

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static isValidRegionCityFileName(Ljava/lang/String;)Z
    .registers 2

    .line 116
    const-string v0, "-?\\d+_-?\\d+(_-?\\d+)?\\.city"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract canReset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    return-object v0
.end method

.method public abstract getLoadingProgress()F
.end method

.method public getMap(Ljava/io/File;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 6

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 47
    :try_start_12
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_25

    if-eqz v2, :cond_6

    return-object v1

    :catch_25
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapByFileName(Ljava/lang/String;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 5

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 101
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapByScenarioId(Ljava/lang/String;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2b

    .line 91
    :cond_a
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 92
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public getMaps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;
.end method

.method public abstract isLoaded()Z
.end method

.method public isNameInUse(Ljava/lang/String;)Z
    .registers 4

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 110
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isOnline()Z
.end method

.method public abstract loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadingFailed()Z
.end method

.method public abstract requiresPassword()Z
.end method

.method public abstract reset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
.end method

.method public abstract saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    return-void
.end method

.method public abstract update()V
.end method
