###### Class info.flowersoft.theotown.util.ManagedRoadRoute (info.flowersoft.theotown.util.ManagedRoadRoute)
.class public Linfo/flowersoft/theotown/util/ManagedRoadRoute;
.super Ljava/lang/Object;
.source "ManagedRoadRoute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;
    }
.end annotation


# instance fields
.field public final calculatedAlignments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            ">;"
        }
    .end annotation
.end field

.field public final calculatedWays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Way;",
            ">;"
        }
    .end annotation
.end field

.field public final calculatedXYSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/utils/IntSet;",
            ">;"
        }
    .end annotation
.end field

.field public pendingArea:Linfo/flowersoft/theotown/city/MapArea;

.field public pendingCallback:Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;

.field public final roadFlags:J

.field public final routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

.field public final stations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/MapArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;J)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    .line 36
    iput-wide p2, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->roadFlags:J

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/util/ManagedRoadRoute;Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntSet;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->getXYSetFromAlignment(Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addCalculatedStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 5

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->ensureNotBusy()V

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_24

    .line 53
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->getXYSetFromAlignment(Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public addStation(Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 3

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->ensureNotBusy()V

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->clear()V

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(II)Z
    .registers 5

    .line 153
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    .line 155
    :goto_6
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 156
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntSet;

    if-nez v1, :cond_19

    goto :goto_21

    .line 159
    :cond_19
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    return p2
.end method

.method public final ensureNotBusy()V
    .registers 3

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ManagedRoadRoute is busy rn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlignmentOrDefault(IIII)I
    .registers 6

    .line 166
    invoke-static {p3, p1, p2}, Linfo/flowersoft/theotown/util/PackedInt3;->pack(III)I

    move-result p1

    const/4 p2, 0x0

    .line 168
    :goto_5
    iget-object p3, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_23

    .line 169
    iget-object p3, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez p3, :cond_18

    goto :goto_20

    :cond_18
    const/4 v0, -0x1

    .line 172
    invoke-virtual {p3, p1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p3

    if-ltz p3, :cond_20

    return p3

    :cond_20
    :goto_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_23
    return p4
.end method

.method public final getXYSetFromAlignment(Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntSet;
    .registers 5

    .line 60
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntIntMap;->keys()Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 62
    :goto_9
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    if-eqz v1, :cond_21

    .line 63
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->next()I

    move-result v1

    .line 64
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackX(I)I

    move-result v2

    .line 65
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt3;->unpackY(I)I

    move-result v1

    .line 66
    invoke-static {v2, v1}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method public isBusy()Z
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->hasPendingCalculation()Z

    move-result v0

    return v0
.end method

.method public removeLastStation()V
    .registers 3

    .line 72
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->ensureNotBusy()V

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedAlignments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedXYSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public stationCount()I
    .registers 2

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public tryAddStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;)V
    .registers 6

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->ensureNotBusy()V

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 102
    invoke-interface {p2, p1, v0, v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;->onSuccess(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-void

    .line 106
    :cond_10
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingArea:Linfo/flowersoft/theotown/city/MapArea;

    .line 107
    iput-object p2, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingCallback:Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;

    .line 108
    iget-object p2, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/MapArea;

    iget-wide v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->roadFlags:J

    invoke-virtual {p2, v0, p1, v1, v2}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->add(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;J)V

    return-void
.end method

.method public update()V
    .registers 5

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->hasWorkDone()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->consumeResult()Linfo/flowersoft/theotown/city/objects/Way;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 123
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingCallback:Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingArea:Linfo/flowersoft/theotown/city/MapArea;

    iget-object v3, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->buildWayAlignmentMap(Linfo/flowersoft/theotown/city/objects/Way;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;->onSuccess(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V

    goto :goto_25

    .line 125
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingCallback:Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingArea:Linfo/flowersoft/theotown/city/MapArea;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;->onFailed(Linfo/flowersoft/theotown/city/MapArea;)V

    :goto_25
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingArea:Linfo/flowersoft/theotown/city/MapArea;

    .line 129
    iput-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->pendingCallback:Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;

    .line 131
    :cond_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->routeCalculator:Linfo/flowersoft/theotown/util/RoadRouteCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RoadRouteCalculator;->hasPendingCalculation()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_5b

    .line 133
    :cond_33
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5b

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stations:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->calculatedWays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/MapArea;

    new-instance v1, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;-><init>(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)V

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->tryAddStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;)V

    :cond_5b
    :goto_5b
    return-void
.end method

###### Class info.flowersoft.theotown.util.ManagedRoadRoute.AnonymousClass1 (info.flowersoft.theotown.util.ManagedRoadRoute$1)
.class Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;
.super Ljava/lang/Object;
.source "ManagedRoadRoute.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/ManagedRoadRoute;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 3

    .line 144
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$000(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$100(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$300(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 4

    .line 137
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$000(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$100(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$300(Linfo/flowersoft/theotown/util/ManagedRoadRoute;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/util/ManagedRoadRoute$1;->this$0:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-static {p2, p3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->access$200(Linfo/flowersoft/theotown/util/ManagedRoadRoute;Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback (info.flowersoft.theotown.util.ManagedRoadRoute$IRouteCallback)
.class public interface abstract Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;
.super Ljava/lang/Object;
.source "ManagedRoadRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ManagedRoadRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRouteCallback"
.end annotation


# virtual methods
.method public abstract onFailed(Linfo/flowersoft/theotown/city/MapArea;)V
.end method

.method public abstract onSuccess(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V
.end method
