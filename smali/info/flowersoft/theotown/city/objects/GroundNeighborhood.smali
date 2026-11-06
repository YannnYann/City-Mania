###### Class info.flowersoft.theotown.city.objects.GroundNeighborhood (info.flowersoft.theotown.city.objects.GroundNeighborhood)
.class public Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;
.super Ljava/lang/Object;
.source "GroundNeighborhood.java"


# instance fields
.field public centerGround:Linfo/flowersoft/theotown/city/objects/Ground;

.field public final grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

.field public maxWeight:F

.field public size:I

.field public final weights:[F


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, p1, [Linfo/flowersoft/theotown/city/objects/Ground;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    .line 20
    new-array p1, p1, [F

    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->weights:[F

    return-void
.end method


# virtual methods
.method public addGround(Linfo/flowersoft/theotown/city/objects/Ground;F)V
    .registers 6

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    .line 65
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->centerGround:Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v1

    if-eq v0, v1, :cond_4d

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->blending:Z

    if-nez v0, :cond_11

    goto :goto_4d

    :cond_11
    const/4 v0, 0x0

    .line 67
    :goto_12
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->size:I

    if-ge v0, v1, :cond_37

    .line 68
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v2

    if-ne v1, v2, :cond_34

    .line 69
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->weights:[F

    aget v1, p1, v0

    add-float/2addr v1, p2

    aput v1, p1, v0

    .line 70
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->maxWeight:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->maxWeight:F

    return-void

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 75
    :cond_37
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->weights:[F

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p2, v1

    .line 76
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->size:I

    aput-object p1, p2, v1

    .line 77
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->maxWeight:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->maxWeight:F

    :cond_4d
    :goto_4d
    return-void
.end method

.method public getGround(I)Linfo/flowersoft/theotown/city/objects/Ground;
    .registers 3

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->grounds:[Linfo/flowersoft/theotown/city/objects/Ground;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMaxWeight()F
    .registers 2

    .line 48
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->maxWeight:F

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 27
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->size:I

    return v0
.end method

.method public getWeight(I)F
    .registers 3

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->weights:[F

    aget p1, v0, p1

    return p1
.end method

.method public reset(Linfo/flowersoft/theotown/city/objects/Ground;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->size:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->maxWeight:F

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->centerGround:Linfo/flowersoft/theotown/city/objects/Ground;

    return-void
.end method
