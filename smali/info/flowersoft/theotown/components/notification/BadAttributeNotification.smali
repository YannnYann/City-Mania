###### Class info.flowersoft.theotown.components.notification.BadAttributeNotification (info.flowersoft.theotown.components.notification.BadAttributeNotification)
.class Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "BadAttributeNotification.java"


# instance fields
.field public level:I

.field public reason:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 27
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;-><init>(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 2

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)I
    .registers 1

    .line 20
    iget p0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->level:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;I)I
    .registers 2

    .line 20
    iput p1, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->level:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->reason:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->reason:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p1
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$badattribdetected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->reason:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, -0x1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 74
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .line 80
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->level:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/16 v1, 0x877

    goto :goto_a

    :cond_8
    const/16 v1, 0x878

    :goto_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/16 v1, 0x87a

    .line 83
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xca8

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->reason:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 84
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 85
    invoke-interface {v3, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showOnlyOnce()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.BadAttributeNotification.AnonymousClass1 (info.flowersoft.theotown.components.notification.BadAttributeNotification$1)
.class Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "BadAttributeNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 7

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 31
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLastBuildResult()Linfo/flowersoft/theotown/components/BuildCommandResult;

    move-result-object v1

    .line 32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v1, :cond_cb

    if-eqz v0, :cond_cb

    .line 35
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$000(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 36
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$000(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v3

    if-ne v0, v3, :cond_cb

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getLevel()I

    move-result v0

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$100(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)I

    move-result v3

    if-ne v0, v3, :cond_cb

    .line 37
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getBadAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$200(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    if-eq v0, v1, :cond_cb

    .line 38
    :cond_48
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$002(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto/16 :goto_cb

    .line 42
    :cond_50
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_cb

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->hasNoSpace()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getArea()I

    move-result v3

    if-lez v3, :cond_cb

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getBadAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v3

    if-eqz v3, :cond_cb

    .line 43
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v3

    .line 44
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v4

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v4, v5, :cond_84

    .line 45
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v3

    .line 46
    :cond_84
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v4

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v4, v5, :cond_98

    .line 47
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v3

    :cond_98
    if-nez v3, :cond_cb

    .line 49
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v3, :cond_cb

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getBadAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v3

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$002(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getLevel()I

    move-result v3

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$102(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;I)I

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getBadAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$202(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 57
    :cond_cb
    :goto_cb
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;->access$000(Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-eqz v0, :cond_d4

    return v2

    :cond_d4
    const/4 v0, 0x0

    return v0
.end method
