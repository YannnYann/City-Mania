###### Class info.flowersoft.theotown.components.notification.task.BuildingTask (info.flowersoft.theotown.components.notification.task.BuildingTask)
.class public Linfo/flowersoft/theotown/components/notification/task/BuildingTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "BuildingTask.java"


# instance fields
.field public amount:I

.field public buildingDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
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
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;I",
            "Linfo/flowersoft/theotown/city/City;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 19
    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/task/BuildingTask;->buildingDrafts:Ljava/util/List;

    .line 20
    iput p4, p0, Linfo/flowersoft/theotown/components/notification/task/BuildingTask;->amount:I

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 5

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/BuildingTask;->buildingDrafts:Ljava/util/List;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_31

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 29
    :goto_d
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/BuildingTask;->buildingDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 30
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/task/BuildingTask;->buildingDrafts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    int-to-long v0, v1

    return-wide v0

    .line 26
    :cond_31
    :goto_31
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 3

    .line 38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/BuildingTask;->getRawValue()J

    move-result-wide v0

    return-wide v0
.end method
