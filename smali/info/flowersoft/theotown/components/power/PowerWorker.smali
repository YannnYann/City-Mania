###### Class info.flowersoft.theotown.components.power.PowerWorker (info.flowersoft.theotown.components.power.PowerWorker)
.class public Linfo/flowersoft/theotown/components/power/PowerWorker;
.super Lio/blueflower/stapel2d/util/CyclicWorker;
.source "PowerWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
    }
.end annotation


# static fields
.field public static final CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public static final DEFAULT_ADAPTION_RATE:F


# instance fields
.field public adaptionRate:F

.field public final binaryMask:Ljava/util/BitSet;

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

.field public final groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public lastGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final originalGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 39
    const-string v0, "energy"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/power/PowerWorker;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 40
    const-string v1, "adaption rate"

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Linfo/flowersoft/theotown/components/power/PowerWorker;->DEFAULT_ADAPTION_RATE:F

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>()V

    .line 42
    sget v0, Linfo/flowersoft/theotown/components/power/PowerWorker;->DEFAULT_ADAPTION_RATE:F

    iput v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->adaptionRate:F

    .line 53
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->binaryMask:Ljava/util/BitSet;

    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [Linfo/flowersoft/theotown/util/MultiList;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->buildings:[Linfo/flowersoft/theotown/util/MultiList;

    .line 65
    new-instance v1, Linfo/flowersoft/theotown/util/MultiList;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/MultiList;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 66
    new-instance v1, Linfo/flowersoft/theotown/util/MultiList;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/MultiList;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 69
    iput v2, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->counter:I

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    filled-new-array {v0, v1}, [Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    .line 77
    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 78
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 80
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    .line 81
    new-instance p1, Lio/blueflower/stapel2d/util/IntQueue;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntQueue;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    .line 84
    invoke-virtual {p0, p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/components/power/PowerWorker;)[Linfo/flowersoft/theotown/util/MultiList;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->buildings:[Linfo/flowersoft/theotown/util/MultiList;

    return-object p0
.end method


# virtual methods
.method public getLastGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->lastGroups:Ljava/util/Set;

    return-object v0
.end method

.method public final isTileMarked(II)Z
    .registers 5

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->binaryMask:Ljava/util/BitSet;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final markTile(II)V
    .registers 5

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->binaryMask:Ljava/util/BitSet;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public run()V
    .registers 24

    move-object/from16 v1, p0

    .line 102
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->buildings:[Linfo/flowersoft/theotown/util/MultiList;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 103
    aget-object v5, v0, v4

    aput-object v5, v0, v2

    .line 104
    aput-object v3, v0, v4

    .line 105
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/MultiList;->clear()V

    .line 107
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 108
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntQueue;->clear()V

    .line 109
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 111
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 112
    iget-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    .line 114
    new-instance v3, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3d
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v5, :cond_3d

    .line 115
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-lez v7, :cond_3d

    .line 116
    new-instance v7, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    invoke-direct {v7, v1, v5, v6}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;-><init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/power/PowerWorker$1;)V

    .line 117
    iget-object v6, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->highVoltageOnly:Z

    if-eqz v6, :cond_7c

    .line 119
    iget-object v6, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v8

    shl-int/lit8 v8, v8, 0xe

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    or-int/2addr v5, v8

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    goto :goto_8c

    .line 121
    :cond_7c
    iget-object v6, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v8

    shl-int/lit8 v8, v8, 0xe

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    or-int/2addr v5, v8

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    .line 123
    :goto_8c
    iget-object v5, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 127
    :cond_92
    iget-object v3, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v3

    .line 128
    iget-object v5, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v5

    new-array v9, v5, [Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move v10, v2

    .line 129
    :goto_a1
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v11

    if-ge v10, v11, :cond_103

    .line 130
    invoke-virtual {v3, v10}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/city/objects/Wire;

    if-eqz v11, :cond_100

    .line 132
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result v12

    .line 133
    iget-object v13, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 134
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Wire;->getX()I

    move-result v14

    invoke-static {v12}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v15

    add-int/2addr v14, v15

    .line 135
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Wire;->getY()I

    move-result v15

    invoke-static {v12}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v12

    add-int/2addr v15, v12

    .line 133
    invoke-virtual {v13, v14, v15}, Linfo/flowersoft/theotown/city/City;->getNeighborIndex(II)I

    move-result v12

    if-ltz v12, :cond_100

    if-ge v12, v5, :cond_100

    .line 138
    aget-object v13, v9, v12

    if-nez v13, :cond_e2

    .line 140
    new-instance v13, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    invoke-direct {v13, v1, v6}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;-><init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/components/power/PowerWorker$1;)V

    aput-object v13, v9, v12

    .line 141
    invoke-static {v13, v12}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$200(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;I)V

    .line 142
    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_e2
    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    invoke-interface {v12, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v13

    iget v13, v13, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    shl-int/lit8 v13, v13, 0x1c

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Wire;->getX()I

    move-result v14

    shl-int/lit8 v14, v14, 0xe

    or-int/2addr v13, v14

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Wire;->getY()I

    move-result v11

    or-int/2addr v11, v13

    invoke-virtual {v12, v11}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    :cond_100
    add-int/lit8 v10, v10, 0x1

    goto :goto_a1

    .line 150
    :cond_103
    iget-object v10, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_143

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v3

    if-lez v3, :cond_143

    move v3, v2

    :goto_112
    if-ge v3, v5, :cond_143

    .line 152
    aget-object v10, v9, v3

    if-nez v10, :cond_140

    .line 153
    iget-object v10, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v10

    if-eqz v10, :cond_140

    .line 154
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasPowerConnection()Z

    move-result v10

    if-eqz v10, :cond_140

    .line 155
    new-instance v10, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    invoke-direct {v10, v1, v6}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;-><init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/components/power/PowerWorker$1;)V

    aput-object v10, v9, v3

    .line 156
    invoke-static {v10, v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$200(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;I)V

    .line 157
    iget-object v11, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    invoke-static {v11, v10}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$300(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    :cond_140
    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    .line 163
    :cond_143
    :goto_143
    iget-object v3, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a9

    .line 164
    iget-object v3, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    .line 165
    iget-object v5, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntQueue;->remove()I

    move-result v5

    ushr-int/lit8 v9, v5, 0xe

    and-int/lit16 v9, v9, 0x3fff

    and-int/lit16 v10, v5, 0x3fff

    shr-int/lit8 v5, v5, 0x1c

    .line 168
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 170
    iget-object v11, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11, v9, v10}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v11

    if-eqz v11, :cond_2a2

    .line 171
    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v11

    .line 172
    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    aget-object v12, v12, v5

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    if-nez v12, :cond_28a

    .line 175
    invoke-static {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v3

    .line 176
    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    aget-object v12, v12, v5

    invoke-virtual {v12, v11, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v11, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v11, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v11

    if-eqz v11, :cond_19b

    .line 180
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v12

    iget-boolean v12, v12, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    if-nez v12, :cond_199

    goto :goto_19b

    :cond_199
    move-object v12, v6

    goto :goto_1b6

    :cond_19b
    :goto_19b
    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 181
    invoke-virtual {v12, v9, v10, v5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v12

    if-nez v12, :cond_1b6

    if-nez v5, :cond_1ae

    iget-object v12, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v13, -0x1

    .line 182
    invoke-virtual {v12, v9, v10, v13}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v12

    if-nez v12, :cond_1b6

    :cond_1ae
    iget-object v13, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 183
    invoke-virtual {v13, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v13

    if-eqz v13, :cond_2a2

    :cond_1b6
    :goto_1b6
    if-nez v5, :cond_1ba

    const/4 v13, 0x5

    goto :goto_1bb

    :cond_1ba
    move v13, v4

    :goto_1bb
    if-eqz v11, :cond_1c3

    .line 187
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v13

    iget v13, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->powerRadius:I

    :cond_1c3
    if-eqz v12, :cond_208

    .line 190
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->hasConnection()Z

    move-result v13

    if-eqz v13, :cond_1ee

    .line 191
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result v13

    .line 192
    iget-object v14, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 193
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->getX()I

    move-result v15

    invoke-static {v13}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v16

    add-int v15, v15, v16

    .line 194
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->getY()I

    move-result v16

    invoke-static {v13}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v13

    add-int v13, v16, v13

    .line 192
    invoke-virtual {v14, v15, v13}, Linfo/flowersoft/theotown/city/City;->getNeighborIndex(II)I

    move-result v13

    if-ltz v13, :cond_1ee

    .line 196
    invoke-static {v3, v13}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$200(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;I)V

    .line 200
    :cond_1ee
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v13

    iget v13, v13, Linfo/flowersoft/theotown/draft/WireDraft;->power:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_202

    .line 201
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v13

    iget v13, v13, Linfo/flowersoft/theotown/draft/WireDraft;->power:F

    invoke-static {v3, v13}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$524(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F

    .line 204
    :cond_202
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v13

    iget v13, v13, Linfo/flowersoft/theotown/draft/WireDraft;->energyRadius:I

    :cond_208
    if-eqz v11, :cond_226

    .line 213
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v12

    iget-boolean v12, v12, Linfo/flowersoft/theotown/draft/BuildingDraft;->superConductive:Z

    if-eqz v12, :cond_21b

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v12

    if-eqz v12, :cond_21b

    move v5, v2

    move v12, v4

    goto :goto_22a

    .line 216
    :cond_21b
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v12

    iget-boolean v12, v12, Linfo/flowersoft/theotown/draft/BuildingDraft;->highVoltageOnly:Z

    if-eqz v12, :cond_229

    move v5, v4

    :goto_224
    move v12, v5

    goto :goto_22a

    :cond_226
    if-eqz v12, :cond_229

    goto :goto_224

    :cond_229
    move v12, v2

    :goto_22a
    if-gt v5, v12, :cond_266

    neg-int v14, v13

    move v15, v14

    :goto_22e
    if-gt v15, v13, :cond_260

    move v6, v14

    :goto_231
    if-gt v6, v13, :cond_25a

    mul-int v17, v6, v6

    mul-int v18, v15, v15

    move-wide/from16 v19, v7

    add-int v7, v17, v18

    mul-int v8, v13, v13

    if-gt v7, v8, :cond_255

    .line 229
    iget-object v7, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queue:Ljava/util/Queue;

    invoke-interface {v7, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v7, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->queueXYL:Lio/blueflower/stapel2d/util/IntQueue;

    shl-int/lit8 v8, v5, 0x1c

    add-int v17, v9, v6

    shl-int/lit8 v17, v17, 0xe

    or-int v8, v8, v17

    add-int v17, v10, v15

    or-int v8, v8, v17

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/util/IntQueue;->add(I)V

    :cond_255
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v7, v19

    goto :goto_231

    :cond_25a
    move-wide/from16 v19, v7

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_22e

    :cond_260
    move-wide/from16 v19, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_22a

    :cond_266
    move-wide/from16 v19, v7

    if-eqz v11, :cond_2a4

    .line 236
    iget-object v5, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v5

    invoke-virtual {v11, v9, v10, v5}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(III)Z

    move-result v5

    if-eqz v5, :cond_2a4

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v5

    cmp-long v5, v5, v19

    if-gez v5, :cond_2a4

    .line 237
    invoke-static {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$600(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3, v11}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    goto :goto_2a4

    :cond_28a
    move-wide/from16 v19, v7

    .line 241
    invoke-static {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v5

    invoke-static {v12}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v6

    if-eq v5, v6, :cond_2a4

    .line 242
    invoke-static {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v3

    invoke-static {v12}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$300(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    goto :goto_2a4

    :cond_2a2
    move-wide/from16 v19, v7

    :cond_2a4
    :goto_2a4
    move-wide/from16 v7, v19

    const/4 v6, 0x0

    goto/16 :goto_143

    :cond_2a9
    move-wide/from16 v19, v7

    move v3, v2

    :goto_2ac
    const/4 v5, 0x2

    if-ge v3, v5, :cond_2fc

    .line 249
    iget-object v5, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->binaryMask:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 250
    iget-object v5, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 251
    iget v7, v6, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-static {v7}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v7

    .line 252
    iget v6, v6, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-static {v6}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v6

    .line 253
    invoke-virtual {v1, v7, v6}, Linfo/flowersoft/theotown/components/power/PowerWorker;->markTile(II)V

    goto :goto_2bc

    :cond_2d8
    move v5, v2

    .line 255
    :goto_2d9
    iget-object v6, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2f9

    move v6, v2

    .line 256
    :goto_2e2
    iget-object v7, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_2f6

    .line 257
    iget-object v7, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v6, v5}, Linfo/flowersoft/theotown/components/power/PowerWorker;->isTileMarked(II)Z

    move-result v8

    invoke-virtual {v7, v6, v5, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->setPower(IIIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e2

    :cond_2f6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d9

    :cond_2f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ac

    .line 264
    :cond_2fc
    new-instance v3, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v5, v3

    :cond_307
    :goto_307
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 265
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v7

    cmp-long v7, v7, v19

    if-gez v7, :cond_307

    .line 266
    iget-object v7, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->groupPerTile:[Lcom/badlogic/gdx/utils/IntMap;

    aget-object v7, v7, v2

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v8

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    if-nez v7, :cond_307

    .line 268
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v7

    cmp-long v7, v7, v19

    if-gez v7, :cond_358

    iget-object v7, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 269
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v7

    if-nez v7, :cond_358

    .line 270
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v7

    if-eqz v7, :cond_356

    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    iget v8, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->adaptionRate:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_356

    goto :goto_358

    :cond_356
    move v7, v2

    goto :goto_359

    :cond_358
    :goto_358
    move v7, v4

    .line 268
    :goto_359
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/objects/Building;->setHasPower(Z)V

    .line 271
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v7

    cmp-long v7, v7, v19

    if-gez v7, :cond_307

    add-int/lit8 v3, v3, 0x1

    .line 273
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v6

    if-nez v6, :cond_307

    add-int/lit8 v5, v5, 0x1

    goto :goto_307

    .line 281
    :cond_36f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 282
    iget-object v6, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->originalGroups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_37a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    invoke-static {v7}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37a

    .line 284
    :cond_38e
    iget-object v6, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v6

    new-array v7, v6, [J

    move v8, v2

    :goto_397
    if-ge v8, v6, :cond_3ae

    .line 286
    iget-object v9, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v8}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v9

    if-eqz v9, :cond_3ab

    .line 288
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v9

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/TradingRelation;->getEnergyExport()J

    move-result-wide v9

    aput-wide v9, v7, v8

    :cond_3ab
    add-int/lit8 v8, v8, 0x1

    goto :goto_397

    .line 292
    :cond_3ae
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3b2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4f7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move v10, v2

    move v11, v10

    .line 294
    :goto_3c0
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v12

    invoke-virtual {v12}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v12

    if-ge v10, v12, :cond_3e1

    .line 295
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v12

    invoke-virtual {v12, v10}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/city/objects/Building;

    int-to-long v13, v11

    .line 296
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v15

    add-long/2addr v13, v15

    long-to-int v11, v13

    .line 297
    invoke-virtual {v12, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setHasPower(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3c0

    :cond_3e1
    int-to-float v10, v11

    .line 299
    invoke-static {v9, v10}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$802(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F

    .line 301
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$500(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)F

    move-result v10

    .line 302
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$900(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_452

    .line 303
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$900(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3f7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_419

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 304
    aget-wide v14, v7, v13

    cmp-long v16, v14, v19

    move/from16 v17, v3

    if-gez v16, :cond_415

    int-to-long v2, v11

    sub-long/2addr v2, v14

    long-to-int v2, v2

    .line 306
    aput-wide v19, v7, v13

    move v11, v2

    :cond_415
    move/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_3f7

    :cond_419
    move/from16 v17, v3

    int-to-float v2, v11

    .line 309
    invoke-static {v9, v2}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$802(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F

    .line 310
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$900(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_427
    :goto_427
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 311
    aget-wide v12, v7, v3

    cmp-long v14, v12, v19

    if-lez v14, :cond_427

    int-to-long v14, v11

    .line 312
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 313
    aget-wide v21, v7, v3

    sub-long v21, v21, v11

    aput-wide v21, v7, v3

    sub-long/2addr v14, v11

    long-to-int v3, v14

    long-to-float v11, v11

    add-float/2addr v10, v11

    move v11, v3

    goto :goto_427

    :cond_44e
    int-to-float v2, v11

    add-float/2addr v2, v10

    float-to-int v11, v2

    goto :goto_454

    :cond_452
    move/from16 v17, v3

    :goto_454
    move/from16 v3, v17

    const/4 v2, 0x0

    .line 321
    :goto_457
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$600(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v12

    invoke-virtual {v12}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v12

    if-ge v2, v12, :cond_4a4

    .line 322
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$600(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v12

    invoke-virtual {v12, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/city/objects/Building;

    .line 323
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v13

    long-to-float v13, v13

    sub-float/2addr v10, v13

    int-to-float v13, v11

    cmpg-float v13, v10, v13

    if-lez v13, :cond_493

    .line 324
    iget-object v13, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 325
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v13

    if-nez v13, :cond_493

    .line 326
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v13

    if-eqz v13, :cond_491

    sget-object v13, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v13

    iget v14, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->adaptionRate:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_491

    goto :goto_493

    :cond_491
    const/4 v13, 0x0

    goto :goto_494

    :cond_493
    :goto_493
    move v13, v4

    .line 324
    :goto_494
    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/city/objects/Building;->setHasPower(Z)V

    add-int/lit8 v3, v3, 0x1

    .line 328
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v12

    if-nez v12, :cond_4a1

    add-int/lit8 v5, v5, 0x1

    :cond_4a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_457

    .line 330
    :cond_4a4
    invoke-static {v9, v10}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$502(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F

    .line 332
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$800(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)F

    move-result v2

    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$500(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)F

    move-result v10

    cmpg-float v2, v2, v10

    if-gez v2, :cond_4d8

    iget-object v2, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v2

    if-nez v2, :cond_4d8

    const/4 v2, 0x0

    .line 333
    :goto_4bc
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v10

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v10

    if-ge v2, v10, :cond_4d6

    .line 334
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v10

    invoke-virtual {v10, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/objects/Building;

    .line 335
    invoke-virtual {v10, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloaded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4bc

    :cond_4d6
    const/4 v11, 0x0

    goto :goto_4f4

    :cond_4d8
    const/4 v2, 0x0

    .line 338
    :goto_4d9
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v10

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v10

    if-ge v2, v10, :cond_4d6

    .line 339
    invoke-static {v9}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v10

    invoke-virtual {v10, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v11, 0x0

    .line 340
    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloaded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d9

    :goto_4f4
    move v2, v11

    goto/16 :goto_3b2

    :cond_4f7
    move v11, v2

    move/from16 v17, v3

    const/16 v2, 0x3e8

    if-lt v3, v2, :cond_51a

    int-to-float v2, v5

    const/high16 v8, 0x3f000000    # 0.5f

    int-to-float v3, v3

    mul-float/2addr v3, v8

    cmpl-float v2, v2, v3

    if-gez v2, :cond_50b

    const/16 v2, 0x7d0

    if-lt v5, v2, :cond_51a

    .line 347
    :cond_50b
    iget-object v2, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v2

    if-eqz v2, :cond_51a

    .line 348
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v3, "power_insufficient"

    invoke-interface {v2, v3}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_51a
    move v2, v11

    :goto_51b
    if-ge v2, v6, :cond_53c

    .line 352
    aget-wide v8, v7, v2

    cmp-long v3, v8, v19

    if-lez v3, :cond_539

    .line 353
    iget-object v3, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v3

    if-eqz v3, :cond_539

    .line 355
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/TradingRelation;->getEnergyExport()J

    move-result-wide v8

    aget-wide v10, v7, v2

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Linfo/flowersoft/theotown/city/TradingRelation;->setEnergyExport(J)V

    :cond_539
    add-int/lit8 v2, v2, 0x1

    goto :goto_51b

    .line 361
    :cond_53c
    iput-object v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->lastGroups:Ljava/util/Set;

    .line 363
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->energySaving:Z

    if-eqz v0, :cond_550

    iget v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->counter:I

    if-lez v0, :cond_550

    const-wide/16 v2, 0x3e8

    .line 365
    :try_start_548
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54b
    .catch Ljava/lang/InterruptedException; {:try_start_548 .. :try_end_54b} :catch_54c

    goto :goto_550

    :catch_54c
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    :cond_550
    :goto_550
    iget v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->counter:I

    add-int/2addr v0, v4

    iput v0, v1, Linfo/flowersoft/theotown/components/power/PowerWorker;->counter:I

    return-void
.end method

.method public setAdaptionRate(F)V
    .registers 2

    .line 96
    iput p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->adaptionRate:F

    return-void
.end method

.method public setDefaultAdaptionRate()V
    .registers 2

    .line 92
    sget v0, Linfo/flowersoft/theotown/components/power/PowerWorker;->DEFAULT_ADAPTION_RATE:F

    iput v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker;->adaptionRate:F

    return-void
.end method

###### Class info.flowersoft.theotown.components.power.PowerWorker.AnonymousClass1 (info.flowersoft.theotown.components.power.PowerWorker$1)
.class public synthetic Linfo/flowersoft/theotown/components/power/PowerWorker$1;
.super Ljava/lang/Object;
.source "PowerWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/power/PowerWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.power.PowerWorker.EnergyGroup (info.flowersoft.theotown.components.power.PowerWorker$EnergyGroup)
.class public final Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
.super Ljava/lang/Object;
.source "PowerWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/power/PowerWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EnergyGroup"
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

.field public parent:Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

.field public produced:F

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

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/power/PowerWorker;

.field public used:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/power/PowerWorker;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 390
    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->this$0:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    invoke-static {p1}, Linfo/flowersoft/theotown/components/power/PowerWorker;->access$1000(Linfo/flowersoft/theotown/components/power/PowerWorker;)[Linfo/flowersoft/theotown/util/MultiList;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/MultiList;->newList()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 392
    invoke-static {p1}, Linfo/flowersoft/theotown/components/power/PowerWorker;->access$1000(Linfo/flowersoft/theotown/components/power/PowerWorker;)[Linfo/flowersoft/theotown/util/MultiList;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList;->newList()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/city/objects/Building;)V
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

    .line 396
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;-><init>(Linfo/flowersoft/theotown/components/power/PowerWorker;)V

    .line 397
    iget-object p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/power/PowerWorker$1;)V
    .registers 4

    .line 374
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;-><init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/power/PowerWorker;Linfo/flowersoft/theotown/components/power/PowerWorker$1;)V
    .registers 3

    .line 374
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;-><init>(Linfo/flowersoft/theotown/components/power/PowerWorker;)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;I)V
    .registers 2

    .line 374
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->registerNeighborCity(I)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
    .registers 2

    .line 374
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->join(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
    .registers 1

    .line 374
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getParent()Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)F
    .registers 1

    .line 374
    iget p0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    return p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F
    .registers 2

    .line 374
    iput p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    return p1
.end method

.method public static synthetic access$524(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F
    .registers 3

    .line 374
    iget v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    sub-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    return v0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 1

    .line 374
    iget-object p0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 1

    .line 374
    iget-object p0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)F
    .registers 1

    .line 374
    iget p0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->produced:F

    return p0
.end method

.method public static synthetic access$802(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;F)F
    .registers 2

    .line 374
    iput p1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->produced:F

    return p1
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Ljava/util/Set;
    .registers 1

    .line 374
    iget-object p0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    return-object p0
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

    .line 443
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object v0
.end method

.method public final getParent()Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
    .registers 3

    .line 408
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->parent:Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    if-nez v0, :cond_5

    return-object p0

    .line 409
    :cond_5
    :goto_5
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->parent:Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    iget-object v1, v0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->parent:Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    if-eqz v1, :cond_e

    .line 410
    iput-object v1, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->parent:Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    goto :goto_5

    :cond_e
    return-object v0
.end method

.method public getProduced()F
    .registers 2

    .line 383
    iget v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->produced:F

    return v0
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

    .line 439
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    return-object v0
.end method

.method public getUsed()F
    .registers 2

    .line 387
    iget v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    return v0
.end method

.method public final join(Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
    .registers 6

    .line 416
    iput-object p0, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->parent:Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v0, 0x0

    move v1, v0

    .line 417
    :goto_4
    iget-object v2, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 418
    iget-object v2, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    iget-object v3, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 420
    :cond_1c
    iget-object v1, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->free()V

    const/4 v1, 0x0

    .line 421
    iput-object v1, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->producer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 423
    iget-object v2, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->this$0:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/power/PowerWorker;->access$1000(Linfo/flowersoft/theotown/components/power/PowerWorker;)[Linfo/flowersoft/theotown/util/MultiList;

    move-result-object v2

    aget-object v0, v2, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    iget-object v3, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/MultiList;->mix(Linfo/flowersoft/theotown/util/MultiList$SingleList;Linfo/flowersoft/theotown/util/MultiList$SingleList;)Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 425
    iput-object v1, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->needer:Linfo/flowersoft/theotown/util/MultiList$SingleList;

    .line 427
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    if-nez v0, :cond_41

    .line 428
    iget-object v0, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    goto :goto_48

    .line 429
    :cond_41
    iget-object v1, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    if-eqz v1, :cond_48

    .line 430
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 433
    :cond_48
    :goto_48
    iget v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    iget p1, p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->used:F

    return-object p0
.end method

.method public final registerNeighborCity(I)V
    .registers 3

    .line 401
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    .line 404
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->neighborCities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
