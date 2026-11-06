###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory (info.flowersoft.theotown.cityfile.OnlineMapDirectory)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;
.super Linfo/flowersoft/theotown/cityfile/MapDirectory;
.source "OnlineMapDirectory.java"


# instance fields
.field public currentRegionHeaders:[B

.field public enteringRegion:Z

.field public final idToMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ">;"
        }
    .end annotation
.end field

.field public loadedRegionHeadersFile:Ljava/lang/String;

.field public loadingFailed:Z

.field public loadingProgress:F

.field public final mapToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

.field public final regionId:I

.field public final regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public final regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionUploader;ILinfo/flowersoft/theotown/util/OnlineFileStore;)V
    .registers 6

    .line 54
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    .line 56
    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    .line 57
    iput p4, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    .line 58
    iput-object p5, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    .line 60
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getOnlineRegionsDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    .line 61
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    .line 64
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    new-instance p3, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$1;

    invoke-direct {p3, p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$1;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 1

    .line 38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)I
    .registers 1

    .line 38
    iget p0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    return p0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->enteringRegion:Z

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/OnlineRegionStore;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/util/OnlineFileStore;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/RegionUploader;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getKeeper(Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$902(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingFailed:Z

    return p1
.end method


# virtual methods
.method public acquire(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_10

    .line 642
    const-string p1, "Invalid city"

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 644
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Linfo/flowersoft/theotown/online/RegionUploader;->acquireCity(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public allowsComments()Z
    .registers 2

    .line 265
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->allowsComments()Z

    move-result v0

    return v0
.end method

.method public applySettings(Linfo/flowersoft/theotown/online/RegionSettings;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/online/RegionUploader;->applyRegionSettings(ILinfo/flowersoft/theotown/online/RegionSettings;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public canReset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final clearDir()V
    .registers 5

    .line 649
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 650
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    new-instance v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$13;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$13;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 657
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 658
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    return-void

    .line 662
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public clearReports(Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/online/RegionUploader;->clearRegionReports(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public clearReports(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_19

    .line 87
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/online/RegionUploader;->clearCityRequests(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_1b

    .line 88
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_17

    throw p1
.end method

.method public comment(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Linfo/flowersoft/theotown/online/RegionUploader;->commentRegion(ILjava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public commentCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, p3}, Linfo/flowersoft/theotown/online/RegionUploader;->commentCity(ILjava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 196
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public deleteRegion(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v1, v2, p1, p2}, Linfo/flowersoft/theotown/online/RegionUploader;->deleteRegion(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 238
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public fetchCityComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_20

    .line 133
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    new-instance v3, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;

    invoke-direct {v3, p0, p2, p3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v1, p1, v2, v3}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchCityComments(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    goto :goto_20

    :catchall_1e
    move-exception p1

    goto :goto_22

    .line 145
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1e

    throw p1
.end method

.method public fetchComments(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    new-instance v3, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;

    invoke-direct {v3, p0, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchRegionComments(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 260
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 261
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualUser;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    return-object v0

    :cond_f
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .line 255
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 256
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public getCityAuthor(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/lang/String;
    .registers 5

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 292
    :try_start_3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 293
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object p1

    goto :goto_1d

    :catchall_1a
    move-exception p1

    goto :goto_28

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_24

    .line 294
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_24
    const-string p1, ""

    :goto_26
    monitor-exit v0

    return-object p1

    .line 295
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_1a

    throw p1
.end method

.method public getCityAuthorColor(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 299
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 300
    :try_start_3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 301
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object p1

    goto :goto_1d

    :catchall_1a
    move-exception p1

    goto :goto_28

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_24

    .line 302
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    goto :goto_26

    :cond_24
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_26
    monitor-exit v0

    return-object p1

    .line 303
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_1a

    throw p1
.end method

.method public getCityById(I)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 4

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    .line 101
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public getCityComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I
    .registers 6

    .line 342
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 345
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 346
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getComments()I

    move-result v2

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_27

    :cond_23
    :goto_23
    monitor-exit v0

    return v2

    .line 348
    :cond_25
    monitor-exit v0

    return v2

    .line 350
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_21

    throw p1
.end method

.method public getCityId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I
    .registers 4

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_14

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_17

    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit v0

    return p1

    .line 95
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw p1
.end method

.method public getCityOwnerId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I
    .registers 5

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 271
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object p1

    goto :goto_1d

    :catchall_1a
    move-exception p1

    goto :goto_27

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_24

    .line 272
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    monitor-exit v0

    return p1

    .line 273
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_1a

    throw p1
.end method

.method public getCityReports(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I
    .registers 6

    .line 354
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 356
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 357
    :try_start_13
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 359
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 360
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getReports()I

    move-result v1

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_36

    :cond_32
    :goto_32
    monitor-exit v0

    return v1

    .line 362
    :cond_34
    monitor-exit v0

    return v1

    .line 364
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_30

    throw p1
.end method

.method public getComments()I
    .registers 3

    .line 332
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 333
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getComments()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final getKeeper(Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 8

    .line 381
    new-instance v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 383
    new-instance v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setGetActualFileToLoadFrom(Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;)V

    .line 439
    new-instance v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$7;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$7;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setLoadedListener(Lio/blueflower/stapel2d/util/Setter;)V

    .line 446
    new-instance v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$8;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$8;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setGetActualFileToSaveTo(Lio/blueflower/stapel2d/util/Getter;)V

    .line 452
    new-instance v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;

    invoke-direct {v1, p0, p1, v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setSavedListener(Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setSavable(Z)V

    .line 465
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v1

    .line 466
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowPlugins()Z

    move-result v5

    if-eqz v1, :cond_5e

    .line 468
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result p1

    int-to-long v3, p1

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setOnline(ZLjava/lang/String;JZ)V

    return-object v0

    .line 470
    :cond_5e
    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setOnline(ZLjava/lang/String;JZ)V

    return-object v0
.end method

.method public getLoadingProgress()F
    .registers 2

    .line 636
    iget v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingProgress:F

    return v0
.end method

.method public getNewCityGifts(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I
    .registers 6

    .line 368
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 369
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 370
    :try_start_13
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 372
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 373
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->getNewGifts()I

    move-result v1

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_36

    :cond_32
    :goto_32
    monitor-exit v0

    return v1

    .line 375
    :cond_34
    monitor-exit v0

    return v1

    .line 377
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_30

    throw p1
.end method

.method public getOwnerId()I
    .registers 2

    .line 250
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 251
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 3

    .line 667
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    return-object v0
.end method

.method public getRegionId()I
    .registers 2

    .line 242
    iget v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    return v0
.end method

.method public getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;
    .registers 3

    .line 493
    new-instance v0, Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;-><init>(Linfo/flowersoft/theotown/online/VirtualRegion;)V

    return-object v0
.end method

.method public getRegionStore()Linfo/flowersoft/theotown/online/OnlineRegionStore;
    .registers 2

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    return-object v0
.end method

.method public getRegionUploader()Linfo/flowersoft/theotown/online/RegionUploader;
    .registers 2

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    return-object v0
.end method

.method public getReports()I
    .registers 3

    .line 337
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 338
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getReports()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final getUserId()J
    .registers 3

    .line 314
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 315
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 316
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVirtualRegion()Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 3

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    return-object v0
.end method

.method public isCityCommentsAllowed(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 5

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 278
    :try_start_3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 279
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->allowsComments()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :catchall_1d
    move-exception p1

    goto :goto_22

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    monitor-exit v0

    return p1

    .line 280
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1d

    throw p1
.end method

.method public isCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 5

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 285
    :try_start_3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(Ljava/lang/Integer;)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 286
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualCity;->isProtected()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :catchall_1d
    move-exception p1

    goto :goto_22

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    monitor-exit v0

    return p1

    .line 287
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1d

    throw p1
.end method

.method public isLoaded()Z
    .registers 4

    .line 622
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->currentRegionHeaders:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->enteringRegion:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingFailed:Z

    if-nez v0, :cond_1f

    .line 623
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 624
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    return v1
.end method

.method public isOnline()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->enteringRegion:Z

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->currentRegionHeaders:[B

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingFailed:Z

    const/4 v0, 0x0

    .line 518
    iput v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingProgress:F

    .line 520
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    new-instance v4, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/Runnable;)V

    new-instance v5, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;

    invoke-direct {v5, p0, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchEnterRegion(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;I)V

    return-void
.end method

.method public loadingFailed()Z
    .registers 2

    .line 631
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingFailed:Z

    return v0
.end method

.method public removeOwner(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/online/RegionUploader;->removeOwner(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 208
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public reportCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->reportCity(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public reportRegion(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v1, v2, p1, p2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->reportRegion(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 232
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public requiresPassword()Z
    .registers 5

    .line 324
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 326
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->isPasswordProtected()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 327
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getUserCities()I

    move-result v1

    if-nez v1, :cond_29

    .line 328
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    return v0

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public reset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public resetCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/online/RegionUploader;->resetCity(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 202
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z
    .registers 5

    .line 498
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 499
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$10;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$10;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/online/RegionUploader;->renameRegion(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public setCityAllowComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualRegion;->getIdToCity()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/online/VirtualCity;

    .line 174
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    new-instance v3, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;

    invoke-direct {v3, p0, p1, p2, p3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    invoke-virtual {v2, v1, p2, v3}, Linfo/flowersoft/theotown/online/RegionUploader;->setCityAllowComments(IZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public setCityProtection(Linfo/flowersoft/theotown/cityloader/CityKeeper;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 105
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result p1

    if-lez p1, :cond_b

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/online/RegionUploader;->setCityProtected(IZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    :cond_b
    return-void
.end method

.method public setRegionAllowComments(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    new-instance v2, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;

    invoke-direct {v2, p0, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/online/RegionUploader;->setRegionAllowComments(IZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public transferCityOwnership(Linfo/flowersoft/theotown/cityloader/CityKeeper;ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->mapToId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2, p3, p4}, Linfo/flowersoft/theotown/online/RegionUploader;->transferCity(IILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 214
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public transferRegionOwnership(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 7

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    iget v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionId:I

    invoke-virtual {v1, v2, p1, p2, p3}, Linfo/flowersoft/theotown/online/RegionUploader;->transferRegion(IILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public update()V
    .registers 11

    .line 553
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_dc

    .line 554
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->currentRegionHeaders:[B

    if-eqz v3, :cond_18

    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadedRegionHeadersFile:Ljava/lang/String;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getHeadersFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    :cond_18
    iget-boolean v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->enteringRegion:Z

    if-nez v3, :cond_dc

    .line 555
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->regionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getHeadersFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-virtual {v4, v3, v2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->request(Ljava/lang/String;I)[B

    move-result-object v4

    iput-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->currentRegionHeaders:[B

    .line 557
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/OnlineFileStore;->getProgress(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingProgress:F

    .line 558
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getHeadersFile()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadedRegionHeadersFile:Ljava/lang/String;

    .line 560
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->currentRegionHeaders:[B

    if-eqz v3, :cond_dc

    .line 561
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->clearDir()V

    .line 563
    :try_start_43
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->currentRegionHeaders:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 564
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object v4

    .line 566
    :goto_53
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    if-eqz v5, :cond_b2

    .line 567
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 568
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 569
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(I)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object v7

    if-eqz v7, :cond_99

    .line 571
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->dir:Ljava/io/File;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/online/VirtualCity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v5, v2

    :cond_7d
    :goto_7d
    if-ge v5, v6, :cond_95

    .line 576
    array-length v8, v4

    sub-int v9, v6, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3, v4, v2, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v8, :cond_93

    .line 579
    invoke-virtual {v7, v4, v2, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_7d

    :catch_91
    move-exception v0

    goto :goto_d4

    :cond_93
    if-gez v8, :cond_7d

    .line 585
    :cond_95
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_53

    .line 587
    :cond_99
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "OnlineMapDirectory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing city def for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 591
    :cond_b2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 593
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_b8} :catch_91

    .line 594
    :try_start_b8
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v4, v2, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo(ZZ)V

    goto :goto_be

    :catchall_ce
    move-exception v3

    goto :goto_d2

    .line 595
    :cond_d0
    monitor-exit v0

    goto :goto_dc

    :goto_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_b8 .. :try_end_d3} :catchall_ce

    :try_start_d3
    throw v3
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d4} :catch_91

    .line 597
    :goto_d4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 598
    iput v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingProgress:F

    .line 599
    iput-boolean v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadingFailed:Z

    .line 604
    :cond_dc
    :goto_dc
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 606
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    monitor-enter v3

    .line 607
    :try_start_e5
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->idToMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ef
    :goto_ef
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_135

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 608
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 609
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(I)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object v6

    if-eqz v6, :cond_ef

    .line 611
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 612
    invoke-virtual {v6}, Linfo/flowersoft/theotown/online/VirtualCity;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v6

    if-eqz v6, :cond_130

    .line 613
    invoke-virtual {v6}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_130

    move v6, v1

    goto :goto_131

    :catchall_12e
    move-exception v0

    goto :goto_137

    :cond_130
    move v6, v2

    :goto_131
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setSavable(Z)V

    goto :goto_ef

    .line 616
    :cond_135
    monitor-exit v3

    goto :goto_139

    :goto_137
    monitor-exit v3
    :try_end_138
    .catchall {:try_start_e5 .. :try_end_138} :catchall_12e

    throw v0

    :cond_139
    :goto_139
    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass1 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$1)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$1;
.super Ljava/lang/Thread;
.source "OnlineMapDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionUploader;ILinfo/flowersoft/theotown/util/OnlineFileStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$dir0:Ljava/io/File;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$1;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$1;->val$dir0:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$1;->val$dir0:Ljava/io/File;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass10 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$10)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$10;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 499
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$10;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 506
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass11 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$11)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 523
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$600(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 524
    :try_start_7
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, v1, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 525
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$000(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCities()[Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 527
    :goto_1a
    array-length v4, v1

    if-ge v3, v4, :cond_53

    .line 528
    aget-object v4, v1, v3

    .line 529
    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v5, v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$700(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v5

    .line 530
    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v6, v6, Linfo/flowersoft/theotown/cityfile/MapDirectory;->maps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$600(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualCity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v6}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$800(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualCity;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :catchall_51
    move-exception v1

    goto :goto_66

    .line 535
    :cond_53
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$902(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Z)Z

    .line 536
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$1002(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Z)Z

    .line 537
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_51

    .line 539
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$11;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_65

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_65
    return-void

    .line 537
    :goto_66
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_51

    throw v1
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass12 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$12)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 541
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 541
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 544
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$902(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Z)Z

    .line 545
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    const-string v1, ""

    iput-object v1, v0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$12;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass13 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$13)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$13;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->clearDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 650
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$13;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    .line 653
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass2 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$2)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->fetchComments(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$2;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass3 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$3)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->fetchCityComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$3;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass4 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$4)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->setRegionAllowComments(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$allow:Z

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->val$allow:Z

    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$000(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->val$allow:Z

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->setAllowComments(Z)V

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$4;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass5 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$5)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->setCityAllowComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$allow:Z

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

.field public final synthetic val$virtualCity:Linfo/flowersoft/theotown/online/VirtualCity;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$virtualCity:Linfo/flowersoft/theotown/online/VirtualCity;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$allow:Z

    iput-object p4, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$virtualCity:Linfo/flowersoft/theotown/online/VirtualCity;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$allow:Z

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/VirtualCity;->setAllowComments(Z)V

    .line 178
    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$5;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass6 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$6)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/cityloader/CityKeeper$FileProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getKeeper(Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public progress:F

.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$city:Linfo/flowersoft/theotown/online/VirtualCity;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->val$city:Linfo/flowersoft/theotown/online/VirtualCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;F)F
    .registers 2

    .line 383
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->progress:F

    return p1
.end method


# virtual methods
.method public get()Ljava/io/File;
    .registers 12

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->progress:F

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 394
    new-array v2, v0, [Z

    aput-boolean v1, v2, v1

    .line 395
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    .line 396
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$200(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object v5

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$100(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)I

    move-result v6

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v7, v0, Linfo/flowersoft/theotown/cityfile/MapDirectory;->password:Ljava/lang/String;

    new-instance v8, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$1;

    invoke-direct {v8, p0, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$1;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;[Z)V

    new-instance v9, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;

    invoke-direct {v9, p0, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;[Z)V

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->val$city:Linfo/flowersoft/theotown/online/VirtualCity;

    .line 406
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualCity;->getId()I

    move-result v10

    .line 396
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchEnterRegion(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;I)V

    .line 407
    :goto_30
    aget-boolean v0, v2, v1

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-gez v0, :cond_4a

    const-wide/16 v5, 0xa

    .line 409
    :try_start_41
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_30

    :catch_45
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30

    .line 415
    :cond_4a
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$200(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$100(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 417
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->val$city:Linfo/flowersoft/theotown/online/VirtualCity;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualCity;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getCity(I)Linfo/flowersoft/theotown/online/VirtualCity;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 419
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "OnlineMapDirectory"

    const-string v3, "Ensured file being up-to-date"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$400(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/util/OnlineFileStore;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 421
    invoke-static {v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$200(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualCity;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$3;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;)V

    .line 420
    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->downloadSyncUncached(Ljava/lang/String;Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;)[B

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 428
    array-length v1, v0

    if-lez v1, :cond_9b

    .line 429
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 430
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/Files;->writeBinaryFile(Ljava/io/File;[B)Z

    return-object v1

    :cond_9b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .line 388
    iget v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->progress:F

    return v0
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass6.AnonymousClass1 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$6$1)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$1;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->get()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

.field public final synthetic val$refreshed:[Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;[Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$1;->this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$1;->val$refreshed:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 399
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$1;->val$refreshed:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass6.AnonymousClass2 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$6$2)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->get()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

.field public final synthetic val$refreshed:[Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;[Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;->this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;->val$refreshed:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 401
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 404
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$2;->val$refreshed:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass6.AnonymousClass3 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$6$3)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$3;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/OnlineFileStore$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->get()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 422
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$3;->this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(F)V
    .registers 3

    .line 425
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6$3;->this$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;->access$302(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$6;F)F

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass7 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$7)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$7;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getKeeper(Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 439
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$7;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/io/File;)V
    .registers 2

    .line 442
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 439
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$7;->set(Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass8 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$8)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$8;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getKeeper(Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 446
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$8;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .registers 2

    .line 449
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 446
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$8;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineMapDirectory.AnonymousClass9 (info.flowersoft.theotown.cityfile.OnlineMapDirectory$9)
.class public Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;
.super Ljava/lang/Object;
.source "OnlineMapDirectory.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getKeeper(Linfo/flowersoft/theotown/online/VirtualCity;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$city:Linfo/flowersoft/theotown/online/VirtualCity;

.field public final synthetic val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/online/VirtualCity;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 452
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->val$city:Linfo/flowersoft/theotown/online/VirtualCity;

    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/io/File;)V
    .registers 4

    .line 455
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$500(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/RegionUploader;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->val$city:Linfo/flowersoft/theotown/online/VirtualCity;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualCity;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/online/RegionUploader;->uploadCity(ILjava/io/File;)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 457
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->val$map:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 458
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$200(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->this$0:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->access$100(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)I

    move-result v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->invalidate()V

    if-nez v0, :cond_3e

    return-void

    .line 459
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 452
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory$9;->set(Ljava/io/File;)V

    return-void
.end method
