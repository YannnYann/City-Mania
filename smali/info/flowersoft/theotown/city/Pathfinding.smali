###### Class info.flowersoft.theotown.city.Pathfinding (info.flowersoft.theotown.city.Pathfinding)
.class public final Linfo/flowersoft/theotown/city/Pathfinding;
.super Ljava/lang/Object;
.source "Pathfinding.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public doneCalculations:I

.field public failedCalculations:I

.field public final freeParcels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Linfo/flowersoft/theotown/city/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field public final heigth:I

.field public final levelStride:I

.field public final markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

.field public result:Linfo/flowersoft/theotown/city/objects/Way;

.field public roadFlags:J

.field public final shortcut:Z

.field public final targetBB:[I

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public trafficFactor:F

.field public final width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->freeParcels:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/high16 v0, 0x40800000    # 4.0f

    .line 60
    iput v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->trafficFactor:F

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->city:Linfo/flowersoft/theotown/city/City;

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    .line 67
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/Pathfinding;->resetTargetBB()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->shortcut:Z

    .line 71
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->width:I

    .line 72
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->heigth:I

    mul-int/2addr v0, p1

    .line 73
    iput v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->levelStride:I

    return-void
.end method

.method public static getDifX(I)I
    .registers 2

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static getDifY(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addStart(Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 6

    const/4 v0, 0x0

    .line 106
    :goto_1
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapArea;->countParcels()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 107
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelX(I)I

    move-result v1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelY(I)I

    move-result v2

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelLevel(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/city/Pathfinding;->addStartParcel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public addStartParcel(III)V
    .registers 13

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->city:Linfo/flowersoft/theotown/city/City;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_36

    if-ltz p1, :cond_36

    if-ltz p2, :cond_36

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v1, v2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v7, :cond_36

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 94
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/city/Pathfinding;->addToQueue(IIILinfo/flowersoft/theotown/city/objects/Road;I)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 95
    invoke-virtual {p0, v1, v2, v6}, Linfo/flowersoft/theotown/city/Pathfinding;->getMarkerIndex(III)I

    move-result p1

    .line 96
    rem-int/lit8 p2, v4, 0x2

    rem-int/lit8 p3, v5, 0x2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    const/4 p3, 0x3

    mul-int/2addr p2, p3

    shl-int p2, p3, p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->orMarker(II)V

    return-void

    :cond_36
    move-object v3, p0

    :cond_37
    return-void
.end method

.method public addTarget(III)V
    .registers 8

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 115
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/city/Pathfinding;->roadFlags:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v1, p2, 0x2

    .line 116
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/Pathfinding;->registerToTargetBB(II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 117
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/Pathfinding;->registerToTargetBB(II)V

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Pathfinding;->getMarkerIndex(III)I

    move-result p1

    const/16 p2, 0x1000

    .line 119
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->orMarker(II)V

    :cond_34
    return-void
.end method

.method public addTarget(Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 6

    const/4 v0, 0x0

    .line 150
    :goto_1
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapArea;->countParcels()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 151
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelX(I)I

    move-result v1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelY(I)I

    move-result v2

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/MapArea;->getParcelLevel(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/city/Pathfinding;->addTargetParcel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public addTarget(Linfo/flowersoft/theotown/city/objects/Building;I)V
    .registers 6

    .line 139
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_27

    .line 140
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(III)V

    .line 141
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 143
    :cond_27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    :goto_2b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4e

    .line 144
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(III)V

    .line 145
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4e
    return-void
.end method

.method public addTargetParcel(III)V
    .registers 7

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->city:Linfo/flowersoft/theotown/city/City;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_24

    if-ltz p1, :cond_24

    if-ltz p2, :cond_24

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v1, v2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 127
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->registerToTargetBB(II)V

    .line 128
    invoke-virtual {p0, v1, v2, p3}, Linfo/flowersoft/theotown/city/Pathfinding;->getMarkerIndex(III)I

    move-result p1

    const/16 p2, 0x1000

    .line 129
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->orMarker(II)V

    :cond_24
    return-void
.end method

.method public final addToQueue(IIILinfo/flowersoft/theotown/city/objects/Road;I)Z
    .registers 12

    .line 156
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/city/Pathfinding;->roadFlags:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    aget v2, v0, v1

    sub-int/2addr v2, p1

    const/4 v3, 0x2

    aget v0, v0, v3

    sub-int v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    iget-object v2, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    sub-int/2addr v4, p2

    const/4 v5, 0x3

    aget v2, v2, v5

    sub-int v2, p2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 161
    iget v1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->trafficFactor:F

    iget v2, p4, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object p4, p4, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget p4, p4, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x40800000    # 4.0f

    .line 162
    invoke-static {p4, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p4

    div-float/2addr v0, p4

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr v0, p4

    mul-int/lit8 p4, p5, 0x14

    int-to-float p4, p4

    add-float/2addr v0, p4

    float-to-int p4, v0

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->freeParcels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Linfo/flowersoft/theotown/city/Parcel;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/Parcel;-><init>()V

    goto :goto_6f

    :cond_62
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->freeParcels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    .line 166
    :goto_6f
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/city/Parcel;->xy:I

    .line 167
    iput p4, v0, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    .line 168
    iput p5, v0, Linfo/flowersoft/theotown/city/Parcel;->length:I

    .line 169
    iput p3, v0, Linfo/flowersoft/theotown/city/Parcel;->level:I

    .line 171
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return v3

    :cond_81
    return v1
.end method

.method public calculate(I)V
    .registers 27

    move-object/from16 v0, p0

    const/4 v6, 0x0

    .line 186
    iput-object v6, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    .line 187
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    .line 190
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v9, 0x0

    aget v1, v1, v9

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_18

    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->clear()V

    :cond_18
    const/4 v11, 0x1

    .line 192
    :goto_19
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    and-int/lit16 v1, v11, 0xff

    if-nez v1, :cond_3d

    .line 194
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    long-to-int v1, v1

    move/from16 v12, p1

    if-ge v1, v12, :cond_39

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_39
    const/16 v16, 0x1

    goto/16 :goto_217

    :cond_3d
    move/from16 v12, p1

    .line 200
    :cond_3f
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->poll()Linfo/flowersoft/theotown/city/Parcel;

    move-result-object v1

    .line 201
    iget-object v2, v0, Linfo/flowersoft/theotown/city/Pathfinding;->freeParcels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget v2, v1, Linfo/flowersoft/theotown/city/Parcel;->xy:I

    .line 204
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v13

    .line 205
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v14

    .line 206
    rem-int/lit8 v2, v13, 0x2

    rem-int/lit8 v3, v14, 0x2

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    .line 207
    div-int/lit8 v15, v13, 0x2

    .line 208
    div-int/lit8 v5, v14, 0x2

    const/16 v16, 0x1

    .line 209
    iget v10, v1, Linfo/flowersoft/theotown/city/Parcel;->level:I

    .line 210
    iget-object v6, v0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v15, v5, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v6

    move/from16 v18, v4

    .line 211
    invoke-virtual {v0, v15, v5, v10}, Linfo/flowersoft/theotown/city/Pathfinding;->getMarkerIndex(III)I

    move-result v4

    move-wide/from16 v19, v7

    .line 212
    iget-object v7, v0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v7, v4, v9}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v4

    .line 213
    iget v1, v1, Linfo/flowersoft/theotown/city/Parcel;->length:I

    if-eqz v6, :cond_20f

    and-int/lit16 v7, v4, 0x1000

    const/16 v21, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v7, :cond_126

    .line 217
    new-instance v2, Linfo/flowersoft/theotown/city/objects/Way;

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(I)V

    iput-object v2, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    mul-int/lit8 v2, v18, 0x3

    shr-int v2, v4, v2

    and-int/lit8 v2, v2, 0x7

    .line 222
    iget-object v3, v0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v15, v5, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    :goto_9a
    if-eq v2, v8, :cond_11d

    if-nez v2, :cond_a3

    const/4 v6, 0x0

    .line 226
    iput-object v6, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    goto/16 :goto_11d

    :cond_a3
    and-int/lit8 v2, v2, 0x3

    .line 230
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Pathfinding;->getDifX(I)I

    move-result v6

    sub-int/2addr v13, v6

    .line 231
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Pathfinding;->getDifY(I)I

    move-result v6

    sub-int/2addr v14, v6

    .line 235
    div-int/lit8 v6, v13, 0x2

    .line 236
    div-int/lit8 v7, v14, 0x2

    if-ne v6, v15, :cond_b7

    if-eq v7, v5, :cond_f8

    :cond_b7
    if-eqz v3, :cond_c7

    .line 241
    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v4

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v4

    if-ne v3, v4, :cond_c7

    add-int/lit8 v10, v10, 0x1

    .line 245
    :cond_c7
    iget-object v3, v0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v6, v7, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 246
    iget v4, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v4, :cond_ed

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v5

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v5

    if-eq v4, v5, :cond_ed

    :cond_dd
    add-int/lit8 v10, v10, -0x1

    .line 248
    iget-object v3, v0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v6, v7, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_eb

    .line 249
    iget v4, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v4, :cond_ed

    :cond_eb
    const/4 v7, 0x0

    goto :goto_11b

    .line 255
    :cond_ed
    invoke-virtual {v0, v6, v7, v10}, Linfo/flowersoft/theotown/city/Pathfinding;->getMarkerIndex(III)I

    move-result v4

    .line 256
    iget-object v5, v0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v11, 0x0

    invoke-virtual {v5, v4, v11}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v4

    .line 259
    :cond_f8
    iget-object v5, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v5

    if-ge v5, v1, :cond_117

    .line 260
    iget-object v5, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v2

    invoke-virtual {v5, v2}, Linfo/flowersoft/theotown/city/objects/Way;->addDir(I)V

    .line 266
    rem-int/lit8 v2, v13, 0x2

    rem-int/lit8 v5, v14, 0x2

    mul-int/2addr v5, v9

    add-int/2addr v2, v5

    mul-int/2addr v2, v8

    shr-int v2, v4, v2

    and-int/lit8 v2, v2, 0x7

    move v15, v6

    move v5, v7

    goto :goto_9a

    :cond_117
    const/4 v7, 0x0

    .line 262
    iput-object v7, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    goto :goto_11d

    .line 250
    :goto_11b
    iput-object v7, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    .line 269
    :cond_11d
    :goto_11d
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v1, :cond_217

    .line 270
    invoke-virtual {v1, v13, v14, v10}, Linfo/flowersoft/theotown/city/objects/Way;->setStart(III)V

    goto/16 :goto_217

    :cond_126
    const/4 v7, 0x0

    .line 274
    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/objects/Road;->getDirs(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    :goto_12e
    const/4 v4, 0x4

    if-ge v3, v4, :cond_20f

    shl-int v4, v16, v3

    .line 278
    invoke-static {v4, v2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-eqz v4, :cond_1f9

    .line 279
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Pathfinding;->getDifX(I)I

    move-result v4

    add-int/2addr v4, v13

    .line 280
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Pathfinding;->getDifY(I)I

    move-result v17

    add-int v17, v14, v17

    if-ltz v4, :cond_1f9

    if-ltz v17, :cond_1f9

    .line 281
    div-int/lit8 v7, v4, 0x2

    move/from16 v22, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/city/Pathfinding;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_1f1

    div-int/lit8 v8, v17, 0x2

    move/from16 v23, v9

    iget-object v9, v0, Linfo/flowersoft/theotown/city/Pathfinding;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_1e9

    if-ne v7, v15, :cond_168

    if-eq v8, v5, :cond_165

    goto :goto_168

    :cond_165
    move/from16 v24, v1

    goto :goto_190

    .line 287
    :cond_168
    :goto_168
    iget v9, v6, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    move/from16 v24, v1

    if-eqz v9, :cond_177

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v1

    if-ne v9, v1, :cond_177

    add-int/lit8 v1, v10, 0x1

    goto :goto_191

    .line 291
    :cond_177
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v1, v7, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_190

    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    .line 292
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v9

    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v9

    if-ne v1, v9, :cond_190

    add-int/lit8 v1, v10, -0x1

    goto :goto_191

    :cond_190
    :goto_190
    move v1, v10

    .line 298
    :goto_191
    iget-object v9, v0, Linfo/flowersoft/theotown/city/Pathfinding;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v7, v8, v1}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v9

    if-eqz v9, :cond_1e0

    .line 299
    invoke-virtual {v0, v7, v8, v1}, Linfo/flowersoft/theotown/city/Pathfinding;->getMarkerIndex(III)I

    move-result v7

    .line 300
    rem-int/lit8 v8, v4, 0x2

    rem-int/lit8 v9, v17, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 301
    iget-object v9, v0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v0, 0x0

    invoke-virtual {v9, v7, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v9

    mul-int/lit8 v8, v8, 0x3

    shr-int v0, v9, v8

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_1de

    move v0, v3

    move v3, v1

    move v1, v4

    move-object v4, v6

    move v6, v5

    move/from16 v5, v24

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v17, v2

    move v2, v0

    move-object/from16 v0, p0

    .line 303
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/Pathfinding;->addToQueue(IIILinfo/flowersoft/theotown/city/objects/Road;I)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 304
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    or-int/lit8 v2, v24, 0x4

    shl-int/2addr v2, v8

    shl-int v3, v21, v8

    not-int v3, v3

    and-int/lit16 v3, v3, 0xfff

    const v8, 0xf000

    or-int/2addr v3, v8

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_201

    :cond_1de
    move-object/from16 v0, p0

    :cond_1e0
    move/from16 v17, v2

    move-object v4, v6

    move v6, v5

    move/from16 v5, v24

    move/from16 v24, v3

    goto :goto_201

    :cond_1e9
    move/from16 v17, v2

    move/from16 v24, v3

    move-object v4, v6

    :goto_1ee
    move v6, v5

    move v5, v1

    goto :goto_201

    :cond_1f1
    move/from16 v17, v2

    move/from16 v24, v3

    move-object v4, v6

    :goto_1f6
    move/from16 v23, v9

    goto :goto_1ee

    :cond_1f9
    move/from16 v17, v2

    move/from16 v24, v3

    move-object v4, v6

    move/from16 v22, v8

    goto :goto_1f6

    :cond_201
    :goto_201
    add-int/lit8 v3, v24, 0x1

    move v1, v5

    move v5, v6

    move/from16 v2, v17

    move/from16 v8, v22

    move/from16 v9, v23

    const/4 v7, 0x0

    move-object v6, v4

    goto/16 :goto_12e

    :cond_20f
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v19

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_19

    .line 318
    :cond_217
    :goto_217
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22b

    .line 319
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->freeParcels:Ljava/util/ArrayList;

    iget-object v2, v0, Linfo/flowersoft/theotown/city/Pathfinding;->queue:Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->poll()Linfo/flowersoft/theotown/city/Parcel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_217

    .line 330
    :cond_22b
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v1, :cond_23b

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v1

    if-nez v1, :cond_23b

    .line 331
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Linfo/flowersoft/theotown/city/objects/Way;->addDir(I)V

    .line 334
    :cond_23b
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 336
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Pathfinding;->resetTargetBB()V

    .line 338
    iget v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->doneCalculations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->doneCalculations:I

    .line 339
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Pathfinding;->hasResult()Z

    move-result v1

    if-nez v1, :cond_255

    .line 340
    iget v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->failedCalculations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Linfo/flowersoft/theotown/city/Pathfinding;->failedCalculations:I

    :cond_255
    return-void
.end method

.method public getDoneCalculations()I
    .registers 2

    .line 349
    iget v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->doneCalculations:I

    return v0
.end method

.method public getFailedCalculations()I
    .registers 2

    .line 345
    iget v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->failedCalculations:I

    return v0
.end method

.method public final getMarkerIndex(III)I
    .registers 5

    .line 135
    iget v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->width:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    iget p2, p0, Linfo/flowersoft/theotown/city/Pathfinding;->levelStride:I

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    return p1
.end method

.method public getResult()Linfo/flowersoft/theotown/city/objects/Way;
    .registers 2

    .line 361
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    return-object v0
.end method

.method public hasResult()Z
    .registers 2

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->result:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcut()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->shortcut:Z

    return v0
.end method

.method public final orMarker(II)V
    .registers 5

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->markerMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v1

    or-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    return-void
.end method

.method public final registerToTargetBB(II)V
    .registers 6

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, v0, v1

    .line 88
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v0, 0x3

    aget v1, p1, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p1, v0

    return-void
.end method

.method public final resetTargetBB()V
    .registers 5

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Pathfinding;->targetBB:[I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 79
    aput v2, v0, v3

    const/4 v2, 0x2

    .line 80
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 81
    aput v1, v0, v2

    return-void
.end method

.method public setRoadFlags(J)V
    .registers 3

    .line 178
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->roadFlags:J

    return-void
.end method

.method public setTrafficFactor(F)V
    .registers 2

    .line 182
    iput p1, p0, Linfo/flowersoft/theotown/city/Pathfinding;->trafficFactor:F

    return-void
.end method
