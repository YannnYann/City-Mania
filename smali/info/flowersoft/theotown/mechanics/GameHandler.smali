###### Class info.flowersoft.theotown.mechanics.GameHandler (info.flowersoft.theotown.mechanics.GameHandler)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler;
.super Ljava/lang/Object;
.source "GameHandler.java"


# static fields
.field public static EVENT_EARNED_DIAMONDS:Ljava/lang/String; = null

.field public static EVENT_SPEND_DIAMONDS:Ljava/lang/String; = null

.field public static MAX_LOG_LENGTH:I = 0x400

.field public static instance:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public static useServices:Z


# instance fields
.field public final EVENT_EARNED_REGION_COINS:Ljava/lang/String;

.field public final EVENT_LAST_TIME_EARNED_REGION_COINS:Ljava/lang/String;

.field public final EVENT_SPENT_REGION_COINS:Ljava/lang/String;

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public earnedRegionCoins:I

.field public isSaving:Z

.field public final lastCityManager:Linfo/flowersoft/theotown/mechanics/LastCityManager;

.field public lastSaveTime:J

.field public final lastSeenRegionRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public lastTimeEarnedRegionCoins:I

.field public final log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/mechanics/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final notGSSyncedEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final notGSSyncedSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final pendingLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/mechanics/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public pendingLogPending:Z

.field public final redeemedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final regionUnlockTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final regionUnlockTimeLastFetched:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

.field public final spendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public spentRegionCoins:I

.field public ssp:Linfo/flowersoft/theotown/util/SSP;

.field public final timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

.field public final unlockedFeatureEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final userIds:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Igiu-9aaftqj7jPcww8SL8Ge1tc(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/util/SSP$Writer;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 512
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_f

    .line 513
    :try_start_5
    invoke-interface {p1}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    .line 514
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_c

    .line 516
    iput-boolean v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->isSaving:Z

    return-void

    :catchall_c
    move-exception p1

    .line 514
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    :try_start_e
    throw p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    :catchall_f
    move-exception p1

    .line 516
    iput-boolean v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->isSaving:Z

    .line 517
    throw p1
.end method

.method public static synthetic $r8$lambda$ZMmLYWBm9-rad6aPNytgzV2xdi4(Linfo/flowersoft/theotown/mechanics/GameHandler;Ljava/util/List;)V
    .registers 3

    .line 764
    monitor-enter p0

    .line 765
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 766
    iput-boolean p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLogPending:Z

    .line 767
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 768
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public static synthetic $r8$lambda$g9_exDosfket5QfnmBoWeFBOyz0(Linfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 2

    const/4 v0, 0x0

    .line 772
    iput-boolean v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLogPending:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 66
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 69
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 70
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 79
    const-string v0, "game handler"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 81
    new-instance v0, Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    .line 82
    new-instance v0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 83
    new-instance v0, Linfo/flowersoft/theotown/mechanics/LastCityManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/mechanics/LastCityManager;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastCityManager:Linfo/flowersoft/theotown/mechanics/LastCityManager;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemedEvents:Ljava/util/Set;

    .line 94
    const-string v0, "TJT0GyPYv8"

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_REGION_COINS:Ljava/lang/String;

    .line 95
    const-string v0, "Pwqqs9QtPt"

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPENT_REGION_COINS:Ljava/lang/String;

    .line 96
    const-string v0, "OMJuWs7PF7"

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_LAST_TIME_EARNED_REGION_COINS:Ljava/lang/String;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    .line 98
    iput v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    .line 99
    iput v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastTimeEarnedRegionCoins:I

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSeenRegionRules:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLogPending:Z

    .line 110
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTimeLastFetched:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_DIAMONDS:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 1

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->updateLog()V

    return-void
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/mechanics/GameHandler;)I
    .registers 1

    .line 49
    iget p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    return p0
.end method

.method public static synthetic access$1202(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I
    .registers 2

    .line 49
    iput p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    return p1
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/mechanics/GameHandler;)I
    .registers 1

    .line 49
    iget p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    return p0
.end method

.method public static synthetic access$1302(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I
    .registers 2

    .line 49
    iput p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    return p1
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/mechanics/GameHandler;)I
    .registers 1

    .line 49
    iget p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastTimeEarnedRegionCoins:I

    return p0
.end method

.method public static synthetic access$1402(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I
    .registers 2

    .line 49
    iput p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastTimeEarnedRegionCoins:I

    return p1
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Map;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPEND_DIAMONDS:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Set;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/mechanics/GameHandler;)I
    .registers 1

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getEarnedDiamonds()I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/mechanics/GameHandler;)I
    .registers 1

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getSpendDiamonds()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    return-object p0
.end method

