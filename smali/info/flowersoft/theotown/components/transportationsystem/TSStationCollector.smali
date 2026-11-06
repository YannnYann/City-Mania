###### Class info.flowersoft.theotown.components.transportationsystem.TSStationCollector (info.flowersoft.theotown.components.transportationsystem.TSStationCollector)
.class public Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;
.super Ljava/lang/Object;
.source "TSStationCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$IntIntConsumer;
    }
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public dirty:Z

.field public final draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

.field public final nameGenerator:Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;

.field public nextStationId:I

.field public stations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSStation;",
            ">;"
        }
    .end annotation
.end field

.field public stationsById:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSStation;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public static synthetic $r8$lambda$AzUACe_ev4WBAQYyMMWBie_FPl4(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;Ljava/lang/String;)Z
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationByName(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$jJu4D_b_yTPhuz5PkqbaNzDL0iE(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/List;Ljava/util/List;II)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    .line 227
    invoke-virtual {p2, p7}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    .line 228
    invoke-virtual {p3, p6, p7}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 229
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-interface {p4, p7, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-interface {p5, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/util/TileSet;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->updateStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/util/TileSet;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stationsById:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    .line 80
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 81
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    .line 82
    new-instance p2, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;

    .line 83
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;)V

    invoke-direct {p2, p1, v0}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Predicate;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nameGenerator:Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;

    return-void
.end method


# virtual methods
.method public final collectNeighborCityRoads(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/neighbors/NeighborCity;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 374
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 375
    iget-object v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v2, :cond_4e

    .line 376
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->hasConnection()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_4e

    .line 377
    :cond_2f
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    .line 378
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result v4

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    .line 380
    iget v5, v2, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    add-int/2addr v5, v3

    iget v3, v2, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v5, v3}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 381
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_51
    return-object v0
.end method

.method public final getBestMatch(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/TileSet;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/TileSet;",
            ">;)I"
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 398
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 399
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/TileSet;

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/TileSet;->getCommonArea(Linfo/flowersoft/theotown/util/TileSet;)I

    move-result v3

    if-lez v3, :cond_1a

    if-le v3, v0, :cond_1a

    move v1, v2

    move v0, v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1d
    return v1
.end method

.method public getNextStationId()I
    .registers 2

    .line 99
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    return v0
.end method

.method public final getSetForArea(IIIIIILcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)Linfo/flowersoft/theotown/util/UnionJoin;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;Z)",
            "Linfo/flowersoft/theotown/util/UnionJoin;"
        }
    .end annotation

    move/from16 v0, p6

    move-object/from16 v1, p9

    sub-int v2, p3, p1

    sub-int v3, p4, p2

    mul-int/2addr v2, v3

    sub-int/2addr p2, p5

    const/4 v3, 0x0

    .line 570
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v4, 0x0

    :goto_10
    add-int v5, p4, p5

    iget-object v6, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge p2, v5, :cond_7b

    sub-int v5, p1, p5

    .line 571
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_24
    add-int v6, p3, p5

    iget-object v7, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_76

    .line 572
    invoke-static {v5, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v6

    move-object/from16 v7, p7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/util/UnionJoin;

    if-eqz v6, :cond_73

    if-eqz v4, :cond_4c

    .line 573
    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v8

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v9

    if-eq v8, v9, :cond_73

    .line 574
    :cond_4c
    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v8

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v8

    if-nez v4, :cond_5b

    add-int/2addr v8, v2

    if-gt v8, v0, :cond_73

    move-object v4, v6

    goto :goto_73

    .line 581
    :cond_5b
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v9

    invoke-virtual {v1, v9, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v9

    add-int/2addr v8, v9

    add-int v9, v8, v2

    if-gt v9, v0, :cond_73

    .line 583
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/UnionJoin;->join(Linfo/flowersoft/theotown/util/UnionJoin;)Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v4

    .line 584
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v6

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_73
    :goto_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_76
    move-object/from16 v7, p7

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_7b
    if-nez v4, :cond_8a

    if-eqz p10, :cond_8a

    .line 592
    new-instance p1, Linfo/flowersoft/theotown/util/UnionJoin;

    invoke-direct {p1}, Linfo/flowersoft/theotown/util/UnionJoin;-><init>()V

    move-object/from16 p2, p8

    .line 593
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_8a
    return-object v4
.end method

.method public getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 3

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stationsById:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    return-object p1
.end method

.method public getStationByName(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 4

    const/4 v0, 0x0

    .line 145
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 146
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    return-object p1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 7

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 159
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 160
    iget-object v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 161
    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_22

    return-object v2

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_25
    return-object v1
.end method

.method public final getStationGroups(II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/TileSet;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance v4, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    .line 481
    new-instance v5, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    .line 482
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v7, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    .line 485
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getSpawnBuildings()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markBuildings(Ljava/util/List;IILcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)V

    .line 486
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getBusStops()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markBusStops(Ljava/util/List;IILcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)V

    .line 487
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getStationBuildings()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markBuildings(Ljava/util/List;IILcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)V

    .line 489
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x0

    .line 490
    :goto_3a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5b

    .line 491
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/UnionJoin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v0

    .line 492
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 493
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    .line 497
    :cond_5b
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/IntMap;->keys()Lcom/badlogic/gdx/utils/IntMap$Keys;

    move-result-object p2

    .line 498
    :goto_5f
    iget-boolean v0, p2, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_7b

    .line 499
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/IntMap$Keys;->next()I

    move-result v0

    .line 500
    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/UnionJoin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v1

    .line 501
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_5f

    .line 504
    :cond_7b
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/IntList;

    .line 506
    new-instance v1, Linfo/flowersoft/theotown/util/TileSet;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/TileSet;-><init>(Lio/blueflower/stapel2d/util/IntList;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_a1
    return-object p2
.end method

.method public getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;
    .registers 5

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    if-nez p1, :cond_e

    .line 119
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    goto :goto_11

    .line 121
    :cond_e
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    :goto_11
    const/4 v1, 0x0

    .line 124
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    return-object p1
.end method

.method public getStations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSStation;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    return-object v0
.end method

.method public final markArea(IIIILinfo/flowersoft/theotown/util/UnionJoin;Lcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/ObjectIntMap;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;I)V"
        }
    .end annotation

    .line 604
    invoke-virtual {p5}, Linfo/flowersoft/theotown/util/UnionJoin;->getRoot()Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v0

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p8, v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getAndIncrement(Ljava/lang/Object;II)I

    move p8, p2

    :goto_e
    if-ge p8, p4, :cond_20

    move v0, p1

    :goto_11
    if-ge v0, p3, :cond_1d

    .line 608
    invoke-static {v0, p8}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v1

    invoke-virtual {p7, v1, p5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1d
    add-int/lit8 p8, p8, 0x1

    goto :goto_e

    :cond_20
    sub-int/2addr p2, p9

    .line 612
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_25
    add-int p7, p4, p9

    iget-object p8, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p8}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p8

    invoke-static {p7, p8}, Ljava/lang/Math;->min(II)I

    move-result p7

    if-ge p2, p7, :cond_54

    sub-int p7, p1, p9

    .line 613
    invoke-static {p7, v2}, Ljava/lang/Math;->max(II)I

    move-result p7

    :goto_39
    add-int p8, p3, p9

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    invoke-static {p8, v0}, Ljava/lang/Math;->min(II)I

    move-result p8

    if-ge p7, p8, :cond_51

    .line 614
    invoke-static {p7, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p8

    invoke-virtual {p6, p8, p5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p7, p7, 0x1

    goto :goto_39

    :cond_51
    add-int/lit8 p2, p2, 0x1

    goto :goto_25

    :cond_54
    return-void
.end method

.method public final markBuildings(Ljava/util/List;IILcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;II",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 544
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_81

    move-object/from16 v1, p1

    .line 545
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 546
    iget-object v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Linfo/flowersoft/theotown/city/objects/Building;

    .line 547
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    .line 548
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v7

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    move-object v3, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 547
    invoke-virtual/range {v3 .. v13}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getSetForArea(IIIIIILcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v4

    if-eqz v4, :cond_1d

    move-object v8, v4

    .line 552
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    .line 553
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    const/4 v12, 0x0

    move-object v3, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 552
    invoke-virtual/range {v3 .. v12}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markArea(IIIILinfo/flowersoft/theotown/util/UnionJoin;Lcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/ObjectIntMap;I)V

    goto :goto_1d

    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_81
    return-void
.end method

.method public final markBusStops(Ljava/util/List;IILcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ">;II",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Linfo/flowersoft/theotown/util/UnionJoin;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 518
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    move-object/from16 v1, p1

    .line 519
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 520
    iget-object v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v4

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/BusStopList;->getOfDraft(Linfo/flowersoft/theotown/draft/BusStopDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 522
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v4

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v5

    .line 523
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object v3, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 521
    invoke-virtual/range {v3 .. v13}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getSetForArea(IIIIIILcom/badlogic/gdx/utils/IntMap;Ljava/util/List;Lcom/badlogic/gdx/utils/ObjectIntMap;Z)Linfo/flowersoft/theotown/util/UnionJoin;

    move-result-object v4

    if-eqz v4, :cond_1d

    move-object v8, v4

    .line 528
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v4

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v5

    .line 529
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    const/4 v12, 0x0

    move-object v3, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 527
    invoke-virtual/range {v3 .. v12}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markArea(IIIILinfo/flowersoft/theotown/util/UnionJoin;Lcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/IntMap;Lcom/badlogic/gdx/utils/ObjectIntMap;I)V

    goto :goto_1d

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_75
    return-void
.end method

.method public markDirty()V
    .registers 2

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->dirty:Z

    return-void
.end method

.method public final newIntSetForRange(I)Lcom/badlogic/gdx/utils/IntSet;
    .registers 4

    .line 389
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p1, :cond_e

    .line 390
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    return-object v0
.end method

.method public final newStation(Linfo/flowersoft/theotown/util/TileSet;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 11

    .line 409
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    iget v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    .line 412
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nameGenerator:Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;

    iget-object v5, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    .line 413
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v7

    iget-object v8, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v4, v5, v6, v7, v8}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->generate(Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;ILvm2/LuaTable;Ljava/lang/String;II)V

    .line 415
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->updateStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/util/TileSet;)V

    return-object v0
.end method

.method public setNextStationId(I)V
    .registers 2

    .line 92
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    return-void
.end method

.method public setStations(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSStation;",
            ">;)V"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    const/4 v1, 0x0

    .line 179
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 181
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 184
    :cond_1c
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    .line 185
    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stationsById:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method public update()V
    .registers 28

    move-object/from16 v1, p0

    .line 197
    iget-boolean v0, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->dirty:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v7, 0x0

    .line 198
    iput-boolean v7, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->dirty:Z

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 202
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 204
    :goto_19
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 205
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 206
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 207
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 209
    :cond_33
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 212
    :cond_3d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->newIntSetForRange(I)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object v2

    .line 214
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v0

    .line 215
    iget v3, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationSearchRadius:I

    .line 216
    iget v0, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationMaxTiles:I

    .line 218
    invoke-virtual {v1, v3, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationGroups(II)Ljava/util/List;

    move-result-object v6

    .line 219
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->newIntSetForRange(I)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object v3

    .line 221
    new-instance v4, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 223
    :goto_66
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    if-ge v0, v12, :cond_73

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 225
    :cond_73
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/List;Ljava/util/List;)V

    .line 234
    new-instance v4, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    move v12, v7

    .line 235
    :goto_7e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_a2

    .line 236
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/util/TileSet;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v14

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Linfo/flowersoft/theotown/util/TileSet;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v15

    invoke-static {v14, v15}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v14

    invoke-virtual {v4, v14, v12}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7e

    :cond_a2
    move v12, v7

    .line 239
    :goto_a3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, -0x1

    if-ge v12, v14, :cond_c9

    .line 240
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/util/TileSet;

    .line 241
    invoke-virtual {v14}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v7

    invoke-virtual {v14}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v14

    invoke-static {v7, v14}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v7

    invoke-virtual {v4, v7, v15}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v7

    if-ltz v7, :cond_c5

    .line 243
    invoke-interface {v0, v7, v12}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$IntIntConsumer;->match(II)V

    :cond_c5
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_a3

    .line 248
    :cond_c9
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v4

    .line 249
    :goto_cd
    iget-boolean v7, v4, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v7, :cond_117

    .line 250
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v7

    .line 251
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v12

    const/high16 v14, -0x80000000

    move v13, v15

    .line 254
    :goto_dc
    iget-boolean v15, v12, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v15, :cond_107

    .line 255
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v15

    .line 256
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Linfo/flowersoft/theotown/util/TileSet;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    check-cast v8, Linfo/flowersoft/theotown/util/TileSet;

    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/util/TileSet;->getCommonArea(Linfo/flowersoft/theotown/util/TileSet;)I

    move-result v4

    if-lez v4, :cond_102

    if-le v4, v14, :cond_102

    move v14, v4

    move v13, v15

    :cond_102
    move-object/from16 v4, v17

    move-wide/from16 v8, v18

    goto :goto_dc

    :cond_107
    move-object/from16 v17, v4

    move-wide/from16 v18, v8

    if-ltz v13, :cond_110

    .line 263
    invoke-interface {v0, v7, v13}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$IntIntConsumer;->match(II)V

    :cond_110
    move-object/from16 v4, v17

    move-wide/from16 v8, v18

    const/4 v13, 0x0

    const/4 v15, -0x1

    goto :goto_cd

    :cond_117
    move-wide/from16 v18, v8

    .line 267
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    iget v4, v3, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-direct {v0, v4}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 268
    new-instance v4, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    .line 270
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v3

    .line 271
    :cond_129
    :goto_129
    iget-boolean v7, v3, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v7, :cond_163

    .line 272
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v7

    .line 273
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/util/TileSet;

    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->newStation(Linfo/flowersoft/theotown/util/TileSet;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v8

    .line 274
    invoke-interface {v5, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v7

    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 277
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v7

    invoke-virtual {v1, v7, v10}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getBestMatch(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;)I

    move-result v7

    if-ltz v7, :cond_129

    .line 279
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v8

    iget-object v9, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v7

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_129

    .line 284
    :cond_163
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    iget v7, v2, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-direct {v3, v7}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 285
    new-instance v7, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    .line 287
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v2

    .line 288
    :cond_173
    :goto_173
    iget-boolean v8, v2, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v8, :cond_1a6

    .line 289
    iget-object v8, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->stations:Ljava/util/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 290
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v9

    invoke-virtual {v3, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 292
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v9

    invoke-virtual {v1, v9, v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getBestMatch(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;)I

    move-result v9

    if-ltz v9, :cond_173

    .line 294
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v8

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_173

    .line 300
    :cond_1a6
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v2

    iget-boolean v2, v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->supportNeighborConnections:Z

    if-eqz v2, :cond_274

    const/4 v2, 0x0

    .line 301
    :goto_1b1
    iget-object v6, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v6

    if-ge v2, v6, :cond_274

    .line 302
    iget-object v6, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v6

    .line 303
    instance-of v8, v6, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    if-eqz v8, :cond_270

    .line 304
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_270

    .line 305
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isCreated()Z

    move-result v8

    if-nez v8, :cond_1d1

    goto/16 :goto_270

    .line 308
    :cond_1d1
    check-cast v6, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    .line 310
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->collectNeighborCityRoads(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Ljava/util/List;

    move-result-object v8

    .line 311
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1df

    goto/16 :goto_270

    :cond_1df
    const/4 v9, 0x0

    .line 314
    :goto_1e0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_201

    .line 315
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 316
    invoke-virtual {v10}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityX()I

    move-result v12

    invoke-virtual {v10}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityY()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1fe

    .line 318
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_202

    :cond_1fe
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e0

    :cond_201
    const/4 v10, 0x0

    :goto_202
    if-nez v10, :cond_245

    .line 324
    new-instance v20, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    iget-object v9, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    iget v10, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->nextStationId:I

    .line 325
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v23

    .line 326
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getName()Ljava/lang/String;

    move-result-object v24

    .line 327
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v12

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v25, v12, v13

    .line 328
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v12

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v26, v12, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    invoke-direct/range {v20 .. v26}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;ILvm2/LuaTable;Ljava/lang/String;II)V

    .line 330
    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v6

    if-nez v6, :cond_23c

    goto :goto_270

    .line 335
    :cond_23c
    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    move-object/from16 v10, v20

    .line 338
    :cond_245
    new-instance v6, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v6}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/4 v9, 0x0

    .line 339
    :goto_24b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_265

    .line 340
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/city/objects/Road;

    .line 341
    iget v13, v12, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v12, v12, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-static {v13, v12}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v12

    invoke-virtual {v6, v12}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_24b

    .line 344
    :cond_265
    new-instance v9, Linfo/flowersoft/theotown/util/TileSet;

    invoke-direct {v9, v6}, Linfo/flowersoft/theotown/util/TileSet;-><init>(Lio/blueflower/stapel2d/util/IntList;)V

    invoke-virtual {v10, v9, v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->initialize(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;)V

    .line 347
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_270
    :goto_270
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b1

    :cond_274
    const/4 v2, 0x0

    .line 351
    :goto_275
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_28b

    .line 352
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_275

    .line 356
    :cond_28b
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->setStations(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 358
    :goto_28f
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2a6

    .line 359
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 360
    iget-object v6, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v9

    invoke-virtual {v6, v5, v9}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->addStation(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28f

    :cond_2a6
    const/4 v8, -0x1

    const/4 v0, 0x0

    .line 363
    :goto_2a8
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2be

    .line 364
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 365
    iget-object v4, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v7, v2, v8}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->removeStation(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a8

    .line 368
    :cond_2be
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Station update for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public updateStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/util/TileSet;)V
    .registers 15

    .line 425
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 427
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 428
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->getNeighborIndex(II)I

    move-result v0

    if-gez v0, :cond_1c

    return-void

    .line 431
    :cond_1c
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->collectNeighborCityRoads(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Ljava/util/List;

    move-result-object v0

    .line 433
    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->initialize(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;)V

    return-void

    .line 437
    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 441
    :goto_3a
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v5

    if-ge v4, v5, :cond_be

    .line 442
    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/util/TileSet;->getPackedXY(I)I

    move-result v5

    .line 443
    invoke-static {v5}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v6

    .line 444
    invoke-static {v5}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v5

    .line 445
    iget-object v7, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v7

    if-eqz v7, :cond_80

    .line 447
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 448
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v8, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v9

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isStationBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 451
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 452
    :cond_71
    iget-object v8, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v9

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSpawnBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 453
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_80
    :goto_80
    iget-object v7, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v7, :cond_8f

    .line 458
    iget-object v8, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v8

    goto :goto_90

    :cond_8f
    const/4 v8, 0x0

    :goto_90
    if-eqz v7, :cond_ba

    if-eqz v8, :cond_ba

    .line 460
    iget v7, v7, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 461
    iget v8, v8, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    :goto_98
    if-lt v7, v8, :cond_ba

    .line 464
    iget-object v9, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v6, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v9

    if-eqz v9, :cond_b7

    .line 467
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v9

    if-eqz v9, :cond_b7

    .line 468
    iget-object v10, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v11

    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 469
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    add-int/lit8 v7, v7, -0x1

    goto :goto_98

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3a

    .line 476
    :cond_be
    invoke-virtual {p1, p2, v2, v1, v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->initialize(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transportationsystem.TSStationCollector.IntIntConsumer (info.flowersoft.theotown.components.transportationsystem.TSStationCollector$IntIntConsumer)
.class interface abstract Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$IntIntConsumer;
.super Ljava/lang/Object;
.source "TSStationCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntIntConsumer"
.end annotation


# virtual methods
.method public abstract match(II)V
.end method

###### Class info.flowersoft.theotown.components.transportationsystem.TSStationCollector$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.transportationsystem.TSStationCollector$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$IntIntConsumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

.field public final synthetic f$1:Lcom/badlogic/gdx/utils/IntSet;

.field public final synthetic f$2:Lcom/badlogic/gdx/utils/IntSet;

.field public final synthetic f$3:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$1:Lcom/badlogic/gdx/utils/IntSet;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$2:Lcom/badlogic/gdx/utils/IntSet;

    iput-object p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$3:Lcom/badlogic/gdx/utils/IntIntMap;

    iput-object p5, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    iput-object p6, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final match(II)V
    .registers 11

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$1:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$2:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$3:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    iget-object v5, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->$r8$lambda$jJu4D_b_yTPhuz5PkqbaNzDL0iE(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntSet;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/List;Ljava/util/List;II)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transportationsystem.TSStationCollector$$ExternalSyntheticLambda1 (info.flowersoft.theotown.components.transportationsystem.TSStationCollector$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->$r8$lambda$AzUACe_ev4WBAQYyMMWBie_FPl4(Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
