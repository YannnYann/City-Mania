###### Class info.flowersoft.theotown.draft.Composition (info.flowersoft.theotown.draft.Composition)
.class public Linfo/flowersoft/theotown/draft/Composition;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;,
        Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;,
        Linfo/flowersoft/theotown/draft/Composition$CompositeTree;,
        Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;,
        Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;
    }
.end annotation


# instance fields
.field public buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public busStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;",
            ">;"
        }
    .end annotation
.end field

.field public finalized:Z

.field public final height:I

.field public roadDecorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;",
            ">;"
        }
    .end annotation
.end field

.field public roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;",
            ">;"
        }
    .end annotation
.end field

.field public tilesXY:[[I

.field public trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Composition$CompositeTree;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    .line 24
    iput p1, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    .line 25
    iput p2, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Linfo/flowersoft/theotown/draft/Composition;->finalized:Z

    return-void
.end method

.method public static addVector([I[II)V
    .registers 6

    const/4 v0, 0x0

    .line 380
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    aget v1, p0, v0

    aget v2, p1, v0

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static listTiles(IIII)[I
    .registers 11

    mul-int/lit8 v0, p0, 0x2

    mul-int/2addr v0, p1

    .line 429
    new-array v0, v0, [I

    if-lez p0, :cond_5a

    if-gtz p1, :cond_a

    goto :goto_5a

    :cond_a
    neg-int v1, p2

    mul-int/lit16 p2, p2, 0x2710

    add-int/lit8 v2, p0, -0x1

    .line 436
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int/lit16 v3, p3, 0x2710

    add-int/lit8 v4, p1, -0x1

    .line 437
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v2

    :cond_25
    :goto_25
    if-ltz p2, :cond_30

    if-ltz v3, :cond_30

    if-ge p2, p0, :cond_30

    if-ge v3, p1, :cond_30

    sub-int/2addr p2, p3

    sub-int/2addr v3, v1

    goto :goto_25

    :cond_30
    :goto_30
    add-int/2addr p2, p3

    add-int/2addr v3, v1

    if-ltz p2, :cond_43

    if-ltz v3, :cond_43

    if-ge p2, p0, :cond_43

    if-ge v3, p1, :cond_43

    add-int/lit8 v5, v4, 0x1

    .line 446
    aput p2, v0, v4

    add-int/lit8 v4, v4, 0x2

    .line 447
    aput v3, v0, v5

    goto :goto_30

    :cond_43
    add-int/2addr p2, v1

    move v5, v2

    :goto_45
    if-ltz p2, :cond_4d

    if-ltz v3, :cond_4d

    if-ge p2, p0, :cond_4d

    if-lt v3, p1, :cond_56

    :cond_4d
    add-int v6, p0, p1

    if-ge v5, v6, :cond_56

    sub-int/2addr p2, p3

    sub-int/2addr v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_56
    add-int v6, p0, p1

    if-lt v5, v6, :cond_25

    :cond_5a
    :goto_5a
    return-object v0
.end method


# virtual methods
.method public addBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;III)V
    .registers 7

    .line 216
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertNotFinalized()V

    .line 217
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    const/4 v0, 0x0

    .line 219
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    .line 220
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 218
    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    .line 221
    new-instance v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;-><init>()V

    .line 222
    iput-object p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 223
    iput p2, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->x:I

    .line 224
    iput p3, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    .line 225
    iput p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    .line 226
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;III)V
    .registers 6

    .line 274
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertNotFinalized()V

    .line 275
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    .line 276
    new-instance v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;-><init>()V

    .line 277
    iput-object p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 278
    iput p2, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->x:I

    .line 279
    iput p3, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->y:I

    .line 280
    iput p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->level:I

    .line 281
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRoad(Linfo/flowersoft/theotown/draft/RoadDraft;IIIIZII)V
    .registers 11

    .line 229
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertNotFinalized()V

    .line 230
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    .line 231
    invoke-virtual {p0, p4, p5}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    if-eq p2, p4, :cond_16

    if-ne p3, p5, :cond_e

    goto :goto_16

    .line 232
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Road must be axis aligned"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_16
    :goto_16
    invoke-static {p7, p8}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->minSupportedLevel:I

    if-lt v0, v1, :cond_ca

    .line 234
    invoke-static {p7, p8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxSupportedLevel:I

    if-gt v0, v1, :cond_ca

    .line 235
    new-instance v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;-><init>()V

    .line 236
    iput-object p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 237
    iput p2, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    .line 238
    iput p3, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    .line 239
    iput p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    .line 240
    iput p5, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 241
    invoke-static {p4, p5}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    .line 242
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->length:I

    .line 243
    iput-boolean p6, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->join:Z

    .line 244
    iput p7, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    .line 245
    iput p8, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    .line 246
    new-array p3, p1, [I

    iput-object p3, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    .line 247
    new-array p1, p1, [I

    iput-object p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dirs:[I

    sub-int/2addr p8, p7

    const/4 p1, -0x1

    .line 248
    invoke-static {p8, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    .line 249
    :goto_67
    iget p6, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->length:I

    if-ge p5, p6, :cond_a3

    .line 250
    iget-object p7, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    iget p8, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    add-int/lit8 p6, p6, -0x1

    sub-int/2addr p6, p5

    if-ne p3, p1, :cond_76

    move v1, p1

    goto :goto_77

    :cond_76
    move v1, p4

    :goto_77
    add-int/2addr p6, v1

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p6

    mul-int/2addr p6, p3

    sub-int/2addr p8, p6

    aput p8, p7, p5

    .line 251
    iget p6, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    iget p7, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    if-le p6, p7, :cond_90

    iget-object p6, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    aget p8, p6, p5

    invoke-static {p8, p7}, Ljava/lang/Math;->max(II)I

    move-result p7

    aput p7, p6, p5

    .line 252
    :cond_90
    iget p6, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    iget p7, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    if-ge p6, p7, :cond_a0

    iget-object p6, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    aget p8, p6, p5

    invoke-static {p8, p7}, Ljava/lang/Math;->min(II)I

    move-result p7

    aput p7, p6, p5

    :cond_a0
    add-int/lit8 p5, p5, 0x1

    goto :goto_67

    :cond_a3
    move p3, p2

    .line 254
    :goto_a4
    iget p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->length:I

    sub-int/2addr p4, p2

    if-ge p3, p4, :cond_c4

    .line 255
    iget-object p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    aget p5, p4, p3

    add-int/lit8 p6, p3, 0x1

    aget p7, p4, p6

    if-ge p5, p7, :cond_b8

    .line 256
    iget-object p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dirs:[I

    aput p2, p4, p3

    goto :goto_c2

    :cond_b8
    add-int/lit8 p7, p3, -0x1

    .line 257
    aget p4, p4, p7

    if-ge p5, p4, :cond_c2

    .line 258
    iget-object p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dirs:[I

    aput p1, p4, p3

    :cond_c2
    :goto_c2
    move p3, p6

    goto :goto_a4

    .line 261
    :cond_c4
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 234
    :cond_ca
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid road level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;III)V
    .registers 6

    .line 264
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertNotFinalized()V

    .line 265
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    .line 266
    new-instance v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;-><init>()V

    .line 267
    iput-object p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 268
    iput p2, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->x:I

    .line 269
    iput p3, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->y:I

    .line 270
    iput p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->level:I

    .line 271
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTree(Linfo/flowersoft/theotown/draft/TreeDraft;III)V
    .registers 6

    .line 284
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertNotFinalized()V

    .line 285
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/draft/Composition;->assertLocation(II)V

    .line 286
    new-instance v0, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;-><init>()V

    .line 287
    iput-object p1, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 288
    iput p2, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->x:I

    .line 289
    iput p3, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->y:I

    .line 290
    iput p4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->frame:I

    .line 291
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final assertFinalized()V
    .registers 3

    .line 416
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Composition;->finalized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition is not finalized yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final assertLocation(II)V
    .registers 4

    if-ltz p1, :cond_d

    if-ltz p2, :cond_d

    .line 424
    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    if-ge p1, v0, :cond_d

    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    if-ge p2, p1, :cond_d

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Location is out of composition!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final assertNotFinalized()V
    .registers 3

    .line 420
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Composition;->finalized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition is already finalized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collectRequirements()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 386
    :goto_7
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 387
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 388
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_29
    move v2, v1

    .line 391
    :goto_2a
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 392
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 393
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4c
    move v2, v1

    .line 396
    :goto_4d
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 397
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 398
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_6f
    move v2, v1

    .line 401
    :goto_70
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_92

    .line 402
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 403
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 406
    :cond_92
    :goto_92
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b4

    .line 407
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 408
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_b4
    return-object v0
.end method

.method public finish(Z)V
    .registers 11

    const/4 v0, 0x4

    .line 296
    new-array v1, v0, [[I

    iput-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->tilesXY:[[I

    const/4 v1, 0x6

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_25

    .line 298
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->tilesXY:[[I

    iget v5, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    iget v6, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v7

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Linfo/flowersoft/theotown/draft/Composition;->listTiles(IIII)[I

    move-result-object v5

    aput-object v5, v4, v3

    .line 299
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    const/4 v0, 0x1

    if-eqz p1, :cond_49

    .line 303
    :goto_28
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_49

    .line 304
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 305
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_47
    add-int/2addr v2, v0

    goto :goto_28

    .line 311
    :cond_49
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/Composition;->finalized:Z

    return-void
.end method

.method public getBuilding(II)Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 116
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 117
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    .line 118
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 119
    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->x:I

    if-lt p1, v4, :cond_35

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    if-lt p2, v5, :cond_35

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v5

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_35

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v3

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_35

    return-object v2

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBusStop(III)Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;
    .registers 7

    const/4 v0, 0x0

    .line 201
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 202
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    .line 203
    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->x:I

    if-ne p1, v2, :cond_1e

    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->y:I

    if-ne p2, v2, :cond_1e

    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->level:I

    if-ne p3, v2, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeight(I)I
    .registers 3

    if-eqz p1, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_9

    .line 41
    :cond_6
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    return p1

    .line 39
    :cond_9
    :goto_9
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    return p1
.end method

.method public getInfluenceInduceVector()[I
    .registers 7

    .line 351
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertFinalized()V

    .line 352
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 355
    :goto_c
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 356
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    .line 357
    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    invoke-virtual {v4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v4

    invoke-static {v1, v5, v4}, Linfo/flowersoft/theotown/draft/Composition;->addVector([I[II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2a
    move v3, v2

    .line 360
    :goto_2b
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_46

    .line 361
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->influenceInduceVector:[I

    invoke-static {v1, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->addVector([I[II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_46
    move v3, v2

    .line 364
    :goto_47
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 365
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/TreeDraft;->influenceInduceVector:[I

    invoke-static {v1, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->addVector([I[II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_61
    move v3, v2

    .line 368
    :goto_62
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    .line 369
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/BusStopDraft;->influenceInduceVector:[I

    invoke-static {v1, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->addVector([I[II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 373
    :cond_7c
    iget v3, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    iget v4, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    mul-int/2addr v3, v4

    :goto_81
    if-ge v2, v0, :cond_8d

    .line 374
    aget v4, v1, v2

    add-int/2addr v4, v3

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :cond_8d
    return-object v1
.end method

.method public getMaxRoadLevel(II)I
    .registers 7

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 181
    :goto_3
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 182
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 183
    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 184
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->getIndex(II)I

    move-result v2

    aget v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_28
    return v0
.end method

.method public getMinRoadLevel(II)I
    .registers 7

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 170
    :goto_4
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 171
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 172
    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 173
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->getIndex(II)I

    move-result v2

    aget v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_29
    return v0
.end method

.method public getMonthlyPrice()I
    .registers 7

    .line 336
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertFinalized()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 338
    :goto_6
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    int-to-long v2, v2

    .line 339
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    move v1, v0

    .line 341
    :goto_21
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 342
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 344
    :cond_39
    :goto_39
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 345
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BusStopDraft;->monthlyPrice:I

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_51
    return v2
.end method

.method public getPrice()I
    .registers 7

    .line 315
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Composition;->assertFinalized()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 317
    :goto_6
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    int-to-long v2, v2

    .line 318
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Composition;->buildings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    move v1, v0

    .line 320
    :goto_21
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 321
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_39
    move v1, v0

    .line 323
    :goto_3a
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_52

    .line 324
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_52
    move v1, v0

    .line 326
    :goto_53
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6b

    .line 327
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Composition;->busStops:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/BusStopDraft;->price:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 329
    :cond_6b
    :goto_6b
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 330
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/TreeDraft;->price:I

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_83
    return v2
.end method

.method public getRoad(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 149
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 150
    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->levels:[I

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->getIndex(II)I

    move-result v4

    aget v3, v3, v4

    if-ne v3, p3, :cond_2f

    if-eqz v0, :cond_2e

    .line 151
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/draft/RoadDraft;->canReplace(Linfo/flowersoft/theotown/draft/RoadDraft;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2e
    move-object v0, v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    return-object v0
.end method

.method public getRoadAlignment(III)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 67
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c7

    .line 68
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 69
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->length:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_c3

    .line 70
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    if-ne v3, p1, :cond_6e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    if-ne v3, p1, :cond_6e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p2, v3, :cond_6e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p2, v3, :cond_6e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p3, v3, :cond_6e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p3, v3, :cond_6e

    .line 71
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    if-ne p2, v3, :cond_54

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    if-ne p3, v4, :cond_54

    .line 72
    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    :goto_51
    or-int/2addr v1, v2

    goto/16 :goto_c3

    .line 73
    :cond_54
    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    if-ne p2, v4, :cond_63

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    if-ne p3, v5, :cond_63

    .line 74
    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v2

    goto :goto_51

    :cond_63
    if-eq p2, v3, :cond_c3

    if-eq p2, v4, :cond_c3

    .line 76
    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v2

    goto :goto_51

    .line 78
    :cond_6e
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    if-ne v3, p2, :cond_c3

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    if-ne v3, p2, :cond_c3

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p1, v3, :cond_c3

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p1, v3, :cond_c3

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p3, v3, :cond_c3

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p3, v3, :cond_c3

    .line 79
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    if-ne p1, v3, :cond_a9

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    if-ne p3, v4, :cond_a9

    .line 80
    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    goto :goto_51

    .line 81
    :cond_a9
    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    if-ne p1, v4, :cond_b8

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    if-ne p3, v5, :cond_b8

    .line 82
    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v2

    goto :goto_51

    :cond_b8
    if-eq p1, v3, :cond_c3

    if-eq p1, v4, :cond_c3

    .line 84
    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v2

    goto :goto_51

    :cond_c3
    :goto_c3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_c7
    return v1
.end method

.method public getRoadDecoration(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;
    .registers 7

    const/4 v0, 0x0

    .line 191
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 192
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->roadDecorations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    .line 193
    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->x:I

    if-ne p1, v2, :cond_1e

    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->y:I

    if-ne p2, v2, :cond_1e

    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->level:I

    if-ne p3, v2, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRoadDirectionIndex(III)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 95
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 96
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->length:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_a4

    .line 97
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    if-ne v3, p1, :cond_5e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    if-ne v3, p1, :cond_5e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p2, v3, :cond_5e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p2, v3, :cond_5e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p3, v3, :cond_5e

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p3, v3, :cond_5e

    .line 98
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    if-ne p2, v3, :cond_4f

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    if-eq p3, v4, :cond_5b

    :cond_4f
    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    if-ne p2, v4, :cond_57

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    if-eq p3, v5, :cond_5b

    :cond_57
    if-eq p2, v3, :cond_a4

    if-eq p2, v4, :cond_a4

    .line 99
    :cond_5b
    iget v1, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    goto :goto_a4

    .line 101
    :cond_5e
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    if-ne v3, p2, :cond_a4

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    if-ne v3, p2, :cond_a4

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p1, v3, :cond_a4

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p1, v3, :cond_a4

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt p3, v3, :cond_a4

    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt p3, v3, :cond_a4

    .line 102
    iget v3, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    if-ne p1, v3, :cond_96

    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l0:I

    if-eq p3, v4, :cond_a2

    :cond_96
    iget v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    if-ne p1, v4, :cond_9e

    iget v5, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->l1:I

    if-eq p3, v5, :cond_a2

    :cond_9e
    if-eq p1, v3, :cond_a4

    if-eq p1, v4, :cond_a4

    .line 103
    :cond_a2
    iget v1, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    :cond_a4
    :goto_a4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 108
    :cond_a8
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result p1

    return p1
.end method

.method public getRoadUpDir(III)I
    .registers 5

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/draft/Composition;->getRoad(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 162
    iget-object v0, p3, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dirs:[I

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->getIndex(II)I

    move-result p1

    aget p1, v0, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public getTree(II)Linfo/flowersoft/theotown/draft/Composition$CompositeTree;
    .registers 6

    const/4 v0, 0x0

    .line 127
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 128
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/Composition;->trees:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    .line 129
    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->x:I

    if-ne p1, v2, :cond_1a

    iget v2, v1, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->y:I

    if-ne p2, v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidth(I)I
    .registers 3

    if-eqz p1, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_9

    .line 33
    :cond_6
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    return p1

    .line 31
    :cond_9
    :goto_9
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    return p1
.end method

.method public hasRoad(II)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 138
    iget-object v2, p0, Linfo/flowersoft/theotown/draft/Composition;->roads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    .line 139
    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public listXY(I)[I
    .registers 3

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Composition;->tilesXY:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toVisualX(III)I
    .registers 6

    if-eqz p3, :cond_17

    const/4 v0, 0x1

    if-eq p3, v0, :cond_16

    const/4 v1, 0x2

    if-eq p3, v1, :cond_12

    const/4 p1, 0x3

    if-eq p3, p1, :cond_d

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_d
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    return p1

    .line 49
    :cond_12
    iget p2, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    :cond_16
    return p2

    :cond_17
    return p1
.end method

.method public toVisualY(III)I
    .registers 6

    if-eqz p3, :cond_16

    const/4 v0, 0x1

    if-eq p3, v0, :cond_12

    const/4 v1, 0x2

    if-eq p3, v1, :cond_d

    const/4 p2, 0x3

    if-eq p3, p2, :cond_c

    const/4 p1, 0x0

    :cond_c
    return p1

    .line 59
    :cond_d
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition;->height:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    return p1

    .line 58
    :cond_12
    iget p2, p0, Linfo/flowersoft/theotown/draft/Composition;->width:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    :cond_16
    return p2
.end method

###### Class info.flowersoft.theotown.draft.Composition.CompositeBuilding (info.flowersoft.theotown.draft.Composition$CompositeBuilding)
.class public Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeBuilding"
.end annotation


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public frame:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.Composition.CompositeBusStop (info.flowersoft.theotown.draft.Composition$CompositeBusStop)
.class public Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeBusStop"
.end annotation


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

.field public level:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.Composition.CompositeRoad (info.flowersoft.theotown.draft.Composition$CompositeRoad)
.class public Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeRoad"
.end annotation


# instance fields
.field public dir:I

.field public dirs:[I

.field public draft:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public join:Z

.field public l0:I

.field public l1:I

.field public length:I

.field public levels:[I

.field public x0:I

.field public x1:I

.field public y0:I

.field public y1:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 5

    .line 495
    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    if-ne v0, p1, :cond_1c

    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    if-ne v0, p1, :cond_1c

    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    iget v1, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p2, v0, :cond_1c

    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    iget v1, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_38

    :cond_1c
    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    if-ne v0, p2, :cond_3a

    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y1:I

    if-ne v0, p2, :cond_3a

    iget p2, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    .line 496
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lt p1, p2, :cond_3a

    iget p2, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x1:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p1, p2, :cond_3a

    :cond_38
    const/4 p1, 0x1

    return p1

    :cond_3a
    const/4 p1, 0x0

    return p1
.end method

.method public getAlign()I
    .registers 2

    .line 500
    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getIndex(II)I
    .registers 4

    .line 487
    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->x0:I

    sub-int/2addr p1, v0

    .line 488
    iget v0, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->y0:I

    sub-int/2addr p2, v0

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    if-eqz p1, :cond_16

    .line 490
    iget p2, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p2

    mul-int/2addr p1, p2

    return p1

    :cond_16
    if-eqz p2, :cond_20

    .line 491
    iget p1, p0, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p1

    mul-int/2addr p2, p1

    return p2

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.draft.Composition.CompositeRoadDecoration (info.flowersoft.theotown.draft.Composition$CompositeRoadDecoration)
.class public Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeRoadDecoration"
.end annotation


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

.field public level:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.Composition.CompositeTree (info.flowersoft.theotown.draft.Composition$CompositeTree)
.class public Linfo/flowersoft/theotown/draft/Composition$CompositeTree;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeTree"
.end annotation


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/TreeDraft;

.field public frame:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
