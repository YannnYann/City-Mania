###### Class info.flowersoft.theotown.components.notification.task.RoadTask (info.flowersoft.theotown.components.notification.task.RoadTask)
.class public Linfo/flowersoft/theotown/components/notification/task/RoadTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "RoadTask.java"


# instance fields
.field public amount:I

.field public roadDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;ILinfo/flowersoft/theotown/city/City;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;I",
            "Linfo/flowersoft/theotown/city/City;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 20
    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->roadDrafts:Ljava/util/List;

    .line 21
    iput p4, p0, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->amount:I

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 5

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->roadDrafts:Ljava/util/List;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_31

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 30
    :goto_d
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->roadDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 31
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->roadDrafts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    int-to-long v0, v1

    return-wide v0

    .line 27
    :cond_31
    :goto_31
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/RoadList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 5

    .line 39
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->getRawValue()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/components/notification/task/RoadTask;->amount:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getLevel()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
