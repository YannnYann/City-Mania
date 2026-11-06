###### Class info.flowersoft.theotown.components.notification.task.PeopleTask (info.flowersoft.theotown.components.notification.task.PeopleTask)
.class public Linfo/flowersoft/theotown/components/notification/task/PeopleTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "PeopleTask.java"


# instance fields
.field public amount:I

.field public mask:[I

.field public people:Linfo/flowersoft/theotown/components/DefaultPeople;


# direct methods
.method public constructor <init>(ILjava/lang/String;[IILinfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 19
    invoke-direct {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 20
    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->mask:[I

    if-nez p3, :cond_e

    const/4 p1, 0x1

    .line 21
    filled-new-array {p1, p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->mask:[I

    .line 23
    :cond_e
    iput p4, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->amount:I

    const/16 p1, 0x9

    .line 25
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultPeople;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 31
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->mask:[I

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 32
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->mask:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    int-to-long v0, v1

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 5

    .line 39
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->getRawValue()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;->amount:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getLevel()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
