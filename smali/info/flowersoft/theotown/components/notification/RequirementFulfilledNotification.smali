###### Class info.flowersoft.theotown.components.notification.RequirementFulfilledNotification (info.flowersoft.theotown.components.notification.RequirementFulfilledNotification)
.class public Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "RequirementFulfilledNotification.java"


# instance fields
.field public currentDraft:Linfo/flowersoft/theotown/draft/Draft;

.field public final resolver:Linfo/flowersoft/theotown/tools/ToolResolver;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->resolver:Linfo/flowersoft/theotown/tools/ToolResolver;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/draft/Draft;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/tools/ToolResolver;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->resolver:Linfo/flowersoft/theotown/tools/ToolResolver;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    return-void
.end method


# virtual methods
.method public checkCondition()Z
    .registers 9

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_71

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Requirement;

    .line 83
    :cond_10
    :goto_10
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Requirement;->hasNewUnlockedDraft()Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v3, :cond_71

    .line 84
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Requirement;->getNewUnlockedDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    .line 86
    instance-of v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v4, :cond_10

    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v4, :cond_10

    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v4, :cond_10

    move v5, v1

    move v4, v2

    .line 89
    :goto_2c
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_56

    if-eqz v5, :cond_56

    .line 90
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 91
    instance-of v7, v6, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    if-nez v7, :cond_52

    instance-of v6, v6, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v6, :cond_53

    :cond_52
    move v5, v2

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 96
    :cond_56
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 97
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6c

    move v5, v2

    :cond_6c
    if-eqz v5, :cond_10

    .line 102
    iput-object v3, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_10

    .line 108
    :cond_71
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v0, :cond_76

    return v1

    :cond_76
    return v2
.end method

.method public getActions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    instance-of v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v2, :cond_25

    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v2, :cond_25

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v1, :cond_25

    .line 122
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    .line 123
    new-instance v2, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;-><init>(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/NotificationAction;->setAction(Ljava/lang/Runnable;)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v0, :cond_1c

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$requirementdraft_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->getUnifiedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1c
    const-string v0, "$requirementnone"

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 56
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 62
    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 64
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    instance-of v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v3, :cond_28

    const/16 v2, 0x7b4

    .line 66
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    .line 67
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_28
    instance-of v2, v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v2, :cond_4b

    const/16 v2, 0xc45

    .line 70
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    .line 71
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->parent:Linfo/flowersoft/theotown/draft/Draft;

    .line 72
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requirement fulfilled for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClose()V
    .registers 2

    .line 113
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->onClose()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->currentDraft:Linfo/flowersoft/theotown/draft/Draft;

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.RequirementFulfilledNotification.AnonymousClass1 (info.flowersoft.theotown.components.notification.RequirementFulfilledNotification$1)
.class Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;
.super Ljava/lang/Object;
.source "RequirementFulfilledNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

.field public final synthetic val$na:Linfo/flowersoft/theotown/city/components/NotificationAction;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;Linfo/flowersoft/theotown/city/components/NotificationAction;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->val$na:Linfo/flowersoft/theotown/city/components/NotificationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->val$na:Linfo/flowersoft/theotown/city/components/NotificationAction;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getButton()Lio/blueflower/stapel2d/gui/Button;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 128
    new-instance v1, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$100(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    .line 129
    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$000(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v1

    .line 130
    new-instance v2, Lio/blueflower/stapel2d/gui/Panel;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    const v3, 0x186a0

    const v4, 0x186a0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 131
    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/ui/Selectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 132
    invoke-interface {v1}, Linfo/flowersoft/theotown/ui/Selectable;->select()V

    .line 133
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    const-string v3, "roottoolbar"

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 135
    check-cast v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->registerForUse(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 137
    :cond_47
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$200(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)V

    return-void

    .line 140
    :cond_50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$400(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$300(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/tools/ToolResolver;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$000(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;->access$500(Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;)V

    return-void
.end method