.method public static getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;
    .registers 1

    .line 705
    sget-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->instance:Linfo/flowersoft/theotown/mechanics/GameHandler;

    if-nez v0, :cond_b

    .line 706
    new-instance v0, Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->instance:Linfo/flowersoft/theotown/mechanics/GameHandler;

    .line 708
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->instance:Linfo/flowersoft/theotown/mechanics/GameHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized buyFeature(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z
    .registers 10

    monitor-enter p0

    .line 629
    :try_start_1
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Feature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bought "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 632
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_e9

    .line 635
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 v2, 0x3e8

    if-le p1, v2, :cond_36

    goto/16 :goto_e9

    .line 636
    :cond_36
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 637
    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-nez v2, :cond_47

    .line 638
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setFeaturePurchased(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    goto :goto_58

    :catchall_44
    move-exception p1

    goto/16 :goto_ee

    .line 640
    :cond_47
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->event:Ljava/lang/String;

    if-eqz v2, :cond_58

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 641
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->event:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->incrementEvent(Ljava/lang/String;I)Z

    .line 645
    :cond_58
    :goto_58
    iget v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    if-lez v2, :cond_77

    .line 646
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v3

    iget v4, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    div-int/lit16 v4, v4, 0x1f4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->setFastForwardDays(I)V

    .line 647
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v2

    iget v3, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    div-int/lit16 v3, v3, 0x1f4

    int-to-double v3, v3

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3, v4}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 650
    :cond_77
    iget v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->shortBuildTimeMin:I

    const-wide/32 v3, 0xea60

    if-lez v2, :cond_90

    .line 651
    iget-object v5, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    int-to-long v6, v2

    mul-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->addShortBuildTime(J)V

    .line 652
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v2

    iget v5, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->shortBuildTimeMin:I

    int-to-double v5, v5

    const/4 v7, 0x5

    invoke-virtual {v2, v7, v5, v6}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 655
    :cond_90
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    if-lez v2, :cond_be

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bought "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v1, v5}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 657
    :cond_be
    iget v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->doubledIncomeTimeMin:I

    if-lez v2, :cond_d3

    .line 658
    iget-object v5, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    int-to-long v6, v2

    mul-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->addDoubledIncomeMS(J)V

    .line 659
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v2

    iget v3, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->doubledIncomeTimeMin:I

    int-to-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 662
    :cond_d3
    iget v1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->freeTunnels:I

    if-lez v1, :cond_dc

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->addFreeTunnels(I)V

    .line 664
    :cond_dc
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz p1, :cond_25

    .line 665
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 669
    :cond_e9
    :goto_e9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_ec
    .catchall {:try_start_1 .. :try_end_ec} :catchall_44

    .line 671
    monitor-exit p0

    return v1

    :goto_ee
    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_44

    throw p1
.end method

.method public declared-synchronized canEarnDiamonds()Z
    .registers 3

    monitor-enter p0

    .line 721
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    add-int/lit16 v0, v0, 0x2710

    const v1, 0x186a0

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 115
    sput-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->instance:Linfo/flowersoft/theotown/mechanics/GameHandler;

    return-void
.end method

.method public declared-synchronized earnDiamonds(IZLjava/lang/String;)V
    .registers 8

    monitor-enter p0

    if-gtz p1, :cond_5

    .line 578
    monitor-exit p0

    return-void

    .line 579
    :cond_5
    :try_start_5
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 583
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 585
    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->logChange(ILjava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 587
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p3

    new-instance v0, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    sget-object v1, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_DIAMONDS:Ljava/lang/String;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getEarnedDiamonds()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 588
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->logDiamonds()V

    if-eqz p2, :cond_47

    .line 591
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p2

    const/4 p3, 0x0

    int-to-double v0, p1

    invoke-virtual {p2, p3, v0, v1}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    goto :goto_47

    :catchall_45
    move-exception p1

    goto :goto_49

    .line 593
    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_45

    throw p1
.end method

.method public declared-synchronized earnDiamondsEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    .line 596
    :try_start_1
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isEventRedeemed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 597
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    .line 598
    invoke-virtual {p0, p1, p4, p3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p3

    add-int/2addr v0, p1

    if-lt p3, v0, :cond_1e

    .line 600
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemEvent(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_20

    .line 604
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1c

    throw p1
.end method

.method public earnRegionCoins(I)V
    .registers 6

    if-lez p1, :cond_1d

    .line 295
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    .line 296
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    const/4 v2, 0x0

    const-string v3, "TJT0GyPYv8"

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void

    .line 294
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Amount must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized getDiamonds()I
    .registers 7

    monitor-enter p0

    .line 562
    :try_start_1
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    if-eqz v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 563
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getEarnedDiamonds()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getSpendDiamonds()I

    move-result v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_48

    sub-int/2addr v0, v1

    const v1, 0x186a0

    if-le v0, v1, :cond_57

    const/4 v1, 0x1

    .line 566
    :try_start_17
    new-instance v2, Ljava/lang/String;

    const-string v3, "VkVSRMOEQ0hUSUc="

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 567
    new-instance v3, Ljava/lang/String;

    const-string v5, "aW5mby5mbG93ZXJzb2Z0LnRoZW90b3duLnJlc291cmNlcy5Db25zdGFudHM="

    invoke-static {v5}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_47} :catch_4a
    .catchall {:try_start_17 .. :try_end_47} :catchall_48

    goto :goto_57

    :catchall_48
    move-exception v0

    goto :goto_59

    :catch_4a
    move-exception v2

    .line 570
    :try_start_4b
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 571
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_48

    .line 574
    :cond_57
    :goto_57
    monitor-exit p0

    return v0

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_48

    throw v0
.end method

.method public final getEarnedDiamonds()I
    .registers 3

    .line 550
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 551
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 552
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    .line 550
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getLastCityManager()Linfo/flowersoft/theotown/mechanics/LastCityManager;
    .registers 2

    .line 789
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastCityManager:Linfo/flowersoft/theotown/mechanics/LastCityManager;

    return-object v0
.end method

.method public getLastSaveTime()J
    .registers 3

    .line 282
    iget-wide v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSaveTime:J

    return-wide v0
.end method

.method public getLastSeenRegionRulesTime(I)J
    .registers 4

    .line 540
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSeenRegionRules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_13

    .line 541
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLog()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/mechanics/LogEntry;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getRawPurchases()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 681
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getRegionCoins()I
    .registers 3

    .line 290
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRegionUnlockTime(I)J
    .registers 10

    .line 316
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTimeLastFetched:Ljava/util/Map;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a2

    .line 318
    :try_start_6
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTimeLastFetched:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 319
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTimeLastFetched:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/16 v4, 0x2710

    goto :goto_3c

    :cond_3a
    const/16 v4, 0x1388

    :goto_3c
    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_81

    goto :goto_44

    :catchall_42
    move-exception p1

    goto :goto_a4

    .line 320
    :cond_44
    :goto_44
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v3}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSFHjo2N6f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/mechanics/GameHandler$7;

    invoke-direct {v5, p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$7;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;I)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v3, v4, v6, v7, v5}, Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 332
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTimeLastFetched:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_6 .. :try_end_82} :catchall_42

    .line 335
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_a2

    .line 336
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    monitor-enter v1

    .line 337
    :try_start_86
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_9c

    .line 339
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_9a
    move-exception p1

    goto :goto_a0

    :cond_9c
    const-wide/16 v2, -0x1

    .line 341
    monitor-exit v1

    return-wide v2

    .line 343
    :goto_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_9a

    throw p1

    :catchall_a2
    move-exception p1

    goto :goto_a6

    .line 334
    :goto_a4
    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_42

    :try_start_a5
    throw p1

    .line 335
    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_a2

    throw p1
