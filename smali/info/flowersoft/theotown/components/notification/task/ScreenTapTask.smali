###### Class info.flowersoft.theotown.components.notification.task.ScreenTapTask (info.flowersoft.theotown.components.notification.task.ScreenTapTask)
.class public Linfo/flowersoft/theotown/components/notification/task/ScreenTapTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "ScreenTapTask.java"


# instance fields
.field public amount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILinfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 15
    invoke-direct {p0, p1, p2, p4}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 16
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/task/ScreenTapTask;->amount:I

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 3

    .line 21
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->screenTaps:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 5

    .line 26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/ScreenTapTask;->getRawValue()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/components/notification/task/ScreenTapTask;->amount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
