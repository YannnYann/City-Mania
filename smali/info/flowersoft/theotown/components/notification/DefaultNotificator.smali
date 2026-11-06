###### Class info.flowersoft.theotown.components.notification.DefaultNotificator (info.flowersoft.theotown.components.notification.DefaultNotificator)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator;
.super Linfo/flowersoft/theotown/city/components/Notificator;
.source "DefaultNotificator.java"


# instance fields
.field public final DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public currentNotification:Linfo/flowersoft/theotown/city/components/Notification;

.field public final hiddenIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final hiddenNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/city/components/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public locked:Z

.field public final notificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Linfo/flowersoft/theotown/city/components/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

.field public final taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$-wtN_tEB50iSE6mwaf3-PFpz99E()Z
    .registers 1

    .line 138
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyLowWater:Z

    return v0
.end method

.method public static synthetic $r8$lambda$69BeCtrQHEeu71QLxjmRg1F6GlY()Z
    .registers 1

    .line 335
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNeedLowEducation:Z

    return v0
.end method

.method public static synthetic $r8$lambda$6JpfOI92k3-8PC3T9uDwhELuejA()Z
    .registers 1

    .line 196
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyWaterWaste:Z

    return v0
.end method

.method public static synthetic $r8$lambda$8auzpkM5-kEEi8_S4dNjnwVeRuA(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 4

    .line 630
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->getCatastrophe()Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    .line 630
    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    .line 631
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 633
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v2, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->getAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object p0

    invoke-virtual {v2, p0}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object p0

    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_26
    return-void
.end method

.method public static synthetic $r8$lambda$9xLaMExOGg8y7YDwibimT3bYIgI()Z
    .registers 1

    .line 182
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyPollution:Z

    return v0
.end method

.method public static synthetic $r8$lambda$BO0fHiMxCEVHCsrboBeWAR-zqZo()Z
    .registers 1

    .line 458
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyWaste:Z

    return v0
.end method

.method public static synthetic $r8$lambda$IlY1l1-PUg5YcZOrfBVBzhlYkd8()Z
    .registers 1

    .line 218
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyUnlocked:Z

    return v0
.end method

.method public static synthetic $r8$lambda$JuEUnZ2sDyt3vKT1oZajMPPeqp4()Z
    .registers 1

    .line 144
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNoPower:Z

    return v0
.end method

.method public static synthetic $r8$lambda$KUcrC10nS000dCI_h8MbAFibM2k()Z
    .registers 1

    .line 175
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNoSport:Z

    return v0
.end method

.method public static synthetic $r8$lambda$KhlamXfUBmTx94RQM8cb8QKbVII()Z
    .registers 1

    .line 226
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyZoneNeeded:Z

    return v0
.end method

.method public static synthetic $r8$lambda$L4ErfSxBGER76AaoYyrvY_KM1Mk()Z
    .registers 1

    .line 258
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifySchoolOverloaded:Z

    return v0
.end method

.method public static synthetic $r8$lambda$NFBwFlG-yj-8Wes7z6dn_St1HXU()Z
    .registers 1

    .line 222
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyLowBudget:Z

    return v0
.end method

.method public static synthetic $r8$lambda$QHKrQCeblINw_VgeGx7LcnYRQzM()Z
    .registers 1

    .line 189
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNoise:Z

    return v0
.end method

.method public static synthetic $r8$lambda$QVjKJlLp7kP2kSuZy78V-EiQdyY()Z
    .registers 1

    .line 160
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNoRoad:Z

    return v0
.end method

.method public static synthetic $r8$lambda$SEp0vKWOWNdFBktJHyVZt4Z5ARg()Z
    .registers 1

    .line 529
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyBadAttribute:Z

    return v0
.end method

.method public static synthetic $r8$lambda$SPM9zb_EX9ow3otNxSxJPCI5CWU()Z
    .registers 1

    .line 482
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyBodyDisposal:Z

    return v0
.end method

.method public static synthetic $r8$lambda$XM4_ytpkS7jzPjp_sXEdPQ9JZCo()Z
    .registers 1

    .line 232
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyZoneNeeded:Z

    return v0
.end method

.method public static synthetic $r8$lambda$Z8iRwQsZGf6tfAapP2EpEsi8aTQ()Z
    .registers 1

    .line 362
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNeedHighEducation:Z

    return v0
.end method

.method public static synthetic $r8$lambda$bPBY35FMTbuB5tFtovk7aNmzZkw()Z
    .registers 1

    .line 280
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyMedicOverloaded:Z

    return v0
.end method

.method public static synthetic $r8$lambda$cIlQI9lzRLvNpji4MOoJ5XsvKFE()Z
    .registers 1

    .line 152
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNoWater:Z

    return v0
.end method

.method public static synthetic $r8$lambda$fddfEjhvDFcLvYYi-3tsIS9cUB0()Z
    .registers 1

    .line 397
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyBadTraffic:Z

    return v0
.end method

.method public static synthetic $r8$lambda$j1NDrtsho0NWAGNQUgIOPv79tiE()Z
    .registers 1

    .line 237
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyPollutedPump:Z

    return v0
.end method

.method public static synthetic $r8$lambda$kfLGNcl1cQCEyUq0vdG_o4zRrb0()Z
    .registers 1

    .line 133
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyLowPower:Z

    return v0
.end method

.method public static synthetic $r8$lambda$kiJIZYyKRETXJYDbviyAe74TqHA()Z
    .registers 1

    .line 506
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyBodyDisposal:Z

    return v0
.end method

.method public static synthetic $r8$lambda$km5Q6LR2CWFcStz0APpjGLkfRuA()Z
    .registers 1

    .line 229
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyZoneNeeded:Z

    return v0
.end method

.method public static synthetic $r8$lambda$p76wLMQmvRF9LBvjdDgXzRPTGc8()Z
    .registers 1

    .line 213
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyUnhappy:Z

    return v0
.end method

.method public static synthetic $r8$lambda$pxTmJdVoGOh-zt_aag987ChV52w()Z
    .registers 1

    .line 434
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyWaste:Z

    return v0
.end method

.method public static synthetic $r8$lambda$syfAP3it1PU7_7HMXzq_GPGEcVc()Z
    .registers 1

    .line 302
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyDestroyedTile:Z

    return v0
.end method

.method public static synthetic $r8$lambda$vbkJ7xnCNYV0SH83u-V-XO6btUk()Z
    .registers 1

    .line 168
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->notifyNoPark:Z

    return v0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Notificator;-><init>()V

    .line 74
    const-string v0, "$animationprotester00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 75
    const-string v0, "$animationriot00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenIds:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenNotifications:Ljava/util/Set;

    .line 97
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 98
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 100
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 101
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V

    .line 102
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildNotifications()V

    .line 103
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    if-eq v0, v1, :cond_5e

    .line 104
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasGameLogic()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 105
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V

    .line 109
    :cond_5e
    new-instance v0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->locked:Z

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 819
    :goto_3
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 820
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 822
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Notification;

    .line 823
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_37

    .line 829
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 830
    invoke-virtual {v1, p2}, Linfo/flowersoft/theotown/city/components/Notification;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 831
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_3

    .line 833
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_ae

    goto :goto_63

    :sswitch_43
    const-string v1, "hidden ids"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_63

    :cond_4c
    const/4 v0, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v1, "hidden notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_63

    :cond_57
    const/4 v0, 0x1

    goto :goto_63

    :sswitch_59
    const-string v1, "task manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    packed-switch v0, :pswitch_data_bc

    .line 858
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 835
    :pswitch_6a
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 836
    :goto_6d
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 837
    iget-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenIds:Ljava/util/Set;

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 839
    :cond_7d
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_3

    .line 842
    :pswitch_81
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 843
    :cond_84
    :goto_84
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 844
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->getNotification(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 847
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenNotifications:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 850
    :cond_9a
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_3

    .line 853
    :pswitch_9f
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 854
    iget-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 855
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_3

    :cond_ac
    return-void

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x355273ee -> :sswitch_59
        -0x1da3cb0e -> :sswitch_4e
        -0x1bc24be -> :sswitch_43
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_81
        :pswitch_6a
    .end packed-switch
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;
    .registers 1

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->getCatastrophe()Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultTraffic;
    .registers 1

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->getTraffic()Linfo/flowersoft/theotown/components/DefaultTraffic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 3

    .line 883
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final buildImportantNotifications()V
    .registers 6

    .line 535
    new-instance v0, Linfo/flowersoft/theotown/components/notification/FireNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/FireNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 536
    new-instance v0, Linfo/flowersoft/theotown/components/notification/MedicNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/MedicNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 538
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 539
    const-string v1, "$crime"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 541
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0x4f6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 542
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$29;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$29;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 549
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$30;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$30;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 555
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 557
    new-instance v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$31;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$31;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    .line 566
    new-instance v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 567
    const-string v2, "$demonstration"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 569
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 570
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 584
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$33;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$33;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 590
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 591
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setOnLocationClick(Ljava/lang/Runnable;)V

    .line 601
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 604
    new-instance v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 605
    const-string v3, "$riot"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 607
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 608
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 622
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$36;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$36;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 628
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 629
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda28;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setOnLocationClick(Ljava/lang/Runnable;)V

    .line 636
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 638
    new-array v0, v2, [Z

    .line 639
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Z)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 687
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 689
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 708
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 710
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 729
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 731
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Z)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 750
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 752
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 771
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 773
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 792
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 794
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Z)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 813
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    return-void
.end method