.end method

.method public getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;
    .registers 2

    .line 781
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    return-object v0
.end method

.method public final getSpendDiamonds()I
    .registers 3

    .line 556
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 557
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 558
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    .line 556
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;
    .registers 2

    .line 785
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    return-object v0
.end method

.method public getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 2

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUserIds()[J
    .registers 8

    monitor-enter p0

    .line 531
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    new-array v1, v1, [J

    .line 533
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/LongMap$Entry;

    add-int/lit8 v4, v2, 0x1

    .line 534
    iget-wide v5, v3, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    aput-wide v5, v1, v2
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    move v2, v4

    goto :goto_10

    :catchall_24
    move-exception v0

    goto :goto_28

    .line 536
    :cond_26
    monitor-exit p0

    return-object v1

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_24

    throw v0
.end method

.method public init(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.game"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 120
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 121
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    const/16 v0, 0x17a

    .line 123
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_DIAMONDS:Ljava/lang/String;

    const/16 v0, 0xc41

    .line 124
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPEND_DIAMONDS:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->loadData()V

    .line 128
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    sget-boolean v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->useServices:Z

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->setup(Z)V

    .line 129
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->setup()V

    .line 130
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    new-instance v0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/mechanics/GameHandler$1;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->registerStatusListener(Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;)V

    .line 168
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendEvents()V

    .line 170
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendPurchases()V

    .line 172
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->logDiamonds()V

    .line 174
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->updateLog()V

    return-void
.end method

.method public declared-synchronized isEventRedeemed(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 625
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized isFeatureBought(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z
    .registers 3

    monitor-enter p0

    .line 701
    :try_start_1
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->event:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-nez p1, :cond_15

    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :catchall_13
    move-exception p1

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_13

    throw p1
.end method

.method public declared-synchronized loadData()V
    .registers 10

    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 379
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->loadData(Linfo/flowersoft/theotown/util/SSP$Reader;)V

    .line 380
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->loadData(Linfo/flowersoft/theotown/util/SSP$Reader;)V

    .line 381
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastCityManager:Linfo/flowersoft/theotown/mechanics/LastCityManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->loadData(Linfo/flowersoft/theotown/util/SSP$Reader;)V

    .line 383
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    sget-object v2, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_DIAMONDS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 384
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    sget-object v2, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPEND_DIAMONDS:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 385
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    const-string v2, "not synced earned diamonds"

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 386
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    const-string v2, "not synced spend diamonds"

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 387
    const-string v1, "google game services"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Linfo/flowersoft/theotown/mechanics/GameHandler;->useServices:Z

    .line 388
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    const-string v2, "feature events"

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Reader;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 389
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    const-string v2, "online earned diamonds"

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 390
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    const-string v2, "online spend diamonds"

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 391
    const-string v1, "last save time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSaveTime:J

    .line 392
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemedEvents:Ljava/util/Set;

    const-string v2, "redeemed events"

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Reader;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 395
    const-string v1, "TJT0GyPYv8"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    .line 396
    const-string v1, "Pwqqs9QtPt"

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    .line 397
    const-string v1, "OMJuWs7PF7"

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastTimeEarnedRegionCoins:I
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_d1

    .line 401
    :try_start_9b
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "last seen region rules time"

    const-string v4, "{}"

    invoke-interface {v0, v2, v4}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_d7

    move v4, v3

    .line 404
    :goto_af
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_d7

    .line 405
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 407
    iget-object v8, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSeenRegionRules:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    :catchall_d1
    move-exception v0

    goto/16 :goto_156

    :catch_d4
    move-exception v0

    goto/16 :goto_151

    .line 412
    :cond_d7
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 413
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v2, "change log"

    const-string v4, "[]"

    invoke-interface {v0, v2, v4}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v3

    .line 414
    :goto_ea
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_101

    .line 415
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 416
    iget-object v5, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    new-instance v6, Linfo/flowersoft/theotown/mechanics/LogEntry;

    invoke-direct {v6, v4}, Linfo/flowersoft/theotown/mechanics/LogEntry;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_ea

    .line 421
    :cond_101
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v2, "log"

    const-string v4, "[]"

    invoke-interface {v0, v2, v4}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v3

    .line 423
    :goto_114
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_12b

    .line 424
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 425
    iget-object v5, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    new-instance v6, Linfo/flowersoft/theotown/mechanics/LogEntry;

    invoke-direct {v6, v4}, Linfo/flowersoft/theotown/mechanics/LogEntry;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_114

    .line 430
    :cond_12b
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/LongMap;->clear()V

    .line 431
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v2, "user"

    const-string v4, "[]"

    invoke-interface {v0, v2, v4}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 432
    :goto_13d
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_154

    .line 433
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5, v2}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_14e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_9b .. :try_end_14e} :catch_d4
    .catchall {:try_start_9b .. :try_end_14e} :catchall_d1

    add-int/lit8 v3, v3, 0x1

    goto :goto_13d

    .line 437
    :goto_151
    :try_start_151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_d1

    .line 440
    :cond_154
    monitor-exit p0

    return-void

    :goto_156
    :try_start_156
    monitor-exit p0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_d1

    throw v0
.end method

.method public final declared-synchronized logChange(ILjava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    monitor-enter p0

    .line 725
    :try_start_2
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    const-string v2, "964fe22f8"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 726
    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 728
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lvm2/LuaValue;

    aput-object v2, v5, v0

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    .line 727
    invoke-static {v5}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/Varargs;)Z

    goto :goto_40

    :catchall_39
    move-exception v0

    move-object p1, v0

    goto :goto_90

    :cond_3c
    const/16 v1, 0x3039

    .line 732
    sput v1, Linfo/flowersoft/theotown/resources/Constants;->VERDÄCHTIG:I

    .line 736
    :goto_40
    invoke-static {p2}, Linfo/flowersoft/theotown/util/Hashing;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "e7f6e577e92a006b8325f9ab0d85917d5c8373816f88ff161adad835011af796"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_39

    if-eqz v1, :cond_4e

    monitor-exit p0

    return-void

    .line 738
    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v4

    .line 739
    new-instance v2, Linfo/flowersoft/theotown/mechanics/LogEntry;

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v6

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/mechanics/LogEntry;-><init>(IILjava/lang/String;J)V

    .line 741
    :goto_61
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Linfo/flowersoft/theotown/mechanics/GameHandler;->MAX_LOG_LENGTH:I

    if-lt p1, p2, :cond_71

    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_61

    .line 742
    :cond_71
    :goto_71
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Linfo/flowersoft/theotown/mechanics/GameHandler;->MAX_LOG_LENGTH:I

    if-lt p1, p2, :cond_81

    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_71

    .line 744
    :cond_81
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->updateLog()V
    :try_end_8e
    .catchall {:try_start_4e .. :try_end_8e} :catchall_39

    .line 748
    monitor-exit p0

    return-void

    :goto_90
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_39

    throw p1
.end method

.method public final logDiamonds()V
    .registers 6

    .line 712
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    .line 714
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 715
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Diamonds"

    const-string v3, "Have"

    invoke-interface {v1, v2, v3, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized notifyLogin(J)V
    .registers 5

    monitor-enter p0

    .line 523
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->containsKey(J)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_13

    .line 524
    monitor-exit p0

    return-void

    .line 526
    :cond_13
    :try_start_13
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1f

    .line 528
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized purchaseRaw(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 675
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->incrementEvent(Ljava/lang/String;I)Z

    .line 677
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/backend/PurchasesService;

    invoke-direct {v2}, Linfo/flowersoft/theotown/backend/PurchasesService;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Linfo/flowersoft/theotown/backend/PurchasesService;->addPurchase(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 678
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized redeemEvent(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 621
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 622
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized saveData()V
    .registers 8

    monitor-enter p0

    .line 443
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 445
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->saveData(Linfo/flowersoft/theotown/util/SSP$Writer;)V

    .line 446
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->saveData(Linfo/flowersoft/theotown/util/SSP$Writer;)V

    .line 447
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastCityManager:Linfo/flowersoft/theotown/mechanics/LastCityManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->saveData(Linfo/flowersoft/theotown/util/SSP$Writer;)V

    .line 449
    sget-object v1, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_DIAMONDS:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 450
    sget-object v1, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPEND_DIAMONDS:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string v1, "not synced earned diamonds"

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string v1, "not synced spend diamonds"

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v1, "google game services"

    sget-boolean v2, Linfo/flowersoft/theotown/mechanics/GameHandler;->useServices:Z

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    const-string v1, "feature events"

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 455
    const-string v1, "online earned diamonds"

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineEarnedDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v1, "online spend diamonds"

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v1, "last save time"

    iget-wide v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSaveTime:J

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 458
    const-string v1, "redeemed events"

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->redeemedEvents:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 459
    const-string v1, "TJT0GyPYv8"

    iget v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnedRegionCoins:I

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v1, "Pwqqs9QtPt"

    iget v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string v1, "OMJuWs7PF7"

    iget v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastTimeEarnedRegionCoins:I

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V
    :try_end_95
    .catchall {:try_start_1 .. :try_end_95} :catchall_cf

    .line 464
    :try_start_95
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 465
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSeenRegionRules:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSeenRegionRules:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_a4

    :catchall_cf
    move-exception v0

    goto/16 :goto_185

    :catch_d2
    move-exception v1

    goto/16 :goto_163

    .line 468
    :cond_d5
    const-string v2, "last seen region rules time"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 472
    :goto_e5
    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_103

    .line 473
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 474
    iget-object v5, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->log:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/mechanics/LogEntry;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/mechanics/LogEntry;->save(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 475
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    .line 477
    :cond_103
    const-string v3, "change log"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 482
    :goto_111
    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12f

    .line 483
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 484
    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/mechanics/LogEntry;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/mechanics/LogEntry;->save(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 485
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_111

    .line 487
    :cond_12f
    const-string v2, "log"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 492
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->userIds:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_147
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_159

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 493
    iget-wide v3, v3, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(J)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_147

    .line 495
    :cond_159
    const-string v2, "user"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_162
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_95 .. :try_end_162} :catch_d2
    .catchall {:try_start_95 .. :try_end_162} :catchall_cf

    goto :goto_166

    .line 498
    :goto_163
    :try_start_163
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 501
    :goto_166
    iget-boolean v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->isSaving:Z

    if-eqz v1, :cond_173

    .line 504
    monitor-enter p0
    :try_end_16b
    .catchall {:try_start_163 .. :try_end_16b} :catchall_cf

    .line 505
    :try_start_16b
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    .line 506
    monitor-exit p0

    goto :goto_183

    :catchall_170
    move-exception v0

    monitor-exit p0
    :try_end_172
    .catchall {:try_start_16b .. :try_end_172} :catchall_170

    :try_start_172
    throw v0

    :cond_173
    const/4 v1, 0x1

    .line 508
    iput-boolean v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->isSaving:Z

    .line 510
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/util/SSP$Writer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 518
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_183
    .catchall {:try_start_172 .. :try_end_183} :catchall_cf

    .line 520
    :goto_183
    monitor-exit p0

    return-void

    :goto_185
    :try_start_185
    monitor-exit p0
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_cf

    throw v0
.end method

.method public final declared-synchronized setFeaturePurchased(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z
    .registers 4

    monitor-enter p0

    .line 685
    :try_start_1
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-nez v0, :cond_2a

    .line 687
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->event:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->unlockedFeatureEvents:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 688
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->event:Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->purchaseRaw(Ljava/lang/String;)V

    .line 690
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    if-eqz p1, :cond_24

    .line 691
    new-instance p1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;-><init>()V

    sput-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception p1

    goto :goto_32

    .line 694
    :cond_24
    :goto_24
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 696
    :cond_27
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 685
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No consumables allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_22

    throw p1
.end method

.method public setLastSaveTime(J)V
    .registers 3

    .line 286
    iput-wide p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSaveTime:J

    return-void
.end method

.method public setLastSeenRegionRulesTime(IJ)V
    .registers 5

    .line 545
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->lastSeenRegionRules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    return-void
.end method

.method public setRegionUnlockTime(I)V
    .registers 8

    .line 308
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    .line 309
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    monitor-enter v2

    .line 310
    :try_start_b
    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->regionUnlockTime:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_43

    .line 312
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v3}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSFHjo2N6f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {v3, p1, v0, v1}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void

    :catchall_43
    move-exception p1

    .line 311
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public final setUpBackendEvents()V
    .registers 8

    .line 182
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "refresh interval seconds"

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 184
    new-instance v1, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v1}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    .line 186
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_39

    .line 187
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    sget-object v5, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_EARNED_DIAMONDS:Ljava/lang/String;

    new-instance v6, Linfo/flowersoft/theotown/mechanics/GameHandler$2;

    invoke-direct {v6, p0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler$2;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V

    invoke-virtual {v1, v5, v4, v3, v6}, Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Linfo/flowersoft/theotown/backend/Backend;->addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V

    .line 202
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    sget-object v5, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPEND_DIAMONDS:Ljava/lang/String;

    new-instance v6, Linfo/flowersoft/theotown/mechanics/GameHandler$3;

    invoke-direct {v6, p0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler$3;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V

    invoke-virtual {v1, v5, v4, v3, v6}, Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Linfo/flowersoft/theotown/backend/Backend;->addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V

    .line 218
    :cond_39
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v2, :cond_73

    .line 219
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/mechanics/GameHandler$4;

    invoke-direct {v5, p0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler$4;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V

    const-string v6, "TJT0GyPYv8"

    invoke-virtual {v1, v6, v4, v3, v5}, Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Linfo/flowersoft/theotown/backend/Backend;->addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V

    .line 232
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/mechanics/GameHandler$5;

    invoke-direct {v5, p0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler$5;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V

    const-string v6, "Pwqqs9QtPt"

    invoke-virtual {v1, v6, v4, v3, v5}, Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Linfo/flowersoft/theotown/backend/Backend;->addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V

    .line 245
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/mechanics/GameHandler$6;

    invoke-direct {v5, p0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler$6;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V

    const-string v6, "OMJuWs7PF7"

    invoke-virtual {v1, v6, v4, v3, v5}, Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V

    :cond_73
    return-void
.end method

.method public final setUpBackendPurchases()V
    .registers 4

    .line 349
    new-instance v0, Linfo/flowersoft/theotown/backend/PurchasesService;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/PurchasesService;-><init>()V

    .line 350
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/mechanics/GameHandler$8;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler$8;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/PurchasesService;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/backend/PurchasesService;->getPurchases(Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/backend/Backend;->addScheduledTask(Linfo/flowersoft/theotown/backend/Backend$Task;I)V

    return-void
.end method

.method public declared-synchronized spendDiamonds(ILjava/lang/String;)V
    .registers 6

    monitor-enter p0

    if-gtz p1, :cond_5

    .line 607
    monitor-exit p0

    return-void

    .line 608
    :cond_5
    :try_start_5
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->onlineSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 612
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->notGSSyncedSpendDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    neg-int p1, p1

    .line 614
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->logChange(ILjava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 616
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {p2}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    sget-object v0, Linfo/flowersoft/theotown/mechanics/GameHandler;->EVENT_SPEND_DIAMONDS:Ljava/lang/String;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getSpendDiamonds()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 617
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->logDiamonds()V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3c

    .line 618
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public spendRegionCoins(I)V
    .registers 6

    if-lez p1, :cond_1d

    .line 301
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    .line 302
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v0}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->spentRegionCoins:I

    const/4 v2, 0x0

    const-string v3, "Pwqqs9QtPt"

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void

    .line 300
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Amount must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized updateLog()V
    .registers 6

    monitor-enter p0

    .line 754
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLogPending:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_36

    :cond_e
    const/4 v0, 0x1

    .line 755
    iput-boolean v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLogPending:Z

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler;->pendingLog:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 760
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {v2}, Linfo/flowersoft/theotown/backend/EventsService;-><init>()V

    new-instance v3, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Ljava/util/List;)V

    new-instance v4, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    invoke-virtual {v2, v0, v3, v4}, Linfo/flowersoft/theotown/backend/EventsService;->logs(Ljava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 774
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    goto :goto_38

    .line 754
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_34

    throw v0
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass1 (info.flowersoft.theotown.mechanics.GameHandler$1)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$1;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->init(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Z)V
    .registers 2

    .line 133
    sput-boolean p1, Linfo/flowersoft/theotown/mechanics/GameHandler;->useServices:Z

    .line 134
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 135
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->isSignedIn()Z

    return-void
.end method

.method public handleEvents(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 10

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    monitor-enter v0

    const/4 v1, 0x0

    .line 149
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 150
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 151
    const-string v3, "id"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v4, "value"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 154
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 155
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$400(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;

    move-result-object v2

    long-to-int v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$400(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    goto :goto_71

    :catchall_3d
    move-exception p1

    goto :goto_7b

    .line 156
    :cond_3f
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 157
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;

    move-result-object v2

    long-to-int v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    goto :goto_71

    :cond_62
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_71

    .line 159
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$600(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 162
    :cond_74
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$1;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 163
    monitor-exit v0

    return-void

    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_4 .. :try_end_7c} :catchall_3d

    throw p1
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass2 (info.flowersoft.theotown.mechanics.GameHandler$2)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$2;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$events:Linfo/flowersoft/theotown/backend/EventsService;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V
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

    .line 187
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_4d

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$900(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$700(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$800(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$700(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v0

    if-ge p1, v0, :cond_48

    .line 196
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 198
    :cond_48
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1000(Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    :cond_4d
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 187
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$2;->set(Lio/blueflower/stapel2d/util/Tuple;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass3 (info.flowersoft.theotown.mechanics.GameHandler$3)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$3;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$events:Linfo/flowersoft/theotown/backend/EventsService;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V
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

    .line 202
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_3e

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1100(Linfo/flowersoft/theotown/mechanics/GameHandler;)Linfo/flowersoft/theotown/util/SpecialInt;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$800(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 208
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$800(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v0

    if-ge p1, v0, :cond_3e

    .line 211
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$300()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    :cond_3e
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 202
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$3;->set(Lio/blueflower/stapel2d/util/Tuple;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass4 (info.flowersoft.theotown.mechanics.GameHandler$4)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$4;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$events:Linfo/flowersoft/theotown/backend/EventsService;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V
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

    .line 219
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_37

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1200(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 225
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1200(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "TJT0GyPYv8"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 227
    :cond_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1200(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1202(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I

    :cond_37
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 219
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$4;->set(Lio/blueflower/stapel2d/util/Tuple;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass5 (info.flowersoft.theotown.mechanics.GameHandler$5)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$5;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$events:Linfo/flowersoft/theotown/backend/EventsService;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V
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

    .line 232
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_37

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1300(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 238
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1300(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Pwqqs9QtPt"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    .line 240
    :cond_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1300(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1302(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I

    :cond_37
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 232
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$5;->set(Lio/blueflower/stapel2d/util/Tuple;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass6 (info.flowersoft.theotown.mechanics.GameHandler$6)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$6;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$events:Linfo/flowersoft/theotown/backend/EventsService;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/EventsService;)V
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

    .line 245
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 248
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->isConnected()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_ac

    .line 250
    :cond_c
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 251
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1400(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1402(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I

    .line 252
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRegionCoinsPerDay()I

    move-result v1

    .line 253
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRegionCoinsDayDelay()I

    move-result v2

    .line 255
    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1200(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4a

    .line 256
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRegionCoinsInit()I

    move-result v1

    .line 259
    :cond_4a
    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRegionCoinsLimit()I

    move-result v4

    if-le v3, v4, :cond_62

    .line 260
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRegionCoinsLimit()I

    move-result v1

    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v3

    sub-int/2addr v1, v3

    :cond_62
    if-lez v1, :cond_ac

    .line 264
    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1400(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v3

    sub-int v3, v0, v3

    if-lt v3, v2, :cond_ac

    .line 265
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_80

    .line 266
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnRegionCoins(I)V

    goto :goto_91

    .line 267
    :cond_80
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_91

    .line 268
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnRegionCoins(I)V

    .line 270
    :cond_91
    :goto_91
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1402(Linfo/flowersoft/theotown/mechanics/GameHandler;I)I

    .line 271
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->val$events:Linfo/flowersoft/theotown/backend/EventsService;

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1400(Linfo/flowersoft/theotown/mechanics/GameHandler;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "OMJuWs7PF7"

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 245
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$6;->set(Lio/blueflower/stapel2d/util/Tuple;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass7 (info.flowersoft.theotown.mechanics.GameHandler$7)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$7;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionUnlockTime(I)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$regionId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;I)V
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

    .line 320
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->val$regionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/util/Tuple;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return-void

    .line 324
    :cond_e
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 325
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 326
    :try_start_24
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->val$regionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_41

    const-wide/16 v2, 0x0

    .line 327
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_41

    :catchall_3f
    move-exception v0

    goto :goto_5e

    .line 328
    :cond_41
    :goto_41
    iget-object v3, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$1500(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->val$regionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    monitor-exit p1

    return-void

    :goto_5e
    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_24 .. :try_end_5f} :catchall_3f

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 320
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$7;->set(Lio/blueflower/stapel2d/util/Tuple;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler.AnonymousClass8 (info.flowersoft.theotown.mechanics.GameHandler$8)
.class public Linfo/flowersoft/theotown/mechanics/GameHandler$8;
.super Ljava/lang/Object;
.source "GameHandler.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/mechanics/GameHandler;->setUpBackendPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/util/List<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$purchases:Linfo/flowersoft/theotown/backend/PurchasesService;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/backend/PurchasesService;)V
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

    .line 350
    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->val$purchases:Linfo/flowersoft/theotown/backend/PurchasesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 350
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->set(Ljava/util/List;)V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_79

    .line 354
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 355
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 356
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 357
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 359
    :cond_20
    iget-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    monitor-enter p1

    .line 360
    :try_start_23
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$600(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 362
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->val$purchases:Linfo/flowersoft/theotown/backend/PurchasesService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6, v5}, Linfo/flowersoft/theotown/backend/PurchasesService;->maxPurchase(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v2

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    goto :goto_2d

    :catchall_4f
    move-exception v0

    goto :goto_77

    .line 365
    :cond_51
    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$600(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 366
    iget-object v2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$600(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->access$600(Linfo/flowersoft/theotown/mechanics/GameHandler;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v1, v0, :cond_75

    .line 368
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$8;->this$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 370
    :cond_75
    monitor-exit p1

    return-void

    :goto_77
    monitor-exit p1
    :try_end_78
    .catchall {:try_start_23 .. :try_end_78} :catchall_4f

    throw v0

    :cond_79
    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/SSP$Writer;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/util/SSP$Writer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/SSP$Writer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/SSP$Writer;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->$r8$lambda$Igiu-9aaftqj7jPcww8SL8Ge1tc(Linfo/flowersoft/theotown/mechanics/GameHandler;Linfo/flowersoft/theotown/util/SSP$Writer;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda1 (info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->$r8$lambda$ZMmLYWBm9-rad6aPNytgzV2xdi4(Linfo/flowersoft/theotown/mechanics/GameHandler;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda2 (info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/mechanics/GameHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->$r8$lambda$g9_exDosfket5QfnmBoWeFBOyz0(Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    return-void
.end method
