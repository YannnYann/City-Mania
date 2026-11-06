###### Class info.flowersoft.theotown.components.traffic.TrafficAmountWorker (info.flowersoft.theotown.components.traffic.TrafficAmountWorker)
.class public Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;
.super Lio/blueflower/stapel2d/util/CyclicWorker;
.source "TrafficAmountWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public badRoad:Linfo/flowersoft/theotown/city/objects/Road;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/MinimumSelector<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>()V

    .line 17
    new-instance v0, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 24
    invoke-virtual {p0, p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getBadRoad()Linfo/flowersoft/theotown/city/objects/Road;
    .registers 2

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->badRoad:Linfo/flowersoft/theotown/city/objects/Road;

    return-object v0
.end method

.method public run()V
    .registers 11

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 36
    iget-object v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_27
    const/4 v8, 0x4

    if-ge v3, v8, :cond_52

    if-nez v4, :cond_52

    if-eqz v2, :cond_4f

    .line 40
    aget-object v8, v2, v3

    if-eqz v8, :cond_4f

    .line 41
    iget-boolean v9, v8, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-nez v9, :cond_4f

    iget-boolean v9, v8, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v9, :cond_4f

    add-int/lit8 v4, v4, 0x1

    .line 43
    iget v8, v8, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_44

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_44
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4a

    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_4a
    const/4 v9, 0x3

    if-ne v8, v9, :cond_4f

    add-int/lit8 v7, v7, 0x1

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 50
    :cond_52
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    int-to-float v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_5d

    const v4, 0x3ccccccd    # 0.025f

    goto :goto_60

    :cond_5d
    const v4, 0x3dcccccd    # 0.1f

    :goto_60
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v4

    mul-float/2addr v2, v9

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 52
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    .line 53
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel1:F

    mul-float/2addr v2, v9

    int-to-float v3, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel1:F

    .line 54
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel2:F

    mul-float/2addr v2, v9

    int-to-float v3, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel2:F

    .line 55
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel3:F

    mul-float/2addr v9, v2

    int-to-float v2, v7

    mul-float/2addr v4, v2

    add-float/2addr v9, v4

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel3:F

    .line 57
    iget-object v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-wide v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    const-wide/32 v4, 0x8000e0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    .line 61
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    sub-float/2addr v8, v3

    invoke-virtual {v2, v1, v8}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    goto/16 :goto_14

    .line 65
    :cond_a9
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Road;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->badRoad:Linfo/flowersoft/theotown/city/objects/Road;

    return-void

    :cond_bc
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->badRoad:Linfo/flowersoft/theotown/city/objects/Road;

    return-void
.end method
