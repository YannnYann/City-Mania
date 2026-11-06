###### Class info.flowersoft.theotown.stages.RankStage (info.flowersoft.theotown.stages.RankStage)
.class public Linfo/flowersoft/theotown/stages/RankStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "RankStage.java"


# static fields
.field public static lastShowRateMS:J


# instance fields
.field public award:I

.field public awardDiamonds:I

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final newlyReached:Z

.field public final ranks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RankDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WedN47XdcqeRcafPHrgj_SsMJdM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$mzDv-syMWuRJpHfXgHocVESupgE(Linfo/flowersoft/theotown/stages/RankStage;)V
    .registers 6

    .line 278
    iget v0, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    const/4 v1, 0x0

    if-lez v0, :cond_43

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3X rank:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 281
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    iget v2, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    mul-int/lit8 v2, v2, 0x3

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 284
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget v1, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rank 3X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 285
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    mul-int/lit8 v1, v1, 0x3

    int-to-double v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 287
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 14

    .line 77
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage;->ranks:Ljava/util/List;

    .line 79
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    const/16 v1, 0xb

    .line 83
    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultRequirement;

    .line 84
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    .line 85
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultRequirement;->getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v3

    .line 86
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    .line 89
    iput v0, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    .line 91
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v4

    .line 93
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v5

    if-nez v5, :cond_b0

    .line 94
    iget v5, v3, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    :goto_3b
    iget v6, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-le v5, v6, :cond_b0

    .line 95
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 96
    iget v7, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    iget-object v8, v6, Linfo/flowersoft/theotown/draft/RankDraft;->award:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    .line 97
    iget-object v7, p0, Linfo/flowersoft/theotown/stages/RankStage;->ranks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rank:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isEventRedeemed(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ad

    sget-boolean v8, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v8, :cond_ad

    .line 100
    iget-object v8, v6, Linfo/flowersoft/theotown/draft/RankDraft;->awardDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new rank "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v7, v9, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamondsEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget v7, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/RankDraft;->awardDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v6

    add-int/2addr v7, v6

    iput v7, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    :cond_ad
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    .line 106
    :cond_b0
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RankStage;->newlyReached:Z

    .line 108
    iget v2, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    if-lez v2, :cond_c0

    .line 109
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v2

    iget v4, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    int-to-double v4, v4

    invoke-virtual {v2, v0, v4, v5}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 112
    :cond_c0
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget v2, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    int-to-double v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rank "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v5, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 113
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    iget v2, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    int-to-double v4, v2

    invoke-virtual {v0, p1, v4, v5}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 114
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultRequirement;->nextDay()V

    .line 115
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultRequirement;->flushUnlocked()V

    .line 117
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p1, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logRankUpgrade(Linfo/flowersoft/theotown/draft/RankDraft;)V

    .line 120
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result p1

    if-nez p1, :cond_10f

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p1

    if-nez p1, :cond_10f

    .line 121
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_NEWRANK:I

    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    :cond_10f
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)V
    .registers 4

    .line 132
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage;->ranks:Ljava/util/List;

    .line 134
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 136
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p3, Linfo/flowersoft/theotown/draft/RankDraft;->award:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    .line 138
    sget-boolean p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1e

    move p1, p2

    goto :goto_24

    :cond_1e
    iget-object p1, p3, Linfo/flowersoft/theotown/draft/RankDraft;->awardDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    :goto_24
    iput p1, p0, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    .line 140
    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/RankStage;->newlyReached:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/RankStage;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 63
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/RankStage;I)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RankStage;->showRateDialog(I)V

    return-void
.end method


