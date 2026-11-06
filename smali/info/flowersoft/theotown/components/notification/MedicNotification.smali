###### Class info.flowersoft.theotown.components.notification.MedicNotification (info.flowersoft.theotown.components.notification.MedicNotification)
.class public Linfo/flowersoft/theotown/components/notification/MedicNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "MedicNotification.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public oldHasMedic:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 19
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 19
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 19
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 19
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 19
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public checkCondition()Z
    .registers 3

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 61
    const-class v1, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;

    .line 63
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 64
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->building:Linfo/flowersoft/theotown/city/objects/Building;

    goto :goto_21

    :cond_1e
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 69
    :goto_21
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    const/4 v0, 0x0

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

    .line 95
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->hasMedic()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 98
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_MEDIC:I

    new-instance v4, Linfo/flowersoft/theotown/components/notification/MedicNotification$1;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification$1;-><init>(Linfo/flowersoft/theotown/components/notification/MedicNotification;)V

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0

    .line 107
    :cond_1b
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    new-instance v4, Linfo/flowersoft/theotown/components/notification/MedicNotification$2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification$2;-><init>(Linfo/flowersoft/theotown/components/notification/MedicNotification;)V

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "$medicid"

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 32
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MEDIC:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->hasMedic()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x377

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xc32

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasMedic()Z
    .registers 3

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

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

    .line 88
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->onShow()V

    .line 90
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->hasMedic()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->oldHasMedic:Z

    return-void
.end method

.method public update()V
    .registers 3

    .line 46
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->update()V

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->hasMedic()Z

    move-result v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->oldHasMedic:Z

    if-eq v0, v1, :cond_14

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->hasMedic()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification;->oldHasMedic:Z

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->rebuild()V

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.MedicNotification.AnonymousClass1 (info.flowersoft.theotown.components.notification.MedicNotification$1)
.class Linfo/flowersoft/theotown/components/notification/MedicNotification$1;
.super Ljava/lang/Object;
.source "MedicNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/MedicNotification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/MedicNotification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->access$100(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->access$000(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->focus(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->access$200(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/MedicAlertTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/MedicAlertTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.MedicNotification.AnonymousClass2 (info.flowersoft.theotown.components.notification.MedicNotification$2)
.class Linfo/flowersoft/theotown/components/notification/MedicNotification$2;
.super Ljava/lang/Object;
.source "MedicNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/MedicNotification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/MedicNotification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->access$400(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/MedicNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/MedicNotification;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/MedicNotification;->access$300(Linfo/flowersoft/theotown/components/notification/MedicNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->MEDIC:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
