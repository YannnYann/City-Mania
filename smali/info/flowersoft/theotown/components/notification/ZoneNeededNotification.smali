###### Class info.flowersoft.theotown.components.notification.ZoneNeededNotification (info.flowersoft.theotown.components.notification.ZoneNeededNotification)
.class public Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "ZoneNeededNotification.java"


# instance fields
.field public textId:I

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;II)V
    .registers 9

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;

    invoke-direct {v1, p1, p2}, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    int-to-long v2, p4

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;-><init>(Linfo/flowersoft/theotown/components/notification/condition/Condition;J)V

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 25
    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 26
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->textId:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 18
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
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

    .line 46
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 47
    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    .line 49
    new-instance v2, Linfo/flowersoft/theotown/city/components/NotificationAction;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Tool;->getIcon()I

    move-result v3

    new-instance v4, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;

    invoke-direct {v4, p0, v1}, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;-><init>(Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;Linfo/flowersoft/theotown/city/components/Tool;)V

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$neededzone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 36
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->textId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.ZoneNeededNotification.AnonymousClass1 (info.flowersoft.theotown.components.notification.ZoneNeededNotification$1)
.class Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;
.super Ljava/lang/Object;
.source "ZoneNeededNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;

.field public final synthetic val$tool:Linfo/flowersoft/theotown/city/components/Tool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;Linfo/flowersoft/theotown/city/components/Tool;)V
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

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;->val$tool:Linfo/flowersoft/theotown/city/components/Tool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;->access$000(Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification$1;->val$tool:Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