# virtual methods
.method public bind(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 3

    .line 127
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gamestack/Stage;->bind(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_12
    return-void
.end method

.method public enter()V
    .registers 28

    move-object/from16 v1, p0

    .line 150
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 152
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v8

    .line 153
    new-instance v9, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;

    invoke-direct {v9}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;-><init>()V

    .line 155
    new-instance v10, Linfo/flowersoft/theotown/ui/Page;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-boolean v2, v1, Linfo/flowersoft/theotown/stages/RankStage;->newlyReached:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_20

    const/16 v2, 0xd71

    invoke-interface {v8, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 156
    :cond_20
    new-instance v2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/RankStage;->ranks:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2

    :goto_33
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v10, v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 157
    new-instance v0, Linfo/flowersoft/theotown/stages/RankStage$1;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/RankStage$1;-><init>(Linfo/flowersoft/theotown/stages/RankStage;)V

    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 165
    iget-boolean v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->newlyReached:Z

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v0, :cond_be

    .line 166
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    .line 168
    new-instance v13, Lio/blueflower/stapel2d/gui/Label;

    const/16 v2, 0x633

    invoke-interface {v8, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0xf

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 169
    new-instance v2, Linfo/flowersoft/theotown/stages/RankStage$2;

    new-instance v3, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/16 v6, 0x14

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    const/4 v3, 0x0

    const/16 v4, 0xf

    move-object/from16 v26, v2

    move-object v2, v0

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RankStage$2;-><init>(Linfo/flowersoft/theotown/stages/RankStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 181
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 182
    invoke-virtual {v0, v12, v12}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 183
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 187
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 189
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_REACH_RANK:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const/16 v3, 0x99e

    const/16 v4, 0x65f

    .line 187
    invoke-static {v3, v4, v8, v0, v2}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;->showDialog(IILio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;)V

    const/16 v0, 0x23

    move v4, v0

    goto :goto_bf

    :cond_be
    move v4, v11

    .line 192
    :goto_bf
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasGameLogic()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_241

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_241

    .line 193
    iget v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    if-lez v0, :cond_10a

    .line 194
    new-instance v13, Lio/blueflower/stapel2d/gui/Label;

    const/16 v0, 0x782

    invoke-interface {v8, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    int-to-double v5, v3

    .line 195
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 194
    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 196
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v17

    const/16 v18, 0xf

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v19

    const/4 v15, 0x0

    move/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 197
    invoke-virtual {v13, v12, v12}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 199
    :cond_10a
    iget v0, v1, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    if-lez v0, :cond_142

    .line 200
    new-instance v0, Linfo/flowersoft/theotown/stages/RankStage$3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Linfo/flowersoft/theotown/stages/RankStage;->awardDiamonds:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    move v13, v2

    move-object v2, v3

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RankStage$3;-><init>(Linfo/flowersoft/theotown/stages/RankStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v26, v1

    move-object v1, v0

    move-object/from16 v0, v26

    const/high16 v2, 0x3f800000    # 1.0f

    .line 211
    invoke-virtual {v1, v2, v12}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    goto :goto_144

    :cond_142
    move-object v0, v1

    move v13, v2

    .line 214
    :goto_144
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RankStage;->ranks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_1fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 217
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_166
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/Draft;

    .line 218
    invoke-virtual {v5}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v6

    if-eqz v6, :cond_1fa

    iget-boolean v6, v5, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v6, :cond_1fa

    .line 219
    invoke-virtual {v5}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v6

    move v7, v11

    .line 220
    :goto_185
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_1fa

    .line 221
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 223
    instance-of v11, v15, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v11, :cond_19e

    iget-object v11, v0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15, v11}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v11

    if-nez v11, :cond_19e

    goto :goto_1fa

    .line 226
    :cond_19e
    instance-of v11, v15, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    if-eqz v11, :cond_1f5

    .line 227
    check-cast v15, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    .line 228
    invoke-virtual {v15}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v11

    if-ne v11, v2, :cond_1f5

    .line 230
    instance-of v11, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v11, :cond_1b9

    .line 231
    new-instance v11, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v15, v0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    move-object v13, v5

    check-cast v13, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {v11, v15, v13}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    goto :goto_1e7

    .line 232
    :cond_1b9
    instance-of v11, v5, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v11, :cond_1c8

    .line 233
    new-instance v11, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    move-object v15, v5

    check-cast v15, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-direct {v11, v13, v15}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RoadDraft;)V

    goto :goto_1e7

    .line 234
    :cond_1c8
    instance-of v11, v5, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v11, :cond_1d7

    .line 235
    new-instance v11, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    move-object v15, v5

    check-cast v15, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {v11, v13, v15}, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    goto :goto_1e7

    .line 236
    :cond_1d7
    instance-of v11, v5, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v11, :cond_1e6

    .line 237
    new-instance v11, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    move-object v15, v5

    check-cast v15, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-direct {v11, v13, v15, v14}, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/UpgradeDraft;Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_1e7

    :cond_1e6
    move-object v11, v14

    :goto_1e7
    if-eqz v11, :cond_1f5

    .line 241
    new-instance v5, Linfo/flowersoft/theotown/stages/RankStage$4;

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/stages/RankStage$4;-><init>(Linfo/flowersoft/theotown/stages/RankStage;)V

    invoke-interface {v11, v5}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    .line 247
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1fa

    :cond_1f5
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_185

    :cond_1fa
    :goto_1fa
    const/4 v11, 0x0

    const/4 v13, 0x1

    goto/16 :goto_166

    .line 257
    :cond_1fe
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23f

    .line 258
    new-instance v1, Lio/blueflower/stapel2d/gui/Label;

    const/16 v2, 0x898

    invoke-interface {v8, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xf

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    add-int/lit8 v3, v4, 0xf

    .line 260
    new-instance v0, Linfo/flowersoft/theotown/stages/RankStage$5;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    sub-int v5, v1, v3

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RankStage$5;-><init>(Linfo/flowersoft/theotown/stages/RankStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v1

    .line 266
    new-instance v1, Linfo/flowersoft/theotown/ui/Selector;

    const/4 v13, 0x1

    invoke-direct {v1, v14, v0, v12, v13}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Z)V

    goto :goto_242

    :cond_23f
    move-object v6, v0

    goto :goto_242

    :cond_241
    move-object v6, v1

    .line 270
    :goto_242
    iget-boolean v0, v6, Linfo/flowersoft/theotown/stages/RankStage;->newlyReached:Z

    if-eqz v0, :cond_264

    iget-object v0, v6, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_264

    iget v0, v6, Linfo/flowersoft/theotown/stages/RankStage;->award:I

    if-lez v0, :cond_264

    iget-object v0, v6, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 271
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_264

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_264

    const/4 v11, 0x1

    goto :goto_265

    :cond_264
    const/4 v11, 0x0

    :goto_265
    if-eqz v11, :cond_299

    .line 274
    new-instance v18, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;

    .line 276
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v20

    new-instance v21, Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda0;

    invoke-direct/range {v21 .. v21}, Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6}, Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/RankStage;)V

    .line 288
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v23

    const-string v24, "3x rank"

    iget-object v1, v6, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v19, "3X"

    move-object/from16 v22, v0

    move-object/from16 v25, v1

    invoke-direct/range {v18 .. v25}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object/from16 v0, v18

    .line 290
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 293
    :cond_299
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v0, 0x98f

    invoke-interface {v8, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/stages/RankStage$6;

    invoke-direct {v5, v6, v11}, Linfo/flowersoft/theotown/stages/RankStage$6;-><init>(Linfo/flowersoft/theotown/stages/RankStage;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v10

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v13, 0x1

    xor-int/lit8 v2, v11, 0x1

    .line 305
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x42

    .line 306
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 308
    iget-boolean v1, v6, Linfo/flowersoft/theotown/stages/RankStage;->newlyReached:Z

    if-eqz v1, :cond_2d4

    .line 309
    invoke-virtual {v9}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getIcon()I

    move-result v1

    iget-object v2, v6, Linfo/flowersoft/theotown/stages/RankStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v2}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTitleId(Linfo/flowersoft/theotown/city/City;)I

    move-result v2

    invoke-interface {v8, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/stages/RankStage$7;

    invoke-direct {v5, v6, v9}, Linfo/flowersoft/theotown/stages/RankStage$7;-><init>(Linfo/flowersoft/theotown/stages/RankStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    :cond_2d4
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 341
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 145
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    return-void
.end method

.method public final showRateDialog(I)V
    .registers 11

    .line 324
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 326
    const-string v2, "beginner"

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 327
    const-string v3, "rate light play min"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    .line 328
    const-string v5, "rate light delay min"

    invoke-virtual {v2, v5, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 329
    const-string v7, "rate light min rank"

    invoke-virtual {v2, v7, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 331
    sget-wide v7, Linfo/flowersoft/theotown/stages/RankStage;->lastShowRateMS:J

    sub-long v7, v0, v7

    cmp-long v4, v7, v5

    if-ltz v4, :cond_3d

    sget-wide v4, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3d

    if-lt p1, v2, :cond_3d

    .line 334
    sput-wide v0, Linfo/flowersoft/theotown/stages/RankStage;->lastShowRateMS:J

    .line 335
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->rateGameLight()V

    :cond_3d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 346
    const-string v0, "RankStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass1 (info.flowersoft.theotown.stages.RankStage$1)
.class public Linfo/flowersoft/theotown/stages/RankStage$1;
.super Ljava/lang/Object;
.source "RankStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$1;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$1;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass2 (info.flowersoft.theotown.stages.RankStage$2)
.class public Linfo/flowersoft/theotown/stages/RankStage$2;
.super Lio/blueflower/stapel2d/gui/Label;
.source "RankStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$2;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 173
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 174
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    .line 175
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    int-to-float v6, v0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 174
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 176
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 177
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Label;->draw(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass3 (info.flowersoft.theotown.stages.RankStage$3)
.class public Linfo/flowersoft/theotown/stages/RankStage$3;
.super Lio/blueflower/stapel2d/gui/Label;
.source "RankStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$3;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 204
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Label;->draw(II)V

    .line 205
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 206
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 207
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v0, v0

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 208
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    int-to-float v5, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    iget v7, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentX:F

    iget v8, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentY:F

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass4 (info.flowersoft.theotown.stages.RankStage$4)
.class public Linfo/flowersoft/theotown/stages/RankStage$4;
.super Ljava/lang/Object;
.source "RankStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$4;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 244
    :goto_0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$4;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$4;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/stages/CityStage;

    if-nez v0, :cond_24

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$4;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    goto :goto_0

    :cond_24
    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass5 (info.flowersoft.theotown.stages.RankStage$5)
.class public Linfo/flowersoft/theotown/stages/RankStage$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "RankStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$5;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 263
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass6 (info.flowersoft.theotown.stages.RankStage$6)
.class public Linfo/flowersoft/theotown/stages/RankStage$6;
.super Ljava/lang/Object;
.source "RankStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;

.field public final synthetic val$canTriple:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;Z)V
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

    .line 294
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$6;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/RankStage$6;->val$canTriple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$6;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 299
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$6;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RankStage;->access$000(Linfo/flowersoft/theotown/stages/RankStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    .line 300
    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/RankStage$6;->val$canTriple:Z

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 301
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RankStage$6;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/stages/RankStage;->access$100(Linfo/flowersoft/theotown/stages/RankStage;I)V

    :cond_20
    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage.AnonymousClass7 (info.flowersoft.theotown.stages.RankStage$7)
.class public Linfo/flowersoft/theotown/stages/RankStage$7;
.super Ljava/lang/Object;
.source "RankStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RankStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RankStage;

.field public final synthetic val$rankInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
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

    .line 310
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->val$rankInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 313
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 314
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/RankStage;->access$000(Linfo/flowersoft/theotown/stages/RankStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 315
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->val$rankInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 316
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 317
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RankStage$7;->this$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RankStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/RankStage;->$r8$lambda$WedN47XdcqeRcafPHrgj_SsMJdM()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RankStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.RankStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RankStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RankStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RankStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RankStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RankStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RankStage;->$r8$lambda$mzDv-syMWuRJpHfXgHocVESupgE(Linfo/flowersoft/theotown/stages/RankStage;)V

    return-void
.end method
