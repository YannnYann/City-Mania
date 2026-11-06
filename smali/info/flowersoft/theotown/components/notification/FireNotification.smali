###### Class info.flowersoft.theotown.components.notification.FireNotification (info.flowersoft.theotown.components.notification.FireNotification)
.class public Linfo/flowersoft/theotown/components/notification/FireNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "FireNotification.java"


# instance fields
.field public burningBuilding:Linfo/flowersoft/theotown/city/objects/Building;

.field public oldHasFDep:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/FireNotification;->burningBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public checkCondition()Z
    .registers 3

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 64
    const-class v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 66
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 67
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/FireNotification;->burningBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    goto :goto_21

    :cond_1e
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/FireNotification;->burningBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 72
    :goto_21
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isActive()Z

    move-result v0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->hasFDep()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 101
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_FIREDEPARTMENT:I

    new-instance v4, Linfo/flowersoft/theotown/components/notification/FireNotification$1;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/components/notification/FireNotification$1;-><init>(Linfo/flowersoft/theotown/components/notification/FireNotification;)V

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0

    .line 110
    :cond_1b
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    new-instance v4, Linfo/flowersoft/theotown/components/notification/FireNotification$2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/components/notification/FireNotification$2;-><init>(Linfo/flowersoft/theotown/components/notification/FireNotification;)V

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 30
    const-string v0, "$burningid"

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER0:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->hasFDep()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x27a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasFDep()Z
    .registers 3

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCloseable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isImportant()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onShow()V
    .registers 2

    .line 91
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->onShow()V

    .line 93
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->hasFDep()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/FireNotification;->oldHasFDep:Z

    return-void
.end method

.method public update()V
    .registers 3

    .line 49
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->update()V

    .line 51
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->hasFDep()Z

    move-result v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/FireNotification;->oldHasFDep:Z

    if-eq v0, v1, :cond_12

    xor-int/lit8 v0, v1, 0x1

    .line 52
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/FireNotification;->oldHasFDep:Z

    .line 53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->rebuild()V

    :cond_12
    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.FireNotification.AnonymousClass1 (info.flowersoft.theotown.components.notification.FireNotification$1)
.class Linfo/flowersoft/theotown/components/notification/FireNotification$1;
.super Ljava/lang/Object;
.source "FireNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/FireNotification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/FireNotification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->access$100(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/FireNotification;->access$000(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->focus(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->access$200(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/FireBrigadeAlertTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/FireBrigadeAlertTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.FireNotification.AnonymousClass2 (info.flowersoft.theotown.components.notification.FireNotification$2)
.class Linfo/flowersoft/theotown/components/notification/FireNotification$2;
.super Ljava/lang/Object;
.source "FireNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/FireNotification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/FireNotification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/FireNotification;->access$400(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/FireNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/FireNotification;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/FireNotification;->access$300(Linfo/flowersoft/theotown/components/notification/FireNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->FIREBRIGADE:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
