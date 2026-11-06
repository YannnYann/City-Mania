###### Class info.flowersoft.theotown.city.RoadSampler (info.flowersoft.theotown.city.RoadSampler)
.class public Linfo/flowersoft/theotown/city/RoadSampler;
.super Ljava/lang/Object;
.source "RoadSampler.java"


# instance fields
.field public final roads:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public final selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/RoadSampler;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    .line 17
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/RoadList;->getSorted()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/RoadSampler;->roads:Linfo/flowersoft/theotown/util/SortedList;

    return-void
.end method


# virtual methods
.method public sample(III)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 10

    mul-int v0, p3, p3

    .line 22
    iget-object v1, p0, Linfo/flowersoft/theotown/city/RoadSampler;->roads:Linfo/flowersoft/theotown/util/SortedList;

    sub-int v2, p1, p3

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result v1

    .line 23
    iget-object v2, p0, Linfo/flowersoft/theotown/city/RoadSampler;->roads:Linfo/flowersoft/theotown/util/SortedList;

    add-int/2addr p3, p1

    invoke-virtual {v2, p3}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result p3

    sub-int v2, p3, v1

    const/16 v3, 0x200

    if-le v2, v3, :cond_22

    add-int/lit16 v2, v2, 0x1ff

    .line 28
    div-int/2addr v2, v3

    .line 29
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_23

    :cond_22
    const/4 v2, 0x1

    :goto_23
    if-ge v1, p3, :cond_48

    .line 33
    iget-object v3, p0, Linfo/flowersoft/theotown/city/RoadSampler;->roads:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Road;

    if-nez v3, :cond_30

    goto :goto_48

    .line 36
    :cond_30
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v4

    sub-int/2addr v4, p1

    .line 37
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v5

    sub-int/2addr v5, p2

    mul-int/2addr v4, v4

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    if-gt v4, v0, :cond_46

    .line 40
    iget-object v4, p0, Linfo/flowersoft/theotown/city/RoadSampler;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v3, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_46
    add-int/2addr v1, v2

    goto :goto_23

    .line 44
    :cond_48
    :goto_48
    iget-object p1, p0, Linfo/flowersoft/theotown/city/RoadSampler;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    return-object p1
.end method