.method public final buildNotifications()V
    .registers 7

    .line 130
    new-instance v0, Linfo/flowersoft/theotown/components/notification/WelcomeNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/WelcomeNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 132
    new-instance v0, Linfo/flowersoft/theotown/components/notification/PowerNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xdf

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/notification/PowerNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 133
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v5}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 137
    new-instance v0, Linfo/flowersoft/theotown/components/notification/WaterNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0x225

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/notification/WaterNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 138
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 142
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 143
    const-string v1, "$noenergy"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WORKMAN:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0xc6b

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v5}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 150
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 151
    const-string v1, "$nowater"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WORKMAN:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0x9cf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v5}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 158
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 159
    const-string v1, "$noroad"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WORKMAN:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0xb6c

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    return-void
.end method

.method public final buildOtherNotifications()V
    .registers 8

    .line 167
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x3

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 168
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$nopark"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICEWORKER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0x864

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 174
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 175
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$nosport"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICEWORKER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0x4cf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 181
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v5, 0x9

    invoke-direct {v0, v1, v5, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 182
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$pollution"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_RANGER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0xc86

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 188
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v5, 0xa

    invoke-direct {v0, v1, v5, v3, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 189
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$noise"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_RANGER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0x5b3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 195
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xb

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3, v5, v4}, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 196
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$noclearwater"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_RANGER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const/16 v1, 0x847

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;

    invoke-direct {v3}, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 210
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ff
    :goto_ff
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 211
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v3

    if-eqz v3, :cond_ff

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 212
    new-instance v3, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v1, v4}, Linfo/flowersoft/theotown/components/notification/UnhappyNotification;-><init>(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/city/City;)V

    iput-object v3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 213
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 214
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    goto :goto_ff

    .line 218
    :cond_12e
    new-instance v0, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/RequirementFulfilledNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 222
    new-instance v0, Linfo/flowersoft/theotown/components/notification/LowBudgetNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/LowBudgetNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 224
    new-instance v0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 225
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/16 v4, 0x946

    const/16 v5, 0x32

    invoke-direct {v0, v1, v3, v4, v5}, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;II)V

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda21;-><init>()V

    .line 226
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 227
    new-instance v0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 228
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/16 v4, 0x7b3

    const/16 v5, 0x46

    invoke-direct {v0, v1, v3, v4, v5}, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;II)V

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda22;-><init>()V

    .line 229
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 230
    new-instance v0, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 231
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/16 v4, 0xd60

    const/16 v5, 0x5a

    invoke-direct {v0, v1, v3, v4, v5}, Linfo/flowersoft/theotown/components/notification/ZoneNeededNotification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;II)V

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda1;-><init>()V

    .line 232
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 234
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 235
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x430

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$pollutedwaterpump"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 240
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    .line 241
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 247
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 255
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 256
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_TEACHER0:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa88

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$schooloverloaded"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 261
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    .line 262
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$3;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$3;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 268
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;

    invoke-direct {v3}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 277
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 278
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MEDIC:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa52

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 281
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$medicoverloaded"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 283
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    .line 284
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$5;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0, v3, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$5;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 290
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 296
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 299
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 300
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GARBAGE_COLLECTOR:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 301
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x70e

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v1, "$desctroyedtile"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$7;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$7;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 310
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$8;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$8;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 316
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 318
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$school02"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 319
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 333
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_TEACHER0:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 334
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xcd

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 336
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v2, "$loweductionneeded"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$10;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$10;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    const-wide/16 v4, 0x1e

    invoke-direct {v2, v3, v4, v5}, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;-><init>(Linfo/flowersoft/theotown/components/notification/condition/Condition;J)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 345
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 347
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$school01"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 348
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 362
    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 363
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_TEACHER1:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 364
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd7d

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v2, "$higheductionneeded"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$12;

    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v6, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$12;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-direct {v2, v3, v4, v5}, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;-><init>(Linfo/flowersoft/theotown/components/notification/condition/Condition;J)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    const/4 v0, 0x1

    .line 376
    new-array v0, v0, [Linfo/flowersoft/theotown/city/objects/Road;

    .line 377
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/city/objects/Road;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 397
    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 398
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 399
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x37c

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v2, "$badtraffic"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0, v3, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/city/objects/Road;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 414
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 416
    new-instance v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$15;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$15;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    .line 424
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$16;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$16;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    .line 433
    new-instance v2, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 434
    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 435
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v3, "$building_waste_needer00"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GARBAGE_COLLECTOR:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 437
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$17;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$17;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 443
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 449
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$19;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$19;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 455
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 457
    new-instance v2, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 458
    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 459
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v3, "$building_waste_producer00"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GARBAGE_COLLECTOR:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 461
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$20;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$20;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 467
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 473
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$22;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$22;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 479
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 481
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 482
    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 483
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v2, "$building_bodydisposal_needer00"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_PRIEST:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 485
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$23;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$23;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 491
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 497
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$25;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0, v3, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$25;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 503
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 505
    new-instance v0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    .line 506
    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    .line 507
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    const-string v2, "$building_bodydisposal_producer00"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_PRIEST:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 509
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$26;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$26;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 515
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 521
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$28;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0, v3, v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$28;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 527
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->sn:Linfo/flowersoft/theotown/components/notification/SimpleNotification;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 529
    new-instance v0, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/notification/BadAttributeNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notification;->setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    return-void
.end method

.method public clearNotifications()V
    .registers 2

    .line 962
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getCatastrophe()Linfo/flowersoft/theotown/components/DefaultCatastrophe;
    .registers 3

    .line 875
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    return-object v0
.end method

.method public getCurrentNotification()Linfo/flowersoft/theotown/city/components/Notification;
    .registers 2

    .line 986
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->currentNotification:Linfo/flowersoft/theotown/city/components/Notification;

    return-object v0
.end method

.method public final getNotification(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Notification;
    .registers 4

    const/4 v0, 0x0

    .line 866
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 867
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 868
    iget-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Notification;

    return-object p1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTaskManager()Linfo/flowersoft/theotown/components/notification/task/TaskManager;
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    return-object v0
.end method

.method public final getTraffic()Linfo/flowersoft/theotown/components/DefaultTraffic;
    .registers 3

    .line 879
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultTraffic;

    return-object v0
.end method

.method public hideNotification(Ljava/lang/String;)V
    .registers 3

    .line 958
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public lock(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 3

    .line 972
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->locked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->locked:Z

    .line 974
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->currentNotification:Linfo/flowersoft/theotown/city/components/Notification;

    :cond_9
    return-void
.end method

.method public nextDay()V
    .registers 1

    .line 915
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->poll()V

    return-void
.end method

.method public poll()V
    .registers 9

    .line 921
    :goto_0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    .line 922
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    .line 923
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->showOnlyOnce()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->getCounter()I

    move-result v0

    if-gtz v0, :cond_46

    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenIds:Ljava/util/Set;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    .line 924
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 925
    :cond_46
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 928
    :cond_4c
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 929
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 930
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/components/Notification;

    .line 931
    iget-object v4, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenNotifications:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 932
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Notification;->checkCondition()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Notification;->getLastShownDay()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xb4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_67

    .line 933
    :cond_8d
    iget-object v4, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenNotifications:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_67

    .line 938
    :cond_93
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Notification;->showOnlyOnce()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Notification;->getCounter()I

    move-result v4

    if-nez v4, :cond_67

    .line 939
    :cond_9f
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Notification;->checkCondition()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 940
    iget-object v4, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 945
    :cond_ab
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->locked:Z

    if-nez v0, :cond_dc

    .line 946
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Notification;

    .line 947
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/Notificator;->informListeners(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 948
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->isCloseable()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 949
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenNotifications:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->showOnlyOnce()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 951
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenIds:Ljava/util/Set;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_dc
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Notification;

    .line 888
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 889
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 890
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/components/Notification;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 891
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_6

    .line 894
    :cond_23
    const-string v0, "hidden ids"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 895
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 896
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 897
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_31

    .line 899
    :cond_41
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 901
    const-string v0, "hidden notifications"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 902
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 903
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hiddenNotifications:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Notification;

    .line 904
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_52

    .line 906
    :cond_66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 908
    const-string v0, "task manager"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 909
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 910
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public showNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 3

    .line 119
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->isImmersive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 120
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/Notificator;->informListeners(Linfo/flowersoft/theotown/city/components/Notification;)V

    goto :goto_17

    .line 122
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->notificationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_17
    :goto_17
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->poll()V

    return-void
.end method

.method public unlock()V
    .registers 2

    const/4 v0, 0x0

    .line 980
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->locked:Z

    const/4 v0, 0x0

    .line 981
    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->currentNotification:Linfo/flowersoft/theotown/city/components/Notification;

    return-void
.end method

.method public update()V
    .registers 2

    .line 967
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->update()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;)V
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

    .line 241
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;->val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;->val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->getLastBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$1;->val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->getLastValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass10 (info.flowersoft.theotown.components.notification.DefaultNotificator$10)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$10;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$lowSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
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

    .line 337
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$10;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$10;->val$lowSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 4

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 341
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$10;->val$lowSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 342
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getProvidedAmount(I)I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    return v2
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass11 (info.flowersoft.theotown.components.notification.DefaultNotificator$11)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$highSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
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

    .line 348
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;->val$highSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 348
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 348
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
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

    .line 351
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 352
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;)V

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass11.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$11$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 353
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 356
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;->access$400(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;->access$300(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$11;->val$highSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass12 (info.flowersoft.theotown.components.notification.DefaultNotificator$12)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$12;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$highSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
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

    .line 366
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$12;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$12;->val$highSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 369
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 370
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$12;->val$highSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 371
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getProvidedAmount(I)I

    move-result v0

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass13 (info.flowersoft.theotown.components.notification.DefaultNotificator$13)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$badRoad:[Linfo/flowersoft/theotown/city/objects/Road;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/city/objects/Road;)V
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

    .line 377
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->val$badRoad:[Linfo/flowersoft/theotown/city/objects/Road;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 377
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 377
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 377
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 377
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
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

    .line 380
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 381
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)V

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass13.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$13$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 382
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 385
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;

    iget-object v1, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->val$badRoad:[Linfo/flowersoft/theotown/city/objects/Road;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_16

    .line 387
    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->access$500(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    int-to-float v2, v2

    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/City;->focus(FF)V

    .line 389
    :cond_16
    new-instance v0, Linfo/flowersoft/theotown/tools/MarkTool;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->access$600(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;-><init>(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 390
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->access$700(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x5d4

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;->setName(Lio/blueflower/stapel2d/util/Getter;)V

    .line 391
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;->access$800(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$13;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass14 (info.flowersoft.theotown.components.notification.DefaultNotificator$14)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final carTrafficHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$badRoad:[Linfo/flowersoft/theotown/city/objects/Road;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/city/objects/Road;)V
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

    .line 401
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;->val$badRoad:[Linfo/flowersoft/theotown/city/objects/Road;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 404
    iget-object p1, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    .line 405
    const-class p2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;->carTrafficHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 4

    .line 409
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;->carTrafficHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getBadRoad()Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    .line 410
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$14;->val$badRoad:[Linfo/flowersoft/theotown/city/objects/Road;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    if-eqz v0, :cond_18

    .line 411
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    return v2
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass15 (info.flowersoft.theotown.components.notification.DefaultNotificator$15)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$15;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 416
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$15;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;
    .registers 3

    .line 419
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$15;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$900(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 420
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    .line 421
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 416
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$15;->get()Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass16 (info.flowersoft.theotown.components.notification.DefaultNotificator$16)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$16;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$16;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;
    .registers 3

    .line 427
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$16;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1000(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 428
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    .line 429
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 424
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$16;->get()Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass17 (info.flowersoft.theotown.components.notification.DefaultNotificator$17)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$17;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$17;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 437
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$17;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 440
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$17;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xa6b

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass18 (info.flowersoft.theotown.components.notification.DefaultNotificator$18)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 443
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledNeeder()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 443
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$18;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass19 (info.flowersoft.theotown.components.notification.DefaultNotificator$19)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$19;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 449
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$19;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$19;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 452
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$19;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledNeeder()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass2 (info.flowersoft.theotown.components.notification.DefaultNotificator$2)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;)V
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

    .line 247
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;->val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;->val$pollutedWaterPumpController:Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->getLastBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 247
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$2;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass20 (info.flowersoft.theotown.components.notification.DefaultNotificator$20)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$20;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 461
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$20;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 461
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$20;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 464
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$20;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x216

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass21 (info.flowersoft.theotown.components.notification.DefaultNotificator$21)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 467
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 470
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledProducer()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 467
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$21;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass22 (info.flowersoft.theotown.components.notification.DefaultNotificator$22)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$22;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 473
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$22;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$22;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 476
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$22;->val$wasteControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledProducer()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass23 (info.flowersoft.theotown.components.notification.DefaultNotificator$23)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$23;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 485
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$23;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 485
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$23;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 488
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$23;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x58c

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass24 (info.flowersoft.theotown.components.notification.DefaultNotificator$24)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 491
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 494
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledNeeder()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 491
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$24;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass25 (info.flowersoft.theotown.components.notification.DefaultNotificator$25)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$25;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 497
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$25;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$25;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 500
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$25;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledNeeder()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass26 (info.flowersoft.theotown.components.notification.DefaultNotificator$26)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$26;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 509
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$26;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 509
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$26;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 512
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$26;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x121

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass27 (info.flowersoft.theotown.components.notification.DefaultNotificator$27)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 515
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 518
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledProducer()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 515
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$27;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass28 (info.flowersoft.theotown.components.notification.DefaultNotificator$28)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$28;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 521
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$28;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$28;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 524
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$28;->val$bodyDisposalControllerGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->getOverfilledProducer()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass29 (info.flowersoft.theotown.components.notification.DefaultNotificator$29)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$29;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 542
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$29;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 545
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$29;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    .line 546
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getType()Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Linfo/flowersoft/theotown/city/objects/CrimeType;->GRAFFITI:Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass3 (info.flowersoft.theotown.components.notification.DefaultNotificator$3)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$3;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$fullSchoolController:Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;)V
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

    .line 262
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$3;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$3;->val$fullSchoolController:Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$3;->val$fullSchoolController:Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->getOverloaded()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass30 (info.flowersoft.theotown.components.notification.DefaultNotificator$30)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$30;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 549
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$30;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 552
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$30;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 549
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$30;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass31 (info.flowersoft.theotown.components.notification.DefaultNotificator$31)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$31;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "[F>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 557
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$31;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 557
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$31;->get()[F

    move-result-object v0

    return-object v0
.end method

.method public get()[F
    .registers 6

    .line 560
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$31;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    .line 561
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getLocation()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 562
    aget v2, v0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v1

    aput v0, v4, v3

    return-object v4
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass32 (info.flowersoft.theotown.components.notification.DefaultNotificator$32)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 570
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 570
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 4

    .line 573
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    .line 574
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 576
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->getAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    .line 577
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x329

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$32;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    .line 578
    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 577
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 580
    :cond_3b
    const-string v0, ""

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass33 (info.flowersoft.theotown.components.notification.DefaultNotificator$33)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$33;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 584
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$33;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 587
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$33;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$33;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1300(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass34 (info.flowersoft.theotown.components.notification.DefaultNotificator$34)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 591
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 594
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    .line 595
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 597
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1500(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$34;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1400(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->getAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_30
    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass35 (info.flowersoft.theotown.components.notification.DefaultNotificator$35)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 608
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 608
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 4

    .line 611
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    .line 612
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 613
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->getAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    .line 614
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x43a

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    .line 616
    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 614
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 618
    :cond_3f
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$35;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x494

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass36 (info.flowersoft.theotown.components.notification.DefaultNotificator$36)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$36;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 622
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$36;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 625
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$36;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$36;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1600(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass37 (info.flowersoft.theotown.components.notification.DefaultNotificator$37)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public location:[F

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$rocketIssuedDisaster:[Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Z)V
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

    .line 639
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->val$rocketIssuedDisaster:[Z

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 642
    const-string p1, "$missiledisaster"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 643
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GENERAL:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    const/16 p1, 0x10b

    .line 644
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(I)V

    const/4 p1, 0x1

    .line 645
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 646
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 679
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$2;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$2;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationProvider(Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass37.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$37$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;Linfo/flowersoft/theotown/city/City;)V
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

    .line 646
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 7

    const/4 v0, 0x1

    .line 649
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    .line 650
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    .line 652
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->isActive()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_36

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_36

    .line 674
    :cond_2f
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->val$rocketIssuedDisaster:[Z

    aput-boolean v4, v0, v4

    return v4

    .line 653
    :cond_36
    :goto_36
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v5, v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->val$rocketIssuedDisaster:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_3f

    return v0

    .line 656
    :cond_3f
    iget-object v3, v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1700(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultTraffic;

    move-result-object v3

    const-class v5, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    .line 657
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    const-class v5, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;

    .line 658
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;

    .line 659
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->hasCausedDisasterAndReset()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 660
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v3, v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->val$rocketIssuedDisaster:[Z

    aput-boolean v0, v3, v4

    .line 662
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 663
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->getLocation()[I

    move-result-object v1

    goto :goto_78

    .line 664
    :cond_6c
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 665
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->getLocation()[I

    move-result-object v1

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    :goto_78
    if-eqz v1, :cond_8b

    .line 668
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    aget v3, v1, v4

    int-to-float v3, v3

    aget v1, v1, v0

    int-to-float v1, v1

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v4

    aput v1, v5, v0

    iput-object v5, v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->location:[F

    .line 671
    :cond_8b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->val$rocketIssuedDisaster:[Z

    aget-boolean v0, v0, v4

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass37.AnonymousClass2 (info.flowersoft.theotown.components.notification.DefaultNotificator$37$2)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$2;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "[F>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 679
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$2;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 679
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$2;->get()[F

    move-result-object v0

    return-object v0
.end method

.method public get()[F
    .registers 2

    .line 682
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37$2;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$37;->location:[F

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass38 (info.flowersoft.theotown.components.notification.DefaultNotificator$38)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 689
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 691
    const-string p1, "$notify_earthquake"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 692
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER1:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 693
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0xadb

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 694
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 695
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass38.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$38$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;Linfo/flowersoft/theotown/city/City;)V
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

    .line 695
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 698
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

    .line 699
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 700
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$38;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;->getLocation()[I

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass39 (info.flowersoft.theotown.components.notification.DefaultNotificator$39)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 710
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 712
    const-string p1, "$notify_flooding"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 713
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER1:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 714
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x831

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 715
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 716
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass39.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$39$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;Linfo/flowersoft/theotown/city/City;)V
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

    .line 716
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 719
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

    .line 720
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 721
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$39;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;->getLocation()[I

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass4 (info.flowersoft.theotown.components.notification.DefaultNotificator$4)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$fullSchoolController:Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;)V
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

    .line 268
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;->val$fullSchoolController:Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;->val$fullSchoolController:Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->getOverloaded()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 268
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$4;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass40 (info.flowersoft.theotown.components.notification.DefaultNotificator$40)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$rocketIssuedDisaster:[Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Z)V
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

    .line 731
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;->val$rocketIssuedDisaster:[Z

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 733
    const-string p1, "$notify_meteorite"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 734
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER1:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 735
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x10f

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 736
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 737
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass40.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$40$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;Linfo/flowersoft/theotown/city/City;)V
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

    .line 737
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 5

    .line 740
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    .line 741
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->isActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;

    iget-object v3, v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$40;->val$rocketIssuedDisaster:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_27

    .line 742
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;->getLocation()[I

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    const/4 v0, 0x1

    return v0

    :cond_27
    return v2
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass41 (info.flowersoft.theotown.components.notification.DefaultNotificator$41)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 752
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 754
    const-string p1, "$notify_nuke"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 755
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GENERAL:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 756
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0xb63

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 757
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 758
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass41.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$41$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;Linfo/flowersoft/theotown/city/City;)V
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

    .line 758
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 761
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    .line 762
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 763
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$41;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->getLocation()[I

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass42 (info.flowersoft.theotown.components.notification.DefaultNotificator$42)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 773
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 775
    const-string p1, "$notify_tornado"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 776
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER1:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 777
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x30e

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 778
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 779
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass42.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$42$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;Linfo/flowersoft/theotown/city/City;)V
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

    .line 779
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 782
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

    .line 783
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 784
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$42;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->getLocation()[I

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass43 (info.flowersoft.theotown.components.notification.DefaultNotificator$43)
.class public Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildImportantNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$rocketIssuedDisaster:[Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;[Z)V
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

    .line 794
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;->val$rocketIssuedDisaster:[Z

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 796
    const-string p1, "$notify_ufo"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 797
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GENERAL:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 798
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x698

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 799
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 800
    new-instance p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43$1;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p0, p2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass43.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$43$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43$1;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;Linfo/flowersoft/theotown/city/City;)V
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

    .line 800
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 5

    .line 803
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$1200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    .line 804
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->isActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;

    iget-object v3, v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$43;->val$rocketIssuedDisaster:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_27

    .line 805
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->getLocation()[I

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    const/4 v0, 0x1

    return v0

    :cond_27
    return v2
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass5 (info.flowersoft.theotown.components.notification.DefaultNotificator$5)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$5;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$fullHospitalController:Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;)V
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

    .line 284
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$5;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$5;->val$fullHospitalController:Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 2

    .line 287
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$5;->val$fullHospitalController:Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->getOverloaded()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass6 (info.flowersoft.theotown.components.notification.DefaultNotificator$6)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$fullHospitalController:Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;)V
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

    .line 290
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;->val$fullHospitalController:Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 293
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;->val$fullHospitalController:Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->getOverloaded()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 290
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$6;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass7 (info.flowersoft.theotown.components.notification.DefaultNotificator$7)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$7;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;)V
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

    .line 304
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$7;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass8 (info.flowersoft.theotown.components.notification.DefaultNotificator$8)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$8;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 310
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$8;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 313
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$8;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->access$000(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 310
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$8;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass9 (info.flowersoft.theotown.components.notification.DefaultNotificator$9)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "DefaultNotificator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->buildOtherNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final synthetic val$lowSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
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

    .line 319
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;->this$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;->val$lowSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 319
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 319
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
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

    .line 322
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 323
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    new-instance v3, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;-><init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;)V

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator.AnonymousClass9.AnonymousClass1 (info.flowersoft.theotown.components.notification.DefaultNotificator$9$1)
.class Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;
.super Ljava/lang/Object;
.source "DefaultNotificator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;->access$200(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;->access$100(Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9$1;->this$1:Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$9;->val$lowSchool:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$vbkJ7xnCNYV0SH83u-V-XO6btUk()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda1 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$XM4_ytpkS7jzPjp_sXEdPQ9JZCo()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda10 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$BO0fHiMxCEVHCsrboBeWAR-zqZo()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda11 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$KUcrC10nS000dCI_h8MbAFibM2k()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda12 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$SPM9zb_EX9ow3otNxSxJPCI5CWU()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda13 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$kiJIZYyKRETXJYDbviyAe74TqHA()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda14 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$SEp0vKWOWNdFBktJHyVZt4Z5ARg()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda15 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$9xLaMExOGg8y7YDwibimT3bYIgI()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda16 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$QHKrQCeblINw_VgeGx7LcnYRQzM()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda17 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$6JpfOI92k3-8PC3T9uDwhELuejA()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda18 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$p76wLMQmvRF9LBvjdDgXzRPTGc8()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda19 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$IlY1l1-PUg5YcZOrfBVBzhlYkd8()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda2 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$j1NDrtsho0NWAGNQUgIOPv79tiE()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda20 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$NFBwFlG-yj-8Wes7z6dn_St1HXU()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda21 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$KhlamXfUBmTx94RQM8cb8QKbVII()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda22 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$km5Q6LR2CWFcStz0APpjGLkfRuA()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda23 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$kfLGNcl1cQCEyUq0vdG_o4zRrb0()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda24 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$-wtN_tEB50iSE6mwaf3-PFpz99E()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda25 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$JuEUnZ2sDyt3vKT1oZajMPPeqp4()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda26 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$cIlQI9lzRLvNpji4MOoJ5XsvKFE()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda27 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$QVjKJlLp7kP2kSuZy78V-EiQdyY()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda28 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$8auzpkM5-kEEi8_S4dNjnwVeRuA(Linfo/flowersoft/theotown/components/notification/DefaultNotificator;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda3 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$L4ErfSxBGER76AaoYyrvY_KM1Mk()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda4 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$bPBY35FMTbuB5tFtovk7aNmzZkw()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda5 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$syfAP3it1PU7_7HMXzq_GPGEcVc()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda6 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$69BeCtrQHEeu71QLxjmRg1F6GlY()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda7 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$Z8iRwQsZGf6tfAapP2EpEsi8aTQ()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda8 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$fddfEjhvDFcLvYYi-3tsIS9cUB0()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda9 (info.flowersoft.theotown.components.notification.DefaultNotificator$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/components/notification/DefaultNotificator$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->$r8$lambda$pxTmJdVoGOh-zt_aag987ChV52w()Z

    move-result v0

    return v0
.end method
