###### Class info.flowersoft.theotown.components.notification.task.ZoneTask (info.flowersoft.theotown.components.notification.task.ZoneTask)
.class public Linfo/flowersoft/theotown/components/notification/task/ZoneTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "ZoneTask.java"


# instance fields
.field public final amount:I

.field public final zones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
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
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;I",
            "Linfo/flowersoft/theotown/city/City;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 21
    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;->zones:Ljava/util/List;

    .line 22
    iput p4, p0, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;->amount:I

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 5

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getZoneCounter()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 29
    :goto_8
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;->zones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 30
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;->zones:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v3, v0, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    int-to-long v0, v2

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 5

    .line 37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;->getRawValue()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;->amount:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getLevel()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
