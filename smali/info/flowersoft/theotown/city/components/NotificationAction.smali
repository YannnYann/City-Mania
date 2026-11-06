###### Class info.flowersoft.theotown.city.components.NotificationAction (info.flowersoft.theotown.city.components.NotificationAction)
.class public Linfo/flowersoft/theotown/city/components/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.java"


# instance fields
.field public action:Ljava/lang/Runnable;

.field public cmd:Lio/blueflower/stapel2d/gui/Button;

.field public iconId:I

.field public id:Ljava/lang/String;

.field public nameId:I


# direct methods
.method public constructor <init>(IILjava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->iconId:I

    .line 30
    iput p2, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->nameId:I

    .line 31
    iput-object p3, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->action:Ljava/lang/Runnable;

    .line 32
    iput-object p4, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1, v0, p2, p3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(IILjava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Runnable;
    .registers 2

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->action:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getButton()Lio/blueflower/stapel2d/gui/Button;
    .registers 2

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->cmd:Lio/blueflower/stapel2d/gui/Button;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 36
    iget v0, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->iconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 40
    iget v0, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->nameId:I

    return v0
.end method

.method public setAction(Ljava/lang/Runnable;)V
    .registers 2

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->action:Ljava/lang/Runnable;

    return-void
.end method

.method public setButton(Lio/blueflower/stapel2d/gui/Button;)V
    .registers 2

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/NotificationAction;->cmd:Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method
