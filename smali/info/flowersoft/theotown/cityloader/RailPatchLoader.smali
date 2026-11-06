###### Class info.flowersoft.theotown.cityloader.RailPatchLoader (info.flowersoft.theotown.cityloader.RailPatchLoader)
.class public final Linfo/flowersoft/theotown/cityloader/RailPatchLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "RailPatchLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRailPatchLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RailPatchLoader.kt\ninfo/flowersoft/theotown/cityloader/RailPatchLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,113:1\n2199#2,2:114\n2199#2:117\n2199#2,2:118\n2200#2:120\n221#3:116\n222#3:121\n*S KotlinDebug\n*F\n+ 1 RailPatchLoader.kt\ninfo/flowersoft/theotown/cityloader/RailPatchLoader\n*L\n41#1:114,2\n71#1:117\n76#1:118,2\n71#1:120\n69#1:116\n69#1:121\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyPatch(Linfo/flowersoft/theotown/city/City;Z)V
    .registers 18

    .line 23
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_180

    .line 27
    :cond_c
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 29
    const-string v1, "$elevated_train_track00"

    const-class v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-nez v1, :cond_1e

    goto/16 :goto_180

    .line 37
    :cond_1e
    const-string v3, "$elevated_train_track01"

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    const-string v3, "$rail01"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 36
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 41
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v3

    const-string v4, "getRails(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Rail;

    .line 42
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getDraft()Linfo/flowersoft/theotown/draft/RailDraft;

    move-result-object v7

    .line 43
    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-nez v7, :cond_5b

    move-object v9, v1

    goto :goto_5c

    :cond_5b
    move-object v9, v7

    .line 45
    :goto_5c
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v7

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v8

    invoke-virtual {v0, v7, v8, v6}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v7, :cond_7c

    .line 47
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v8

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v10

    invoke-virtual {v0, v8, v10, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    .line 48
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v8

    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/city/RoadList;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_7c
    new-instance v8, Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v10

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getFrame()I

    move-result v14

    const/4 v12, 0x2

    invoke-direct/range {v8 .. v14}, Linfo/flowersoft/theotown/city/objects/Road;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;IIIII)V

    .line 52
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->isPile()Z

    move-result v7

    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/city/objects/Road;->setPile(Z)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v9

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v10

    invoke-virtual {v7, v9, v10, v5}, Linfo/flowersoft/theotown/city/Tiles;->setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V

    .line 55
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v4

    invoke-virtual {v0, v5, v4, v6, v8}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    goto :goto_3d

    .line 58
    :cond_b8
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    const-string v0, "$railwaystation00"

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 63
    const-string v2, "$elevated_train_station_composition00"

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 64
    const-string v2, "$nativerailwaystation01"

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    .line 65
    const-string v3, "$elevated_train_station_composition01"

    invoke-static {v3, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 68
    new-instance v7, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-direct {v7, v2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 221
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_180

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 70
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    const-string v3, "getBuildingsOfDraft(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_129
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 72
    invoke-virtual {v7, v3, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 73
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v4

    rem-int/lit8 v11, v4, 0x4

    .line 74
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v9

    div-int/2addr v9, v6

    add-int/2addr v4, v9

    invoke-virtual {v8, v11}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v9

    div-int/2addr v9, v6

    sub-int v9, v4, v9

    .line 75
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    div-int/2addr v3, v6

    add-int/2addr v4, v3

    invoke-virtual {v8, v11}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v3

    div-int/2addr v3, v6

    sub-int v10, v4, v3

    const/4 v12, 0x0

    .line 76
    invoke-virtual/range {v7 .. v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_170
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_129

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    .line 77
    invoke-virtual {v7, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_170

    :cond_180
    :goto_180
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 17
    const-string v0, "rail_patch"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    const-string v0, "city"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    :try_start_6
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/cityloader/RailPatchLoader;->applyPatch(Linfo/flowersoft/theotown/city/City;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 4

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 88
    :try_start_b
    invoke-virtual {p0, p2, v0}, Linfo/flowersoft/theotown/cityloader/RailPatchLoader;->applyPatch(Linfo/flowersoft/theotown/city/City;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :goto_13
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    return-object p2
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 111
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
