###### Class info.flowersoft.theotown.region.Region (info.flowersoft.theotown.region.Region)
.class public Linfo/flowersoft/theotown/region/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field public area:I

.field public final board:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/region/RegionMap;",
            ">;"
        }
    .end annotation
.end field

.field public final bounds:Lcom/badlogic/gdx/math/Rectangle;

.field public final id:I

.field public inhabitants:J

.field public final iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public lastSelectedX:I

.field public lastSelectedY:I

.field public mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

.field public mapSelectionTime:J

.field public maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/region/RegionMap;",
            ">;"
        }
    .end annotation
.end field

.field public regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

.field public selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

.field public sortedMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/region/RegionMap;",
            ">;"
        }
    .end annotation
.end field

.field public unlockedMaps:I

.field public unlockedOrWaitingMaps:I


# direct methods
.method public static synthetic $r8$lambda$-lqdaeDrF7A6DBjqmcBgUva3Eqo(Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/region/RegionMap;)I
    .registers 3

    .line 313
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result p0

    sub-int/2addr v0, p0

    .line 314
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result p0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result p1

    sub-int/2addr p0, p1

    .line 315
    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$imXYx5X-9lVfmSfVEg7EZU6zkj8(Linfo/flowersoft/theotown/region/RegionMap;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 174
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/RegionMap;->getRenderer()Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_1b

    .line 179
    :cond_7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->readyForUpload()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 180
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->upload()V

    .line 183
    :cond_10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(ILinfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/city/IsoConverter;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/region/Region;->board:Lcom/badlogic/gdx/utils/IntMap;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v0, -0x80000000

    .line 43
    iput v0, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedX:I

    .line 44
    iput v0, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedY:I

    .line 55
    iput p1, p0, Linfo/flowersoft/theotown/region/Region;->id:I

    .line 56
    iput-object p2, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    .line 57
    iput-object p3, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    return-void
.end method


# virtual methods
.method public applyNeighbors(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 22

    move-object/from16 v0, p0

    .line 123
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 125
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 127
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_92

    .line 128
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2b
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-gt v5, v6, :cond_8d

    .line 129
    invoke-virtual {v0, v5, v4}, Linfo/flowersoft/theotown/region/Region;->getMap(II)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v6

    move-object/from16 v7, p1

    if-eqz v6, :cond_8a

    if-eq v6, v7, :cond_8a

    .line 131
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v8

    if-lt v5, v8, :cond_65

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v8

    if-lt v4, v8, :cond_65

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    if-eq v5, v8, :cond_65

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v4, v8, :cond_8a

    .line 133
    :cond_65
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v9

    sub-int v9, v4, v9

    if-eq v8, v9, :cond_8a

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v4

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v10

    add-int/2addr v9, v10

    if-eq v8, v9, :cond_8a

    .line 134
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_8d
    move-object/from16 v7, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_92
    move-object/from16 v7, p1

    .line 140
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v4

    .line 141
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->clearNeighbors()V

    .line 143
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/region/RegionMap;

    .line 144
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v9

    .line 145
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v8

    sub-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x40

    .line 146
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v8

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v10

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x40

    .line 147
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isOnline()Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 148
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v10

    if-nez v10, :cond_ec

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v10

    invoke-virtual {v10}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getAuthorId()J

    move-result-wide v10

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getAuthorId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_ec

    .line 149
    :cond_e9
    invoke-virtual {v9, v1, v6, v8}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->applyConnections(Linfo/flowersoft/theotown/city/City;II)V

    .line 153
    :cond_ec
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v10

    invoke-virtual {v9}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_101

    .line 154
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getTradingRelation(Ljava/lang/String;)Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v10

    goto :goto_113

    .line 156
    :cond_101
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getTradingRelation(Ljava/lang/String;)Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v10

    if-eqz v10, :cond_113

    .line 158
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/city/TradingRelation;->createReversed(Ljava/lang/String;)Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v10

    :cond_113
    :goto_113
    if-nez v10, :cond_121

    .line 162
    new-instance v10, Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-direct {v10}, Linfo/flowersoft/theotown/city/TradingRelation;-><init>()V

    .line 163
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/city/TradingRelation;->setId(Ljava/lang/String;)V

    :cond_121
    move-object v12, v10

    .line 166
    new-instance v10, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    neg-int v6, v6

    neg-int v11, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    .line 168
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v13

    invoke-virtual {v8, v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v13

    .line 169
    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/RegionMap;->getId()Ljava/lang/String;

    move-result-object v14

    .line 170
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getAuthorId()J

    move-result-wide v15

    .line 171
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getAuthorName()Ljava/lang/String;

    move-result-object v17

    .line 172
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    new-instance v8, Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5}, Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/region/RegionMap;)V

    move-object/from16 v19, v8

    move-object v8, v10

    move v10, v6

    invoke-direct/range {v8 .. v19}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;-><init>(Linfo/flowersoft/theotown/cityloader/LightCityInfo;IILinfo/flowersoft/theotown/city/TradingRelation;ZLjava/lang/String;JLjava/lang/String;ZLio/blueflower/stapel2d/util/Getter;)V

    .line 166
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/city/City;->addNeighbor(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)V

    goto/16 :goto_a3

    :cond_15d
    return-void
.end method

.method public containsScenario()Z
    .registers 4

    .line 376
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 378
    :goto_7
    iget-object v2, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 379
    iget-object v2, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2a
    return v1
.end method

.method public createBoard()V
    .registers 12

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    const/4 v1, 0x0

    .line 255
    iput v1, p0, Linfo/flowersoft/theotown/region/Region;->area:I

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/region/Region;->sortedMaps:Ljava/util/List;

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 260
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5f

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4a

    goto :goto_21

    .line 266
    :cond_4a
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v7

    if-nez v7, :cond_51

    goto :goto_21

    :cond_51
    add-int/lit8 v8, v5, 0x1

    .line 270
    :try_start_53
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 271
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v6, :cond_6e

    .line 276
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    move v0, v1

    goto :goto_80

    :catch_6c
    move-exception v0

    goto :goto_b7

    .line 279
    :cond_6e
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    :goto_80
    invoke-virtual {v7}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v3

    div-int/lit8 v8, v3, 0x40

    .line 284
    invoke-virtual {v7}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v3

    div-int/lit8 v9, v3, 0x40

    .line 286
    iget-object v3, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v7, v5

    int-to-float v10, v6

    invoke-virtual {v3, v7, v10}, Lcom/badlogic/gdx/math/Rectangle;->merge(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 287
    iget-object v3, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    add-int v7, v5, v8

    int-to-float v7, v7

    add-int v10, v6, v9

    int-to-float v10, v10

    invoke-virtual {v3, v7, v10}, Lcom/badlogic/gdx/math/Rectangle;->merge(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 288
    iget v3, p0, Linfo/flowersoft/theotown/region/Region;->area:I

    mul-int v7, v8, v9

    add-int/2addr v3, v7

    iput v3, p0, Linfo/flowersoft/theotown/region/Region;->area:I

    .line 290
    new-instance v3, Linfo/flowersoft/theotown/region/RegionMap;

    move v7, v0

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/region/RegionMap;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;IIIII)V

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->sortedMaps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_b5} :catch_6c

    goto/16 :goto_21

    .line 294
    :goto_b7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_21

    .line 299
    :cond_bc
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/region/RegionMap;

    .line 300
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v2

    :goto_d2
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v3

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_c2

    .line 301
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    :goto_e1
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_102

    .line 302
    iget-object v4, p0, Linfo/flowersoft/theotown/region/Region;->board:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/region/Region;->getBoardKey(II)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget v4, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedX:I

    if-ne v3, v4, :cond_ff

    iget v4, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedY:I

    if-ne v2, v4, :cond_ff

    .line 305
    iput-object v1, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    :cond_ff
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    :cond_102
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 312
    :cond_105
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->sortedMaps:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    if-nez v0, :cond_135

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 321
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 322
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 320
    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/region/Region;->focus(FF)V

    goto :goto_158

    .line 324
    :cond_135
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 325
    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 326
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/region/Region;->focus(FF)V

    .line 329
    :goto_158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->updateStats()V

    return-void
.end method

.method public createPreviews(Lio/blueflower/stapel2d/drawing/Engine;Ljava/util/concurrent/ExecutorService;)V
    .registers 7

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/region/RegionMap;

    .line 447
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getRenderer()Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    move-result-object v2

    if-nez v2, :cond_6

    .line 448
    new-instance v2, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/drawing/Engine;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/region/RegionMap;->setRenderer(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)V

    goto :goto_6

    :cond_25
    return-void
.end method

.method public destroyBoard()V
    .registers 2

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    return-void
.end method

.method public fastForwardMapUnlock(Linfo/flowersoft/theotown/region/RegionMap;I)V
    .registers 5

    .line 229
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->timeUntilUnlockInMS()I

    move-result v0

    const v1, 0xea60

    mul-int/2addr p2, v1

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setTimeUntilUnlock(I)V

    .line 231
    iget-object p1, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object p2, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 232
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->updateStats()V

    return-void
.end method

.method public focus(FF)V
    .registers 6

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 358
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getCenterX()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v1

    sub-float/2addr v0, v1

    .line 359
    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getCenterY()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result p1

    sub-float/2addr v1, p1

    .line 360
    iget-object p1, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result p2

    div-float/2addr v0, p2

    iget-object p2, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result p2

    div-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public getArea()I
    .registers 2

    .line 405
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->area:I

    return v0
.end method

.method public final getBoardKey(II)I
    .registers 4

    .line 0
    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method

.method public getHeight()F
    .registers 2

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 75
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->id:I

    return v0
.end method

.method public getInhabitants()J
    .registers 3

    .line 197
    iget-wide v0, p0, Linfo/flowersoft/theotown/region/Region;->inhabitants:J

    return-wide v0
.end method

.method public getIso()Linfo/flowersoft/theotown/city/IsoConverter;
    .registers 2

    .line 401
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    return-object v0
.end method

.method public getMap(II)Linfo/flowersoft/theotown/region/RegionMap;
    .registers 4

    .line 409
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->board:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/region/Region;->getBoardKey(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/region/RegionMap;

    return-object p1
.end method

.method public getMapByCityKeeper(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/region/RegionMap;
    .registers 6

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-nez v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->createBoard()V

    .line 237
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/region/RegionMap;

    .line 239
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v1

    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapCount()I
    .registers 2

    .line 388
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 389
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;
    .registers 2

    .line 368
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    return-object v0
.end method

.method public getMapSelectionTime()J
    .registers 3

    .line 91
    iget-wide v0, p0, Linfo/flowersoft/theotown/region/Region;->mapSelectionTime:J

    return-wide v0
.end method

.method public getMaxX()F
    .registers 3

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMaxY()F
    .registers 3

    .line 345
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinX()F
    .registers 2

    .line 333
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    return v0
.end method

.method public getMinY()F
    .registers 2

    .line 337
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    if-eqz v0, :cond_9

    .line 84
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;
    .registers 2

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    return-object v0
.end method

.method public getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;
    .registers 2

    .line 413
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    return-object v0
.end method

.method public getSortedMapByIndex(I)Linfo/flowersoft/theotown/region/RegionMap;
    .registers 3

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->sortedMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/region/RegionMap;

    return-object p1
.end method

.method public getUnlockedMaps()I
    .registers 2

    .line 205
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedMaps:I

    return v0
.end method

.method public getUnlockedOrWaitingMaps()I
    .registers 2

    .line 201
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v0

    return v0
.end method

.method public isBoardCreated()Z
    .registers 2

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z
    .registers 4

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 97
    :cond_6
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 99
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    return v1
.end method

.method public isTooBigToUpload()Z
    .registers 4

    .line 372
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x42600000    # 56.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_29

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_29

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->area()F

    move-result v0

    const/high16 v1, 0x44c40000    # 1568.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8e

    if-le v0, v1, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z
    .registers 8

    .line 108
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 110
    :cond_6
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_7c

    .line 111
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_79

    .line 112
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    if-lt v2, v3, :cond_48

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v3

    if-lt v0, v3, :cond_48

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_48

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ne v0, v3, :cond_76

    .line 113
    :cond_48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v4

    sub-int v4, v0, v4

    if-eq v3, v4, :cond_76

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v5

    add-int/2addr v4, v5

    if-eq v3, v4, :cond_76

    .line 114
    invoke-virtual {p0, v2, v0}, Linfo/flowersoft/theotown/region/Region;->getMap(II)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 115
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v3

    if-nez v3, :cond_76

    return v1

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_7c
    const/4 p1, 0x0

    return p1
.end method

.method public isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z
    .registers 3

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 104
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isWaitingToUnlock()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public regionInhabitantsNeededToUnlock()I
    .registers 2

    .line 193
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public reload(Linfo/flowersoft/theotown/cityfile/MapDirectory;)V
    .registers 2

    .line 61
    iput-object p1, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->destroyBoard()V

    return-void
.end method

.method public reloadRegionInformation()V
    .registers 2

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    return-void
.end method

.method public removeMapPreviews()V
    .registers 4

    .line 454
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-eqz v0, :cond_24

    .line 455
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/region/RegionMap;

    const/4 v2, 0x0

    .line 456
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/region/RegionMap;->setRenderer(Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;)V

    .line 457
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->clearPreviewData()V

    goto :goto_8

    :cond_24
    return-void
.end method

.method public selectMap(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 417
    iput-object p1, p0, Linfo/flowersoft/theotown/region/Region;->selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    if-eqz p1, :cond_11

    .line 419
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedX:I

    .line 420
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedY:I

    goto :goto_17

    :cond_11
    const/high16 p1, -0x80000000

    .line 422
    iput p1, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedX:I

    .line 423
    iput p1, p0, Linfo/flowersoft/theotown/region/Region;->lastSelectedY:I

    .line 425
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/region/Region;->mapSelectionTime:J

    return-void
.end method

.method public unlockMap(Linfo/flowersoft/theotown/region/RegionMap;I)V
    .registers 4

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 211
    iget v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    if-eqz v0, :cond_1b

    if-gtz p2, :cond_13

    goto :goto_1b

    :cond_13
    const v0, 0xea60

    mul-int/2addr p2, v0

    .line 214
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setTimeUntilUnlock(I)V

    goto :goto_1f

    :cond_1b
    :goto_1b
    const/4 p2, 0x0

    .line 212
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setTimeUntilUnlock(I)V

    .line 216
    :goto_1f
    iget-object p1, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object p2, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 218
    :cond_26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->updateStats()V

    return-void
.end method

.method public unlockMapImmediately(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setLocked(Z)V

    .line 224
    iget-object p1, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 225
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->updateStats()V

    return-void
.end method

.method public updateMaps()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 465
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3c

    .line 466
    iget-object v3, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/region/RegionMap;

    .line 467
    iget-object v4, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 470
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isWaitingToUnlock()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->timeUntilUnlockInMS()I

    move-result v4

    if-gtz v4, :cond_39

    .line 471
    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setLocked(Z)V

    const/4 v2, 0x1

    goto :goto_39

    .line 475
    :cond_30
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "a"

    const-string v5, "b"

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3c
    if-eqz v2, :cond_48

    .line 480
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 481
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->updateStats()V

    :cond_48
    return-void
.end method

.method public updateRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)V
    .registers 3

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region;->mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/region/Region;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    return-void
.end method

.method public final updateStats()V
    .registers 8

    const-wide/16 v0, 0x0

    .line 429
    iput-wide v0, p0, Linfo/flowersoft/theotown/region/Region;->inhabitants:J

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedMaps:I

    .line 431
    iput v0, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    .line 433
    iget-object v1, p0, Linfo/flowersoft/theotown/region/Region;->maps:Ljava/util/List;

    if-eqz v1, :cond_52

    .line 434
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/region/RegionMap;

    .line 435
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_29
    iget v3, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Linfo/flowersoft/theotown/region/Region;->unlockedOrWaitingMaps:I

    .line 437
    :cond_2f
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 438
    iget v3, p0, Linfo/flowersoft/theotown/region/Region;->unlockedMaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Linfo/flowersoft/theotown/region/Region;->unlockedMaps:I

    .line 439
    iget-wide v3, p0, Linfo/flowersoft/theotown/region/Region;->inhabitants:J

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHabitants()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Linfo/flowersoft/theotown/region/Region;->inhabitants:J

    goto :goto_11

    :cond_52
    return-void
.end method

###### Class info.flowersoft.theotown.region.Region$$ExternalSyntheticLambda0 (info.flowersoft.theotown.region.Region$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0}, Linfo/flowersoft/theotown/region/Region;->$r8$lambda$imXYx5X-9lVfmSfVEg7EZU6zkj8(Linfo/flowersoft/theotown/region/RegionMap;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.region.Region$$ExternalSyntheticLambda1 (info.flowersoft.theotown.region.Region$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/region/Region$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/region/RegionMap;

    check-cast p2, Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/region/Region;->$r8$lambda$-lqdaeDrF7A6DBjqmcBgUva3Eqo(Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/region/RegionMap;)I

    move-result p1

    return p1
.end method
