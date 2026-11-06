###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "NewPluginsHintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# static fields
.field public static lastShowTime:J

.field public static lastUpdateTime:J


# instance fields
.field public final beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final closeTime:I

.field public final fetchAmount:I

.field public final fetchInterval:I

.field public final firstShowDelay:I

.field public lastFetchTime:J

.field public final lightStoreQuery:Linfo/flowersoft/theotown/store/LightStoreQuery;

.field public panel:Lio/blueflower/stapel2d/gui/Gadget;

.field public pluginWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final showInPremium:Z

.field public final showInterval:I

.field public final showTime:I

.field public startCloseTime:J

.field public startOpenTime:J

.field public startTime:J

.field public target:Linfo/flowersoft/theotown/store/StorePluginWrapper;

.field public final timeoutTime:I

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 6

    .line 62
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 35
    const-string v0, "beginner"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const/16 v1, 0x3e8

    .line 37
    iput v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->showTime:I

    const/16 v2, 0xc8

    .line 38
    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->closeTime:I

    .line 40
    const-string v2, "plugin rec timeout sec"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->timeoutTime:I

    .line 41
    const-string v2, "plugin rec first show delay sec"

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->firstShowDelay:I

    .line 42
    const-string v2, "plugin rec fetch interval sec"

    const/16 v3, 0x2d0

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetchInterval:I

    .line 43
    const-string v2, "plugin rec show interval sec"

    const/16 v3, 0x168

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->showInterval:I

    .line 44
    const-string v1, "plugin rec fetch amount"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetchAmount:I

    .line 45
    const-string v1, "plugin rec premium"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->showInPremium:Z

    .line 63
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 64
    new-instance p1, Linfo/flowersoft/theotown/store/LightStoreQuery;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/store/LightStoreQuery;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lightStoreQuery:Linfo/flowersoft/theotown/store/LightStoreQuery;

    .line 66
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startTime:J

    .line 67
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetch()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->update()V

    return-void
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V
    .registers 1

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->close()V

    return-void
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;Linfo/flowersoft/theotown/store/StorePluginWrapper;)Linfo/flowersoft/theotown/store/StorePluginWrapper;
    .registers 2

    .line 31
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->target:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    return-object p1
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 31
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->pluginWrappers:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J
    .registers 3

    .line 31
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startOpenTime:J

    return-wide v0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;F)F
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->easeOutBounce(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)I
    .registers 1

    .line 31
    iget p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->timeoutTime:I

    return p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V
    .registers 1

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->timeout()V

    return-void
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J
    .registers 3

    .line 31
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startCloseTime:J

    return-wide v0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V
    .registers 1

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->removeInternal()V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->open(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V

    return-void
.end method

.method private update()V
    .registers 9

    .line 82
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 84
    sget-wide v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 86
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startTime:J

    .line 88
    :cond_10
    sput-wide v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lastUpdateTime:J

    .line 90
    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lastFetchTime:J

    sub-long v2, v0, v2

    iget v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetchInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_20

    .line 91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetch()V

    .line 95
    :cond_20
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->pluginWrappers:Ljava/util/List;

    .line 96
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->target:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    if-nez v3, :cond_3a

    if-eqz v2, :cond_3a

    .line 97
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/StorePluginWrapper;

    iput-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->target:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    .line 100
    :cond_3a
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->target:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    .line 101
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    if-nez v4, :cond_77

    if-eqz v3, :cond_77

    sget-wide v4, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lastShowTime:J

    sget-wide v6, Linfo/flowersoft/theotown/store/StoreStage;->lastEnterTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sub-long v4, v0, v4

    iget v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->showInterval:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_77

    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->isFirstStart:Z

    if-nez v4, :cond_77

    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startTime:J

    sub-long/2addr v0, v4

    iget v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->firstShowDelay:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_77

    .line 103
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isTutorial()Z

    move-result v0

    if-nez v0, :cond_77

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->target:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    .line 105
    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->build(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V

    :cond_77
    return-void
.end method


# virtual methods
.method public build()V
    .registers 8

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$1;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public final build(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startOpenTime:J

    const-wide/16 v4, 0x0

    .line 146
    iput-wide v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startCloseTime:J

    .line 147
    sput-wide v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lastShowTime:J

    .line 149
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v6

    .line 152
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit16 v2, v2, -0xbe

    const/16 v4, 0xb4

    const/16 v5, 0x28

    const/16 v3, 0xa

    move v7, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    move-object v2, v0

    .line 178
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V

    .line 195
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;

    const/16 v5, 0x24

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v4, 0x24

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/StorePluginWrapper;)V

    const/4 v2, 0x1

    .line 214
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 216
    new-instance v3, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v7, v0, -0x3c

    const/16 v8, 0xf

    iget-object v9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    const/16 v5, 0x28

    const/4 v6, 0x5

    invoke-direct/range {v3 .. v9}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 217
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 218
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/gui/Label;->setScaleToFitWidth(Z)V

    .line 220
    new-instance v4, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x78a

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v8, v0, -0x2d

    const/16 v9, 0xf

    iget-object v10, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    const/16 v6, 0x28

    const/16 v7, 0x14

    invoke-direct/range {v4 .. v10}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 221
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 222
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/gui/Label;->setScaleToFitWidth(Z)V

    .line 223
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 225
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$7;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x11

    const/16 v7, 0xf

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    const-string v3, ""

    const/4 v5, 0x2

    const/16 v6, 0xf

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$7;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 236
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->getIconGadget()Lio/blueflower/stapel2d/gui/Icon;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Icon;->setScale(F)V

    return-void
.end method

.method public final close()V
    .registers 5

    .line 254
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->closeInternal()V

    .line 255
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Close"

    const-string v2, ""

    const-string v3, "Recommend Plugin"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final closeInternal()V
    .registers 3

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lightStoreQuery:Linfo/flowersoft/theotown/store/LightStoreQuery;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/LightStoreQuery;->clearTextureCache()V

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startOpenTime:J

    .line 261
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->startCloseTime:J

    return-void
.end method

.method public final easeOutBounce(F)F
    .registers 10

    .line 0
    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40f20000    # 7.5625f

    if-gez v0, :cond_c

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    return v1

    :cond_c
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v1, p1

    return v1

    :cond_1d
    float-to-double v2, p1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    const/high16 v0, 0x40300000    # 2.75f

    float-to-double v6, v0

    div-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_32

    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    add-float/2addr v1, p1

    return v1

    :cond_32
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    add-float/2addr v1, p1

    return v1
.end method

.method public final fetch()V
    .registers 8

    .line 110
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lastFetchTime:J

    .line 111
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->showInPremium:Z

    if-nez v0, :cond_f

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_f

    return-void

    .line 113
    :cond_f
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->lightStoreQuery:Linfo/flowersoft/theotown/store/LightStoreQuery;

    sget-object v2, Linfo/flowersoft/theotown/store/StoreMode;->FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

    iget v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetchAmount:I

    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V

    new-instance v6, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$3;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/store/LightStoreQuery;->fetch(Linfo/flowersoft/theotown/store/StoreMode;IILio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public final open(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            ">;)V"
        }
    .end annotation

    .line 240
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 241
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->configureMode(Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 242
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/store/StoreStage;->configureLoaded(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V

    .line 243
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 244
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->closeInternal()V

    .line 245
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string p2, "Open"

    const-string v0, ""

    const-string v1, "Recommend Plugin"

    invoke-interface {p1, v1, p2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeInternal()V
    .registers 3

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_10

    .line 266
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->panel:Lio/blueflower/stapel2d/gui/Gadget;

    :cond_10
    return-void
.end method

.method public final timeout()V
    .registers 5

    .line 249
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->closeInternal()V

    .line 250
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Timeout"

    const-string v2, ""

    const-string v3, "Recommend Plugin"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "NewPluginsHintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 75
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;
.super Ljava/lang/Object;
.source "NewPluginsHintBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetch()V
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
        "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

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

    .line 113
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;->set(Ljava/util/List;)V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$102(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;Linfo/flowersoft/theotown/store/StorePluginWrapper;)Linfo/flowersoft/theotown/store/StorePluginWrapper;

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$202(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;Ljava/util/List;)Ljava/util/List;

    :cond_11
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$3;
.super Ljava/lang/Object;
.source "NewPluginsHintBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->fetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Exception;)V
    .registers 2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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

    .line 121
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$3;->set(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "NewPluginsHintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->build(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

.field public final synthetic val$padding:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
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

    .line 152
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    iput p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->val$padding:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 155
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onUpdate()V
    .registers 9

    .line 160
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_51

    .line 162
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v2, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 163
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;F)F

    move-result v2

    .line 164
    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->val$padding:I

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr v3, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 165
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_82

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V

    return-void

    .line 166
    :cond_51
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-eqz v2, :cond_82

    .line 167
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_74

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V

    return-void

    :cond_74
    mul-float/2addr v0, v0

    .line 172
    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$4;->val$padding:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    :cond_82
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;
.super Lio/blueflower/stapel2d/gui/Button;
.source "NewPluginsHintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->build(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

.field public final synthetic val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;

.field public final synthetic val$pluginWrappers:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;->val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;->val$pluginWrappers:Ljava/util/List;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 181
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 182
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 183
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, p2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 184
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v0

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    iget v7, p2, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public onClick()V
    .registers 4

    .line 190
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;->val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$5;->val$pluginWrappers:Ljava/util/List;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "NewPluginsHintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->build(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

.field public final synthetic val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/StorePluginWrapper;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
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

    .line 195
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;->val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 198
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 199
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 200
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 201
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;->val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    invoke-interface {p2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 204
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$6;->val$pluginWrapper:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    invoke-interface {p2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getFrame()I

    move-result v8

    move-object v2, v1

    .line 205
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    int-to-float v4, v0

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, p1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawRoundedFit(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFFFIF)V

    return-void

    :cond_2b
    move-object v2, v1

    const/4 p2, 0x0

    .line 209
    invoke-virtual {v2, p2, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 210
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v0

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move-object v2, v1

    const/16 p1, 0xff

    .line 211
    invoke-virtual {v2, p1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder.AnonymousClass7 (info.flowersoft.theotown.stages.gameuibuilder.NewPluginsHintBuilder$7)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$7;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "NewPluginsHintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->build(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 228
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 233
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;)V

    return-void
.end method
