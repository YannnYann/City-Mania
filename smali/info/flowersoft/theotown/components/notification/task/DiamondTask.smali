###### Class info.flowersoft.theotown.components.notification.task.DiamondTask (info.flowersoft.theotown.components.notification.task.DiamondTask)
.class public Linfo/flowersoft/theotown/components/notification/task/DiamondTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "DiamondTask.java"


# instance fields
.field public amount:I

.field public factor:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILinfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 16
    invoke-direct {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 17
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/task/DiamondTask;->factor:I

    .line 18
    iput p4, p0, Linfo/flowersoft/theotown/components/notification/task/DiamondTask;->amount:I

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 3

    .line 23
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/task/DiamondTask;->factor:I

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 5

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DiamondTask;->getRawValue()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/components/notification/task/DiamondTask;->amount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
