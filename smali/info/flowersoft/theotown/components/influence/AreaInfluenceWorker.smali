###### Class info.flowersoft.theotown.components.influence.AreaInfluenceWorker (info.flowersoft.theotown.components.influence.AreaInfluenceWorker)
.class public Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;
.super Linfo/flowersoft/theotown/components/DefaultInfluence;
.source "AreaInfluenceWorker.java"


# instance fields
.field public final endX:I

.field public final endY:I

.field public final startX:I

.field public final startY:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    .line 16
    invoke-direct {p0, p5, p6}, Linfo/flowersoft/theotown/components/DefaultInfluence;-><init>(II)V

    .line 17
    iput p1, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->startX:I

    .line 18
    iput p2, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->startY:I

    .line 19
    iput p3, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->endX:I

    .line 20
    iput p4, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->endY:I

    .line 21
    iput p5, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->width:I

    .line 22
    iput p6, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    return-void
.end method


# virtual methods
.method public applyInfluence(IIII)V
    .registers 16

    .line 38
    invoke-static {p4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRadius(I)I

    move-result v0

    mul-int v1, v0, v0

    if-lez v0, :cond_8a

    if-nez p4, :cond_c

    goto/16 :goto_8a

    :cond_c
    sub-int v2, p1, v0

    .line 43
    iget v3, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->startX:I

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, p2, v0

    .line 44
    iget v5, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->startY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, p1, v0

    .line 45
    iget v5, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->width:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->endX:I

    sub-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v0, p2

    .line 46
    iget v5, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    sub-int/2addr v5, v6

    iget v7, p0, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->endY:I

    sub-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez p4, :cond_48

    goto :goto_49

    :cond_48
    const/4 v6, -0x1

    .line 48
    :goto_49
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    :goto_4d
    if-gt v3, v0, :cond_8a

    sub-int v5, v3, p2

    mul-int/2addr v5, v5

    sub-int v7, v1, v5

    int-to-double v7, v7

    .line 53
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v8, p1, v7

    .line 54
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, p1

    .line 55
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_6d
    if-gt v8, v7, :cond_87

    sub-int v9, v8, p1

    mul-int/2addr v9, v9

    add-int/2addr v9, v5

    if-gt v9, v1, :cond_84

    mul-int/lit8 v10, p4, 0x32

    add-int/lit8 v9, v9, 0x1

    .line 61
    div-int/2addr v10, v9

    const/16 v9, 0x64

    .line 62
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int/2addr v9, v6

    .line 64
    invoke-virtual {p0, v8, v3, p3, v9}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addInfluenceRaw(IIII)V

    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_8a
    :goto_8a
    return-void
.end method

.method public calculateBaseInfluences()V
    .registers 6

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    .line 27
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_1c

    move v4, v2

    :goto_11
    if-ge v4, v0, :cond_19

    .line 31
    invoke-virtual {p0, v4, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addBaseInfluenceFromTile(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    return-void
.end method
