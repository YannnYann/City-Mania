###### Class info.flowersoft.theotown.util.RoadRouteCalculator (info.flowersoft.theotown.util.RoadRouteCalculator)
.class public Linfo/flowersoft/theotown/util/RoadRouteCalculator;
.super Ljava/lang/Object;
.source "RoadRouteCalculator.java"


# instance fields
.field public abortPending:Z

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

.field public pendingCalculationDone:Z

.field public pendingPathCalculation:Z

.field public pendingResult:Linfo/flowersoft/theotown/city/objects/Way;


# direct methods
.method public static synthetic $r8$lambda$0IqRYLcHp_gMSASAk2qJoZt11zg(Linfo/flowersoft/theotown/util/RoadRouteCalculator;)V
    .registers 3

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    const/16 v1, 0x3e8

    .line 63
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/Pathfinding;->calculate(I)V

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Pathfinding;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Pathfinding;->getResult()Linfo/flowersoft/theotown/city/objects/Way;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingResult:Linfo/flowersoft/theotown/city/objects/Way;

    :cond_17
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingCalculationDone:Z

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->city:Linfo/flowersoft/theotown/city/City;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/city/Pathfinding;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/Pathfinding;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    const/4 p1, 0x0

    .line 31
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/Pathfinding;->setTrafficFactor(F)V

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;J)V
    .registers 7

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingPathCalculation:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingCalculationDone:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingResult:Linfo/flowersoft/theotown/city/objects/Way;

    .line 56
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->abortPending:Z

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/city/Pathfinding;->setRoadFlags(J)V

    .line 59
    iget-object p3, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(Linfo/flowersoft/theotown/city/MapArea;)V

    .line 60
    iget-object p2, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pathfinding:Linfo/flowersoft/theotown/city/Pathfinding;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/Pathfinding;->addStart(Linfo/flowersoft/theotown/city/MapArea;)V

    .line 62
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Linfo/flowersoft/theotown/util/RoadRouteCalculator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/util/RoadRouteCalculator;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public buildWayAlignmentMap(Linfo/flowersoft/theotown/city/objects/Way;)Lcom/badlogic/gdx/utils/IntIntMap;
    .registers 15

    .line 77
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 78
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartX()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartY()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartLevel()I

    move-result v3

    .line 81
    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v2, 0x2

    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/util/PackedInt3;->pack(III)I

    move-result v4

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v5

    move v6, v4

    .line 84
    :goto_22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v7

    if-ge v6, v7, :cond_76

    .line 85
    invoke-virtual {p1, v6}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v7

    .line 88
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v8

    add-int/2addr v8, v1

    .line 89
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v9

    add-int/2addr v9, v2

    .line 91
    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v1, v1, 0x2

    if-ne v10, v1, :cond_42

    div-int/lit8 v11, v9, 0x2

    div-int/lit8 v12, v2, 0x2

    if-eq v11, v12, :cond_70

    .line 93
    :cond_42
    iget-object v11, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v11, v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 94
    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v1, v5, :cond_56

    add-int/lit8 v3, v3, 0x1

    .line 97
    :cond_56
    iget-object v1, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    div-int/lit8 v2, v9, 0x2

    invoke-virtual {v1, v10, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-nez v1, :cond_69

    const/4 v1, -0x2

    if-le v3, v1, :cond_69

    add-int/lit8 v3, v3, -0x1

    .line 99
    :cond_69
    invoke-static {v3, v10, v2}, Linfo/flowersoft/theotown/util/PackedInt3;->pack(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_70
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    move v1, v8

    move v2, v9

    goto :goto_22

    .line 104
    :cond_76
    new-instance p1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    move v1, v4

    .line 106
    :goto_7c
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d0

    .line 107
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 108
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackX(I)I

    move-result v3

    .line 109
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackY(I)I

    move-result v5

    if-lez v1, :cond_a9

    add-int/lit8 v6, v1, -0x1

    .line 113
    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    .line 115
    invoke-static {v6}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackX(I)I

    move-result v7

    sub-int/2addr v7, v3

    .line 116
    invoke-static {v6}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackY(I)I

    move-result v6

    sub-int/2addr v6, v5

    .line 114
    invoke-static {v7, v6}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v6

    invoke-static {v4, v6}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v6

    goto :goto_aa

    :cond_a9
    move v6, v4

    .line 120
    :goto_aa
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_ca

    add-int/lit8 v7, v1, 0x1

    .line 121
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    .line 123
    invoke-static {v7}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackX(I)I

    move-result v8

    sub-int/2addr v8, v3

    .line 124
    invoke-static {v7}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackY(I)I

    move-result v3

    sub-int/2addr v3, v5

    .line 122
    invoke-static {v8, v3}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v3

    invoke-static {v6, v3}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v6

    .line 128
    :cond_ca
    invoke-virtual {p1, v2, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_d0
    return-object p1
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->abortPending:Z

    return-void
.end method

.method public consumeResult()Linfo/flowersoft/theotown/city/objects/Way;
    .registers 2

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingPathCalculation:Z

    .line 48
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingCalculationDone:Z

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingResult:Linfo/flowersoft/theotown/city/objects/Way;

    return-object v0
.end method

.method public hasPendingCalculation()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingPathCalculation:Z

    return v0
.end method

.method public hasWorkDone()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingPathCalculation:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->pendingCalculationDone:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public removeLast()V
    .registers 2

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->abortPending:Z

    return-void
.end method

.method public wasAborted()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->abortPending:Z

    return v0
.end method

###### Class info.flowersoft.theotown.util.RoadRouteCalculator$$ExternalSyntheticLambda0 (info.flowersoft.theotown.util.RoadRouteCalculator$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/util/RoadRouteCalculator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/RoadRouteCalculator;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/RoadRouteCalculator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/RoadRouteCalculator$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->$r8$lambda$0IqRYLcHp_gMSASAk2qJoZt11zg(Linfo/flowersoft/theotown/util/RoadRouteCalculator;)V

    return-void
.end method
