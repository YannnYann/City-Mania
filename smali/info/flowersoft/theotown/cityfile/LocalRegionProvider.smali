###### Class info.flowersoft.theotown.cityfile.LocalRegionProvider (info.flowersoft.theotown.cityfile.LocalRegionProvider)
.class public Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;
.super Linfo/flowersoft/theotown/cityfile/RegionProvider;
.source "LocalRegionProvider.java"


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public loaded:Z

.field public final regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;",
            ">;"
        }
    .end annotation
.end field

.field public selectedRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    .line 33
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static getFileContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 123
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(I)Linfo/flowersoft/theotown/cityfile/MapDirectory;
    .registers 3

    if-ltz p1, :cond_13

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/cityfile/MapDirectory;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnyId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultRegionId(Ljava/lang/String;)I
    .registers 9

    .line 134
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 137
    iget-object v2, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->selectedRegion:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    move v2, v3

    .line 138
    :goto_11
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 139
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityfile/MapDirectory;

    .line 140
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->selectedRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    return v2

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_35
    const/4 v2, -0x1

    .line 146
    :goto_36
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7e

    .line 147
    iget-object v4, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityfile/MapDirectory;

    .line 149
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    if-gez v2, :cond_59

    move v2, v3

    :cond_59
    if-eqz v1, :cond_6e

    .line 151
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    return v3

    .line 155
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMap(Ljava/io/File;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v4

    if-eqz v4, :cond_7b

    move v2, v3

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_7e
    return v2
.end method

.method public getIndex(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public isOnline()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/Runnable;)V
    .registers 12

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    const-string v3, "regions.zip"

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 46
    :try_start_13
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "files.lby"

    invoke-static {v4}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v4, "files"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    .line 48
    :goto_26
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 49
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    const-string v7, "original name"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 50
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "zip"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    goto :goto_50

    :catch_49
    move-exception p1

    goto/16 :goto_148

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    if-eqz v2, :cond_140

    move v3, v4

    .line 55
    :goto_53
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_91

    .line 56
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    .line 57
    const-string v7, "name"

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    const-string v8, "dir"

    invoke-virtual {v5, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    const-string v5, "/region.json"

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 59
    const-string v5, "region.json"

    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2f

    .line 60
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    if-ne v7, v8, :cond_8e

    .line 61
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_13 .. :try_end_8e} :catch_49

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 74
    :cond_91
    invoke-static {}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectRegions()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_99
    :goto_99
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 76
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 79
    :cond_b8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 86
    iget-object v8, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v7, v8, v1, v2}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/json/JSONArray;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v7

    goto :goto_f4

    .line 88
    :cond_ee
    iget-object v8, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v7

    .line 91
    :goto_f4
    iget-object v8, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 94
    :cond_fa
    :goto_fa
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_130

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 96
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->restoreFromZipSource()V

    .line 98
    :cond_113
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_fa

    .line 103
    :cond_130
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;

    invoke-direct {v1, p0, v5}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;-><init>(Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->loaded:Z

    .line 119
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 66
    :cond_140
    :try_start_140
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t find regions file. Installation is probably corrupted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_148
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_140 .. :try_end_148} :catch_49

    .line 69
    :goto_148
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextId(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public prevId(I)I
    .registers 3

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public setSelectedRegionPath(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->selectedRegion:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .registers 2

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.cityfile.LocalRegionProvider.AnonymousClass1 (info.flowersoft.theotown.cityfile.LocalRegionProvider$1)
.class public Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;
.super Ljava/lang/Object;
.source "LocalRegionProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->load(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

.field public final synthetic val$timeByRegionNames:Ljava/util/Map;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;Ljava/util/Map;)V
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

    .line 103
    iput-object p1, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;->this$0:Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    iput-object p2, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;->val$timeByRegionNames:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)I
    .registers 5

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;->val$timeByRegionNames:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 107
    iget-object p1, p0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;->val$timeByRegionNames:Ljava/util/Map;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_2e

    const/4 p1, -0x1

    return p1

    :cond_2e
    if-lez p1, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    const/4 p1, 0x0

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

    .line 103
    check-cast p1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    check-cast p2, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider$1;->compare(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)I

    move-result p1

    return p1
.end method
