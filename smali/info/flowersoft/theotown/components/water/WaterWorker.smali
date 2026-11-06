###### Class info.flowersoft.theotown.components.water.WaterWorker (info.flowersoft.theotown.components.water.WaterWorker)
.class public Linfo/flowersoft/theotown/components/water/WaterWorker;
.super Lio/blueflower/stapel2d/util/CyclicWorker;
.source "WaterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
    }
.end annotation


# static fields
.field public static final CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public static final DEFAULT_ADAPTION_RATE:F


# instance fields
.field public adaptionRate:F

.field public final buildings:[Linfo/flowersoft/theotown/util/MultiList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public counter:I

.field public final groupPerTile:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final grownMask:Ljava/util/BitSet;

.field public final influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public lastGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final originalGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final queueGrow:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final queueXY:Lio/blueflower/stapel2d/util/IntQueue;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    const-string v0, "water"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/water/WaterWorker;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 39
    const-string v1, "adaption rate"

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Linfo/flowersoft/theotown/components/water/WaterWorker;->DEFAULT_ADAPTION_RATE:F

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>()V

    .line 41
    sget v0, Linfo/flowersoft/theotown/components/water/WaterWorker;->DEFAULT_ADAPTION_RATE:F

    iput v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->adaptionRate:F

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/util/MultiList;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/MultiList;-><init>()V

    new-instance v1, Linfo/flowersoft/theotown/util/MultiList;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/MultiList;-><init>()V

    filled-new-array {v0, v1}, [Linfo/flowersoft/theotown/util/MultiList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->buildings:[Linfo/flowersoft/theotown/util/MultiList;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->counter:I

    .line 58
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->grownMask:Ljava/util/BitSet;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 67
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    .line 68
    new-instance p1, Lio/blueflower/stapel2d/util/IntQueue;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntQueue;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueXY:Lio/blueflower/stapel2d/util/IntQueue;

    .line 69
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueGrow:Ljava/util/Queue;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    .line 72
    invoke-virtual {p0, p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/components/water/WaterWorker;)[Linfo/flowersoft/theotown/util/MultiList;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->buildings:[Linfo/flowersoft/theotown/util/MultiList;

    return-object p0
.end method


# virtual methods
.method public getLastGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->lastGroups:Ljava/util/Set;

    return-object v0
.end method

.method public final hasGrown(II)Z
    .registers 4

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 89
    iget-object p2, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->grownMask:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final markGrown(II)V
    .registers 4

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 94
    iget-object p2, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->grownMask:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public run()V
    .registers 23

    move-object/from16 v1, p0

    .line 99
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->buildings:[Linfo/flowersoft/theotown/util/MultiList;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 100
    aget-object v5, v0, v4

    aput-object v5, v0, v2

    .line 101
    aput-object v3, v0, v4

    .line 102
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/MultiList;->clear()V

    .line 104
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 105
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueXY:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntQueue;->clear()V

    .line 106
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueGrow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 107
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 109
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->grownMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 111
    iget-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    .line 113
    new-instance v3, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v5, :cond_3e

    .line 114
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-lez v7, :cond_3e

    .line 115
    new-instance v7, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    invoke-direct {v7, v1, v5, v6}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;-><init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/water/WaterWorker$1;)V

    .line 116
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    .line 117
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v8

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 118
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    :goto_72
    if-ge v9, v8, :cond_94

    .line 119
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    :goto_78
    if-ge v10, v6, :cond_91

    .line 120
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    invoke-interface {v11, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueXY:Lio/blueflower/stapel2d/util/IntQueue;

    shl-int/lit8 v12, v10, 0x10

    or-int/2addr v12, v9

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    .line 122
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueGrow:Ljava/util/Queue;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_78

    :cond_91
    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    .line 125
    :cond_94
    iget-object v5, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 129
    :cond_9a
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v3

    .line 130
    iget-object v5, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v5

    new-array v9, v5, [Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move v10, v2

    .line 131
    :goto_a9
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v11

    if-ge v10, v11, :cond_121

    .line 132
    invoke-virtual {v3, v10}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/city/objects/Pipe;

    if-eqz v11, :cond_11e

    .line 134
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result v12

    .line 135
    iget-object v13, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 136
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Pipe;->getX()I

    move-result v14

    invoke-static {v12}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v15

    add-int/2addr v14, v15

    .line 137
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Pipe;->getY()I

    move-result v15

    invoke-static {v12}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v12

    add-int/2addr v15, v12

    .line 135
    invoke-virtual {v13, v14, v15}, Linfo/flowersoft/theotown/city/City;->getNeighborIndex(II)I

    move-result v12

    if-ltz v12, :cond_dc

    .line 138
    iget-object v13, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v13

    goto :goto_dd

    :cond_dc
    move-object v13, v6

    :goto_dd
    if-ltz v12, :cond_11e

    if-ge v12, v5, :cond_11e

    if-eqz v13, :cond_11e

    .line 141
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v13

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-eqz v13, :cond_11e

    .line 142
    aget-object v13, v9, v12

    if-nez v13, :cond_102

    .line 144
    new-instance v13, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    invoke-direct {v13, v1, v6}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;-><init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/components/water/WaterWorker$1;)V

    aput-object v13, v9, v12

    .line 145
    invoke-static {v13, v12}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$200(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;I)V

    .line 146
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_102
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    invoke-interface {v12, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueXY:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Pipe;->getX()I

    move-result v13

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Pipe;->getY()I

    move-result v11

    or-int/2addr v11, v13

    invoke-virtual {v12, v11}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    .line 151
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueGrow:Ljava/util/Queue;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_11e
    add-int/lit8 v10, v10, 0x1

    goto :goto_a9

    .line 156
    :cond_121
    iget-object v10, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_161

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v3

    if-lez v3, :cond_161

    move v3, v2

    :goto_130
    if-ge v3, v5, :cond_161

    .line 158
    aget-object v10, v9, v3

    if-nez v10, :cond_15e

    .line 159
    iget-object v10, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v10

    if-eqz v10, :cond_15e

    .line 160
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasWaterConnection()Z

    move-result v10

    if-eqz v10, :cond_15e

    .line 161
    new-instance v10, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    invoke-direct {v10, v1, v6}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;-><init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/components/water/WaterWorker$1;)V

    aput-object v10, v9, v3

    .line 162
    invoke-static {v10, v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$200(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;I)V

    .line 163
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    invoke-static {v11, v10}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$300(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    :cond_15e
    add-int/lit8 v3, v3, 0x1

    goto :goto_130

    .line 169
    :cond_161
    :goto_161
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2bf

    .line 170
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    .line 171
    iget-object v5, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueXY:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntQueue;->remove()I

    move-result v5

    ushr-int/lit8 v9, v5, 0x10

    const v10, 0xffff

    and-int/2addr v10, v5

    .line 174
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueGrow:Ljava/util/Queue;

    invoke-interface {v11}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 175
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12, v9, v10}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v12

    if-eqz v12, :cond_2b8

    .line 176
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v12

    .line 177
    iget-object v13, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v13

    if-nez v12, :cond_1b2

    if-eqz v13, :cond_1b0

    .line 178
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v14

    if-eqz v14, :cond_1b0

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v14

    iget-boolean v14, v14, Linfo/flowersoft/theotown/draft/BuildingDraft;->liquid:Z

    if-eqz v14, :cond_1b0

    goto :goto_1b2

    :cond_1b0
    move v14, v2

    goto :goto_1b3

    :cond_1b2
    :goto_1b2
    move v14, v4

    .line 179
    :goto_1b3
    iget-object v15, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v15, v5, v6}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    if-eqz v15, :cond_1e1

    if-eqz v11, :cond_1c6

    .line 181
    invoke-virtual {v1, v9, v10}, Linfo/flowersoft/theotown/components/water/WaterWorker;->hasGrown(II)Z

    move-result v16

    if-nez v16, :cond_1c6

    goto :goto_1e1

    :cond_1c6
    if-eqz v14, :cond_1dd

    .line 209
    invoke-static {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v5

    invoke-static {v15}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v11

    if-eq v5, v11, :cond_1dd

    .line 210
    invoke-static {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v5

    invoke-static {v15}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v11

    invoke-static {v5, v11}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$300(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    :cond_1dd
    move-wide/from16 v17, v7

    goto/16 :goto_265

    .line 182
    :cond_1e1
    :goto_1e1
    invoke-static {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v15

    .line 183
    iget-object v6, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v5, v15}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_1ef

    .line 185
    invoke-virtual {v1, v9, v10}, Linfo/flowersoft/theotown/components/water/WaterWorker;->markGrown(II)V

    :cond_1ef
    if-eqz v14, :cond_1dd

    if-eqz v11, :cond_1dd

    if-eqz v12, :cond_21c

    .line 188
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Pipe;->hasConnection()Z

    move-result v5

    if-eqz v5, :cond_21c

    .line 189
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result v5

    .line 190
    iget-object v6, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 191
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Pipe;->getX()I

    move-result v11

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v14

    add-int/2addr v11, v14

    .line 192
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Pipe;->getY()I

    move-result v14

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v14, v5

    .line 190
    invoke-virtual {v6, v11, v14}, Linfo/flowersoft/theotown/city/City;->getNeighborIndex(II)I

    move-result v5

    if-ltz v5, :cond_21c

    .line 193
    invoke-static {v15, v5}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$200(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;I)V

    :cond_21c
    if-eqz v12, :cond_225

    .line 196
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v5

    iget v5, v5, Linfo/flowersoft/theotown/draft/PipeDraft;->waterRadius:I

    goto :goto_226

    :cond_225
    const/4 v5, 0x4

    :goto_226
    neg-int v6, v5

    move v11, v6

    :goto_228
    if-gt v11, v5, :cond_1dd

    move v12, v6

    :goto_22b
    if-gt v12, v5, :cond_260

    mul-int v14, v12, v12

    mul-int v17, v11, v11

    add-int v14, v14, v17

    move-wide/from16 v17, v7

    mul-int v7, v5, v5

    if-gt v14, v7, :cond_25b

    if-lez v14, :cond_25b

    .line 201
    iget-object v7, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queue:Ljava/util/Queue;

    invoke-interface {v7, v15}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v7, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueXY:Lio/blueflower/stapel2d/util/IntQueue;

    add-int v8, v9, v12

    shl-int/lit8 v8, v8, 0x10

    add-int v19, v10, v11

    or-int v8, v8, v19

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    .line 203
    iget-object v7, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->queueGrow:Ljava/util/Queue;

    if-ne v14, v4, :cond_253

    move v8, v4

    goto :goto_254

    :cond_253
    move v8, v2

    :goto_254
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_25b
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v7, v17

    goto :goto_22b

    :cond_260
    move-wide/from16 v17, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_228

    :goto_265
    if-eqz v13, :cond_2ba

    .line 214
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v5

    cmp-long v5, v5, v17

    if-gez v5, :cond_2ba

    .line 216
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 217
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 218
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v7

    move v8, v4

    :goto_286
    if-ge v7, v6, :cond_2aa

    if-eqz v8, :cond_2aa

    .line 219
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v11

    :goto_28e
    if-ge v11, v5, :cond_2a7

    if-ne v11, v9, :cond_294

    if-eq v7, v10, :cond_2a4

    .line 221
    :cond_294
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    invoke-static {v11, v7}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    if-eqz v12, :cond_2a4

    move v8, v2

    goto :goto_2a7

    :cond_2a4
    add-int/lit8 v11, v11, 0x1

    goto :goto_28e

    :cond_2a7
    :goto_2a7
    add-int/lit8 v7, v7, 0x1

    goto :goto_286

    :cond_2aa
    if-eqz v8, :cond_2ba

    .line 230
    invoke-static {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$500(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3, v13}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    goto :goto_2ba

    :cond_2b8
    move-wide/from16 v17, v7

    :cond_2ba
    :goto_2ba
    move-wide/from16 v7, v17

    const/4 v6, 0x0

    goto/16 :goto_161

    :cond_2bf
    move-wide/from16 v17, v7

    .line 238
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->grownMask:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 239
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2cc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 240
    iget v6, v5, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-static {v6}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v6

    .line 241
    iget v5, v5, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-static {v5}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v5

    .line 242
    invoke-virtual {v1, v6, v5}, Linfo/flowersoft/theotown/components/water/WaterWorker;->markGrown(II)V

    goto :goto_2cc

    :cond_2e8
    move v3, v2

    .line 244
    :goto_2e9
    iget-object v5, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_30d

    move v5, v2

    .line 245
    :goto_2f2
    iget-object v6, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_30a

    .line 246
    iget-object v6, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v1, v5, v3}, Linfo/flowersoft/theotown/components/water/WaterWorker;->hasGrown(II)Z

    move-result v7

    invoke-virtual {v6, v5, v3, v7}, Linfo/flowersoft/theotown/city/Tiles;->setWater(IIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f2

    :cond_30a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e9

    .line 250
    :cond_30d
    new-instance v3, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_316
    :goto_316
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_390

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 251
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v6

    cmp-long v6, v6, v17

    if-gez v6, :cond_386

    .line 253
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 254
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v7

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 255
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v8

    move v9, v2

    :goto_342
    if-ge v8, v7, :cond_362

    if-nez v9, :cond_362

    .line 256
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    :goto_34a
    if-ge v10, v6, :cond_35f

    .line 257
    iget-object v11, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->groupPerTile:Lcom/badlogic/gdx/utils/IntMap;

    invoke-static {v10, v8}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    if-eqz v11, :cond_35c

    move v9, v4

    goto :goto_35f

    :cond_35c
    add-int/lit8 v10, v10, 0x1

    goto :goto_34a

    :cond_35f
    :goto_35f
    add-int/lit8 v8, v8, 0x1

    goto :goto_342

    :cond_362
    if-nez v9, :cond_316

    .line 265
    iget-object v6, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v6

    if-nez v6, :cond_381

    .line 266
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v6

    if-eqz v6, :cond_37f

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget v7, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->adaptionRate:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_37f

    goto :goto_381

    :cond_37f
    move v6, v2

    goto :goto_382

    :cond_381
    :goto_381
    move v6, v4

    .line 265
    :goto_382
    invoke-virtual {v3, v6, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWater(ZF)V

    goto :goto_316

    .line 268
    :cond_386
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v6

    if-nez v6, :cond_316

    .line 269
    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWater(ZF)V

    goto :goto_316

    .line 273
    :cond_390
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 274
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    invoke-static {v6}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39b

    .line 276
    :cond_3af
    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v3

    new-array v6, v3, [J

    move v7, v2

    :goto_3b8
    if-ge v7, v3, :cond_3cf

    .line 278
    iget-object v8, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v8

    if-eqz v8, :cond_3cc

    .line 280
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v8

    aput-wide v8, v6, v7

    :cond_3cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b8

    .line 284
    :cond_3cf
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3d3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move v9, v2

    move v12, v5

    move-wide/from16 v10, v17

    .line 288
    :goto_3e3
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v13

    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v13

    if-ge v9, v13, :cond_41d

    .line 289
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v13

    invoke-virtual {v13, v9}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Linfo/flowersoft/theotown/city/objects/Building;

    .line 290
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v14

    add-long/2addr v10, v14

    .line 291
    iget-object v14, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v15, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v14, v13, v15}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(Linfo/flowersoft/theotown/city/objects/Building;I)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    move/from16 v16, v3

    .line 292
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v14, v2

    add-float/2addr v12, v14

    .line 293
    invoke-virtual {v13, v4, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWater(ZF)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_3e3

    :cond_41d
    move/from16 v16, v3

    const/4 v2, 0x0

    .line 296
    :goto_420
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$500(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_43e

    .line 297
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$500(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 298
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    add-float/2addr v12, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_420

    :cond_43e
    long-to-float v2, v10

    .line 301
    invoke-static {v8, v2}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$702(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F

    .line 304
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$800(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_4a2

    .line 305
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$800(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_450
    :goto_450
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 306
    aget-wide v13, v6, v3

    cmp-long v9, v13, v17

    if-gez v9, :cond_450

    sub-long/2addr v10, v13

    .line 308
    aput-wide v17, v6, v3

    goto :goto_450

    :cond_46a
    long-to-float v2, v10

    .line 311
    invoke-static {v8, v2}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$702(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F

    .line 312
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$800(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_477
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 313
    aget-wide v13, v6, v9

    cmp-long v19, v13, v17

    if-lez v19, :cond_49b

    .line 314
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 315
    aget-wide v19, v6, v9

    sub-long v19, v19, v13

    aput-wide v19, v6, v9

    sub-long/2addr v10, v13

    int-to-long v4, v3

    add-long/2addr v4, v13

    long-to-int v3, v4

    :cond_49b
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_477

    :cond_49e
    int-to-long v4, v3

    add-long/2addr v10, v4

    const/4 v2, 0x0

    goto :goto_4a4

    :cond_4a2
    move v2, v5

    const/4 v3, 0x0

    .line 323
    :goto_4a4
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    long-to-float v5, v10

    div-float v5, v4, v5

    mul-float/2addr v5, v5

    .line 327
    iget-object v12, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v12

    if-eqz v12, :cond_4b5

    move v5, v2

    :cond_4b5
    const/4 v12, 0x0

    .line 328
    :goto_4b6
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$500(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v13

    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v13

    if-ge v12, v13, :cond_500

    .line 329
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$500(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v13

    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Linfo/flowersoft/theotown/city/objects/Building;

    int-to-long v2, v3

    .line 330
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v20

    sub-long v2, v2, v20

    long-to-int v3, v2

    move-wide/from16 v20, v10

    int-to-long v9, v3

    cmp-long v9, v9, v20

    if-ltz v9, :cond_4f6

    .line 331
    iget-object v9, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 332
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v9

    if-nez v9, :cond_4f6

    .line 333
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v9

    if-eqz v9, :cond_4f4

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    iget v10, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->adaptionRate:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4f4

    goto :goto_4f6

    :cond_4f4
    const/4 v9, 0x0

    goto :goto_4f7

    :cond_4f6
    :goto_4f6
    const/4 v9, 0x1

    .line 331
    :goto_4f7
    invoke-virtual {v13, v9, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWater(ZF)V

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v10, v20

    const/4 v2, 0x0

    goto :goto_4b6

    :cond_500
    int-to-float v3, v3

    .line 335
    invoke-static {v8, v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$902(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F

    .line 336
    invoke-static {v8, v4}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$1002(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F

    .line 338
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$700(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)F

    move-result v3

    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$900(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_539

    iget-object v3, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v3

    if-nez v3, :cond_539

    const/4 v3, 0x0

    .line 339
    :goto_51c
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v4

    if-ge v3, v4, :cond_537

    .line 340
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v4

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v9, 0x1

    .line 341
    invoke-virtual {v4, v9}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloaded(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_51c

    :cond_537
    const/4 v15, 0x0

    goto :goto_555

    :cond_539
    const/4 v2, 0x0

    .line 344
    :goto_53a
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_537

    .line 345
    invoke-static {v8}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v15, 0x0

    .line 346
    invoke-virtual {v3, v15}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloaded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_53a

    :goto_555
    move v2, v15

    move/from16 v3, v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3d3

    :cond_55c
    move v15, v2

    :goto_55d
    if-ge v2, v3, :cond_57e

    .line 354
    aget-wide v4, v6, v2

    cmp-long v4, v4, v17

    if-lez v4, :cond_57b

    .line 355
    iget-object v4, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v4

    if-eqz v4, :cond_57b

    .line 357
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v4

    .line 358
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v7

    aget-wide v10, v6, v2

    sub-long/2addr v7, v10

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/TradingRelation;->setWaterExport(J)V

    :cond_57b
    add-int/lit8 v2, v2, 0x1

    goto :goto_55d

    .line 363
    :cond_57e
    iput-object v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->lastGroups:Ljava/util/Set;

    .line 365
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->energySaving:Z

    if-eqz v0, :cond_592

    iget v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->counter:I

    if-lez v0, :cond_592

    const-wide/16 v2, 0x3e8

    .line 367
    :try_start_58a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58d
    .catch Ljava/lang/InterruptedException; {:try_start_58a .. :try_end_58d} :catch_58e

    goto :goto_592

    :catch_58e
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    :cond_592
    :goto_592
    iget v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->counter:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v1, Linfo/flowersoft/theotown/components/water/WaterWorker;->counter:I

    return-void
.end method

.method public setAdaptionRate(F)V
    .registers 2

    .line 80
    iput p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->adaptionRate:F

    return-void
.end method

.method public setDefaultAdaptionRate()V
    .registers 2

    .line 76
    sget v0, Linfo/flowersoft/theotown/components/water/WaterWorker;->DEFAULT_ADAPTION_RATE:F

    iput v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker;->adaptionRate:F

    return-void
.end method

###### Class info.flowersoft.theotown.components.water.WaterWorker.AnonymousClass1 (info.flowersoft.theotown.components.water.WaterWorker$1)
.class public synthetic Linfo/flowersoft/theotown/components/water/WaterWorker$1;
.super Ljava/lang/Object;
.source "WaterWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/water/WaterWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.water.WaterWorker.WaterGroup (info.flowersoft.theotown.components.water.WaterWorker$WaterGroup)
.class public final Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
.super Ljava/lang/Object;
.source "WaterWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/water/WaterWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WaterGroup"
.end annotation


# instance fields
.field public needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/MultiList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">.Single",
            "List;"
        }
    .end annotation
.end field

.field public neighborCities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public parent:Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

.field public producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/MultiList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">.Single",
            "List;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/water/WaterWorker;

.field public usage:F

.field public waste:F

.field public water:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/water/WaterWorker;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 385
    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->this$0:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    invoke-static {p1}, Linfo/flowersoft/theotown/components/water/WaterWorker;->access$1100(Linfo/flowersoft/theotown/components/water/WaterWorker;)[Linfo/flowersoft/theotown/util/MultiList;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/MultiList;->newList()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 387
    invoke-static {p1}, Linfo/flowersoft/theotown/components/water/WaterWorker;->access$1100(Linfo/flowersoft/theotown/components/water/WaterWorker;)[Linfo/flowersoft/theotown/util/MultiList;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList;->newList()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;-><init>(Linfo/flowersoft/theotown/components/water/WaterWorker;)V

    .line 391
    iget-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/water/WaterWorker$1;)V
    .registers 4

    .line 376
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;-><init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/water/WaterWorker;Linfo/flowersoft/theotown/components/water/WaterWorker$1;)V
    .registers 3

    .line 376
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;-><init>(Linfo/flowersoft/theotown/components/water/WaterWorker;)V

    return-void
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F
    .registers 2

    .line 376
    iput p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->waste:F

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;I)V
    .registers 2

    .line 376
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->registerNeighborCity(I)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
    .registers 2

    .line 376
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->join(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
    .registers 1

    .line 376
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getParent()Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 1

    .line 376
    iget-object p0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 1

    .line 376
    iget-object p0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)F
    .registers 1

    .line 376
    iget p0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->water:F

    return p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F
    .registers 2

    .line 376
    iput p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->water:F

    return p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Ljava/util/Set;
    .registers 1

    .line 376
    iget-object p0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)F
    .registers 1

    .line 376
    iget p0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->usage:F

    return p0
.end method

.method public static synthetic access$902(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;F)F
    .registers 2

    .line 376
    iput p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->usage:F

    return p1
.end method


# virtual methods
.method public getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">.Single",
            "List;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object v0
.end method

.method public final getParent()Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
    .registers 3

    .line 400
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->parent:Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    if-nez v0, :cond_5

    return-object p0

    .line 401
    :cond_5
    :goto_5
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->parent:Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    iget-object v1, v0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->parent:Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    if-eqz v1, :cond_e

    .line 402
    iput-object v1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->parent:Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    goto :goto_5

    :cond_e
    return-object v0
.end method

.method public getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">.Single",
            "List;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object v0
.end method

.method public getUsage()F
    .registers 2

    .line 441
    iget v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->usage:F

    return v0
.end method

.method public getWaste()F
    .registers 2

    .line 445
    iget v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->waste:F

    return v0
.end method

.method public getWater()F
    .registers 2

    .line 437
    iget v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->water:F

    return v0
.end method

.method public final join(Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
    .registers 6

    .line 408
    iput-object p0, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->parent:Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v0, 0x0

    move v1, v0

    .line 409
    :goto_4
    iget-object v2, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 410
    iget-object v2, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    iget-object v3, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 412
    :cond_1c
    iget-object v1, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->free()V

    const/4 v1, 0x0

    .line 413
    iput-object v1, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 415
    iget-object v2, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->this$0:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/water/WaterWorker;->access$1100(Linfo/flowersoft/theotown/components/water/WaterWorker;)[Linfo/flowersoft/theotown/util/MultiList;

    move-result-object v2

    aget-object v0, v2, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    iget-object v3, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/MultiList;->mix(Linfo/flowersoft/theotown/util/MultiList$SingleList;Linfo/flowersoft/theotown/util/MultiList$SingleList;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 417
    iput-object v1, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 419
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    if-nez v0, :cond_41

    .line 420
    iget-object p1, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    return-object p0

    .line 421
    :cond_41
    iget-object p1, p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    if-eqz p1, :cond_48

    .line 422
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_48
    return-object p0
.end method

.method public final registerNeighborCity(I)V
    .registers 3

    .line 395
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    .line 396
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->neighborCities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
