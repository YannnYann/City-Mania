###### Class info.flowersoft.theotown.components.notification.UnhappyNotification (info.flowersoft.theotown.components.notification.UnhappyNotification)
.class public Linfo/flowersoft/theotown/components/notification/UnhappyNotification;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "UnhappyNotification.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 29
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$unhappy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTag(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 33
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICEWORKER:I

    .line 34
    const-class v1, Linfo/flowersoft/theotown/components/management/attribute/EducationHappiness;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    if-ne p1, v1, :cond_28

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    goto :goto_48

    .line 36
    :cond_28
    const-class v1, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    if-ne p1, v1, :cond_33

    .line 37
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MEDIC:I

    goto :goto_48

    .line 38
    :cond_33
    const-class v1, Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    if-ne p1, v1, :cond_3e

    .line 39
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER1:I

    goto :goto_48

    .line 40
    :cond_3e
    const-class v1, Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    if-ne p1, v1, :cond_48

    .line 41
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    .line 43
    :cond_48
    :goto_48
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 46
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;

    invoke-direct {v1, p0, p2, v0}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;-><init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/City;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;

    invoke-direct {v0, p0, p2, p1}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;-><init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$3;-><init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 80
    new-instance v0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;

    invoke-direct {v0, p0, p2, p1}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;-><init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setOnLocationClick(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 24
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1
.end method

###### Class info.flowersoft.theotown.components.notification.UnhappyNotification.AnonymousClass1 (info.flowersoft.theotown.components.notification.UnhappyNotification$1)
.class Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;
.super Ljava/lang/Object;
.source "UnhappyNotification.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/UnhappyNotification;-><init>(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

.field public final synthetic val$attributeName:Ljava/lang/String;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/City;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;->val$attributeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x6b2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$1;->val$attributeName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.UnhappyNotification.AnonymousClass2 (info.flowersoft.theotown.components.notification.UnhappyNotification$2)
.class Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "UnhappyNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/UnhappyNotification;-><init>(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

.field public final synthetic val$happiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->val$happiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 5

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 60
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLowestHappiness()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLowestHappinessValue()F

    move-result v2

    .line 62
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLowestHappinessBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 63
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->val$happiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    if-ne v1, v3, :cond_37

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_37

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    .line 64
    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->access$000(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->access$000(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-ne v1, v0, :cond_37

    .line 65
    :cond_30
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->access$002(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v0, 0x1

    return v0

    .line 68
    :cond_37
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$2;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->access$002(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.UnhappyNotification.AnonymousClass3 (info.flowersoft.theotown.components.notification.UnhappyNotification$3)
.class Linfo/flowersoft/theotown/components/notification/UnhappyNotification$3;
.super Ljava/lang/Object;
.source "UnhappyNotification.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/UnhappyNotification;-><init>(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Linfo/flowersoft/theotown/city/objects/Building;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$3;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$3;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;->access$000(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$3;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.UnhappyNotification.AnonymousClass4 (info.flowersoft.theotown.components.notification.UnhappyNotification$4)
.class Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;
.super Ljava/lang/Object;
.source "UnhappyNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/UnhappyNotification;-><init>(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$happiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/UnhappyNotification;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;->this$0:Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;->val$happiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;->val$city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/UnhappyNotification$4;->val$happiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
