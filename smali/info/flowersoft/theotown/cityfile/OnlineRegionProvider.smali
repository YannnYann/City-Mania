###### Class info.flowersoft.theotown.cityfile.OnlineRegionProvider (info.flowersoft.theotown.cityfile.OnlineRegionProvider)
.class public Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;
.super Linfo/flowersoft/theotown/cityfile/RegionProvider;
.source "OnlineRegionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;
    }
.end annotation


# instance fields
.field public availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public defaultRegion:I

.field public loaded:Z

.field public loadedType:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public loadedTypeExtra:Ljava/lang/String;

.field public final mapDirectories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;",
            ">;"
        }
    .end annotation
.end field

.field public final mapIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

.field public final onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public final regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

.field public regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

.field public type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public typeExtra:Ljava/lang/String;

.field public typeId:J


# direct methods
.method public static synthetic $r8$lambda$Mw3IxkD715pqaro_SVkeg_GQYnc(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    .line 68
    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_4
    iput-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 70
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getTags()Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    .line 71
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1a

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loaded:Z

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadedType:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 74
    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadedTypeExtra:Ljava/lang/String;

    .line 75
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_1a
    move-exception p0

    .line 71
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static synthetic $r8$lambda$PU67aZKsaOU-A8XHSoGoMzmq0Ig(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    .line 79
    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 81
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getTags()Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    .line 82
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loaded:Z

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadedType:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 85
    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadedTypeExtra:Ljava/lang/String;

    .line 86
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_1f
    move-exception p0

    .line 82
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public static synthetic $r8$lambda$TWaNHMyXLX3DweumsVKhsUihlu4(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Ljava/lang/Runnable;)V
    .registers 13

    .line 95
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    .line 95
    monitor-enter v1

    .line 96
    :try_start_3
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 98
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 100
    :goto_18
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    array-length v4, v3

    if-ge v2, v4, :cond_7e

    .line 101
    aget-object v3, v3, v2

    .line 102
    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 103
    new-instance v5, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v7, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget-object v8, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v9

    iget-object v10, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionUploader;ILinfo/flowersoft/theotown/util/OnlineFileStore;)V

    .line 104
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    :catchall_4c
    move-exception v0

    move-object p0, v0

    goto :goto_86

    .line 106
    :cond_4f
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_6a
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapIndices:Ljava/util/Map;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 110
    :cond_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_4c

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loaded:Z

    .line 112
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 110
    :goto_86
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_4c

    throw p0
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;-><init>()V

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/RegionUploader;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regionUploader:Linfo/flowersoft/theotown/online/RegionUploader;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapIndices:Ljava/util/Map;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/OnlineFileStore;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->ofs:Linfo/flowersoft/theotown/util/OnlineFileStore;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->defaultRegion:I

    .line 35
    sget-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->ALL:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeId:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeExtra:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public canBeEnteredWithoutPassword(I)Z
    .registers 6

    .line 193
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->isPasswordProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getUserCities(I)I

    move-result v0

    if-gtz v0, :cond_1c

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getOwnerId(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getUserId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic get(I)Linfo/flowersoft/theotown/cityfile/MapDirectory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->get(I)Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;
    .registers 3

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-object p1
.end method

.method public getAnyId()I
    .registers 2

    .line 137
    const-string v0, ""

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getDefaultRegionId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvailableTags()Linfo/flowersoft/theotown/online/RegionTagMap;
    .registers 2

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    return-object v0
.end method

.method public getDefaultRegionId(Ljava/lang/String;)I
    .registers 3

    .line 128
    iget p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->defaultRegion:I

    if-gez p1, :cond_11

    .line 129
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result p1

    :cond_11
    return p1
.end method

.method public getIndex(I)I
    .registers 3

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapIndices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapIds()Lio/blueflower/stapel2d/util/IntList;
    .registers 6

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->mapDirectories:Ljava/util/Map;

    monitor-enter v0

    .line 231
    :try_start_3
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    array-length v2, v2

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    const/4 v2, 0x0

    .line 232
    :goto_c
    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->regions:[Linfo/flowersoft/theotown/online/VirtualRegion;

    array-length v4, v3

    if-ge v2, v4, :cond_1f

    .line 233
    aget-object v3, v3, v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_1d
    move-exception v1

    goto :goto_21

    .line 235
    :cond_1f
    monitor-exit v0

    return-object v1

    .line 236
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw v1
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 155
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method public getOwnerId(I)I
    .registers 3

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 175
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;
    .registers 2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    return-object v0
.end method

.method public getUserCities(I)I
    .registers 3

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 170
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getUserCities()I

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public final getUserId()J
    .registers 3

    .line 179
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 180
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 181
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVirtualRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;
    .registers 3

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    return-object p1
.end method

.method public isLoaded()Z
    .registers 3

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeExtra:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->isLoaded(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLoaded(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;)Z
    .registers 4

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 123
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loaded:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadedType:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, p1, :cond_1e

    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadedTypeExtra:Ljava/lang/String;

    if-nez p1, :cond_16

    if-eqz p2, :cond_1c

    :cond_16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public isOnline()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isPasswordProtected(I)Z
    .registers 3

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 189
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->isPasswordProtected()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public load(Ljava/lang/Runnable;)V
    .registers 9

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loaded:Z

    .line 94
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    new-instance v2, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Ljava/lang/Runnable;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 113
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeId:J

    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeExtra:Ljava/lang/String;

    .line 94
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchListRegions(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public loadLight(Ljava/lang/Runnable;)V
    .registers 9

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loaded:Z

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 65
    iget-object v6, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeExtra:Ljava/lang/String;

    .line 66
    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->LIST_TAGS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_16

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    new-instance v2, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v6, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchTags(Ljava/lang/Runnable;)V

    return-void

    .line 78
    :cond_16
    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    new-instance v2, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v6, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeId:J

    .line 78
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchListRegions(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public nextId(I)I
    .registers 5

    .line 208
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 210
    aget-object v2, v0, v1

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    aget-object p1, v0, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result p1

    return p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return p1
.end method

.method public prevId(I)I
    .registers 5

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 219
    aget-object v2, v0, v1

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1f

    array-length p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    aget-object p1, v0, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result p1

    return p1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return p1
.end method

.method public setDefaultRegionId(I)V
    .registers 2

    .line 141
    iput p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->defaultRegion:I

    return-void
.end method

.method public setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V
    .registers 5

    .line 49
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;JLjava/lang/String;)V

    return-void
.end method

.method public setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;JLjava/lang/String;)V
    .registers 5

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->type:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 58
    iput-wide p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeId:J

    .line 59
    iput-object p4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->typeExtra:Ljava/lang/String;

    return-void
.end method

.method public setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;JLjava/lang/String;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->onlineRegionStore:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getRegions()[Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineRegionProvider.Type (info.flowersoft.theotown.cityfile.OnlineRegionProvider$Type)
.class public final enum Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;
.super Ljava/lang/Enum;
.source "OnlineRegionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum ALL:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum FREE:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum LIST_TAGS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum NEW:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum NOTIFICATIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum OTHER_USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum PROTECTED:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum PUBLIC:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum REPORT:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum SEARCH:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum TAG:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public static final enum USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;


# instance fields
.field public tag:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;
    .registers 14

    .line 245
    sget-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->ALL:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PUBLIC:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v2, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PROTECTED:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->FREE:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v4, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v5, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v6, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v7, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v8, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->NEW:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v9, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->SEARCH:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v10, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->REPORT:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v11, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->NOTIFICATIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v12, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->TAG:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    sget-object v13, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->LIST_TAGS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    filled-new-array/range {v0 .. v13}, [Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 246
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/4 v1, 0x0

    const-string v2, "all"

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->ALL:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 247
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/4 v1, 0x1

    const-string v2, "public"

    const-string v3, "PUBLIC"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PUBLIC:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 248
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/4 v1, 0x2

    const-string v2, "protected"

    const-string v3, "PROTECTED"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PROTECTED:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 249
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/4 v1, 0x3

    const-string v2, "free"

    const-string v3, "FREE"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->FREE:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 250
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const-string v1, "USER"

    const/4 v2, 0x4

    const-string v3, "user"

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 251
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const-string v1, "USER_REGIONS"

    const/4 v2, 0x5

    const-string v4, "user regions"

    invoke-direct {v0, v1, v2, v4}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 252
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const-string v1, "OTHER_USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 253
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const-string v1, "OTHER_USER_REGIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 254
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/16 v1, 0x8

    const-string v2, "new"

    const-string v3, "NEW"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->NEW:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 255
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/16 v1, 0x9

    const-string v2, "search"

    const-string v3, "SEARCH"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->SEARCH:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 256
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/16 v1, 0xa

    const-string v2, "reports"

    const-string v3, "REPORT"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->REPORT:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 257
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/16 v1, 0xb

    const-string v2, "notifications"

    const-string v3, "NOTIFICATIONS"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->NOTIFICATIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 258
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/16 v1, 0xc

    const-string v2, "tag"

    const-string v3, "TAG"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->TAG:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 260
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const/16 v1, 0xd

    const-string v2, "list_tags"

    const-string v3, "LIST_TAGS"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->LIST_TAGS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 245
    invoke-static {}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->$values()[Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->$VALUES:[Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 245
    const-class v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;
    .registers 1

    .line 245
    sget-object v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->$VALUES:[Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->tag:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda0 (info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->$r8$lambda$Mw3IxkD715pqaro_SVkeg_GQYnc(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda1 (info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    iput-object p3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->$r8$lambda$PU67aZKsaOU-A8XHSoGoMzmq0Ig(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda2 (info.flowersoft.theotown.cityfile.OnlineRegionProvider$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iget-object v1, p0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->$r8$lambda$TWaNHMyXLX3DweumsVKhsUihlu4(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;Ljava/lang/Runnable;)V

    return-void
.end method
