###### Class info.flowersoft.theotown.city.BuildingSampler (info.flowersoft.theotown.city.BuildingSampler)
.class public Linfo/flowersoft/theotown/city/BuildingSampler;
.super Ljava/lang/Object;
.source "BuildingSampler.java"


# instance fields
.field public final buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;>;"
        }
    .end annotation
.end field

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public favorNear:Z

.field public maxRadius:I

.field public final minRadius:I

.field public final rnd:Ljava/util/Random;

.field public final selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;III)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/city/BuildingSampler;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IIII)V
    .registers 9

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    .line 29
    new-instance v1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    .line 38
    iput-object p1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->city:Linfo/flowersoft/theotown/city/City;

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 41
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/BuildingList;->getSorted()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iput p2, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->minRadius:I

    .line 43
    iput p3, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    .line 44
    iput p4, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    .line 45
    iput p5, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    .line 46
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->rnd:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public addBuildings(Linfo/flowersoft/theotown/util/SortedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearBuildings()V
    .registers 2

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getMaxRadius()I
    .registers 2

    .line 63
    iget v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 71
    iget v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 79
    iget v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    return v0
.end method

.method public isFavorNear()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->favorNear:Z

    return v0
.end method

.method public sample()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 12

    .line 95
    iget v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->minRadius:I

    mul-int/2addr v0, v0

    .line 96
    iget v1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    mul-int/2addr v1, v1

    const/4 v2, 0x0

    .line 97
    :goto_7
    iget-object v3, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7a

    .line 98
    iget-object v3, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/SortedList;

    .line 99
    iget v4, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    iget v5, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result v4

    .line 100
    iget v5, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    iget v6, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result v5

    sub-int v6, v5, v4

    const/16 v7, 0x200

    if-le v6, v7, :cond_3a

    add-int/lit16 v6, v6, 0x1ff

    .line 105
    div-int/2addr v6, v7

    .line 106
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x1

    :goto_3b
    if-ge v4, v5, :cond_77

    .line 110
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v7, :cond_77

    .line 111
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v8

    iget v9, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    sub-int/2addr v8, v9

    iget v9, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    if-le v8, v9, :cond_51

    goto :goto_77

    .line 113
    :cond_51
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v8

    iget v9, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    sub-int/2addr v8, v9

    .line 114
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    iget v10, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    sub-int/2addr v9, v10

    mul-int/2addr v8, v8

    mul-int/2addr v9, v9

    add-int/2addr v8, v9

    if-gt v0, v8, :cond_75

    if-gt v8, v1, :cond_75

    .line 117
    iget-object v9, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    iget-boolean v10, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->favorNear:Z

    if-eqz v10, :cond_70

    sub-int v8, v1, v8

    int-to-float v8, v8

    goto :goto_72

    :cond_70
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_72
    invoke-virtual {v9, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_75
    add-int/2addr v4, v6

    goto :goto_3b

    :cond_77
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 122
    :cond_7a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public sample(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/BuildingSampler;->sampleAll()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_b

    return-object v0

    .line 153
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 156
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p1, :cond_51

    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v4, v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gez v5, :cond_45

    .line 158
    iget-object v5, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->rnd:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_42

    goto :goto_45

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 159
    :cond_45
    :goto_45
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_51
    return-object v1
.end method

.method public sampleAll()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget v1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    neg-int v1, v1

    :goto_8
    iget v2, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    if-gt v1, v2, :cond_5e

    neg-int v2, v2

    .line 129
    :goto_d
    iget v3, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    if-gt v2, v3, :cond_5b

    mul-int v4, v2, v2

    mul-int v5, v1, v1

    add-int/2addr v4, v5

    mul-int/2addr v3, v3

    if-gt v4, v3, :cond_58

    .line 131
    iget-object v3, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->city:Linfo/flowersoft/theotown/city/City;

    iget v4, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    add-int/2addr v4, v2

    iget v5, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 132
    iget-object v3, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v4, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    add-int/2addr v4, v2

    iget v5, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 133
    iget v4, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    add-int/2addr v4, v2

    .line 134
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_58

    iget v4, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    add-int/2addr v4, v1

    .line 135
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_58

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_5e
    return-object v0
.end method

.method public setBuildings(Linfo/flowersoft/theotown/util/SortedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFavorNear(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->favorNear:Z

    return-void
.end method

.method public setMaxRadius(I)V
    .registers 2

    .line 67
    iput p1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->maxRadius:I

    return-void
.end method

.method public setX(I)V
    .registers 2

    .line 75
    iput p1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->x:I

    return-void
.end method

.method public setY(I)V
    .registers 2

    .line 83
    iput p1, p0, Linfo/flowersoft/theotown/city/BuildingSampler;->y:I

    return-void
.end method
