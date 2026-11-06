###### Class info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder (info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "ActionButtonsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 43
    const-string p1, "action buttons builder"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 44
    const-string p1, "beginner"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 48
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Z
    .registers 1

    .line 39
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->isActionlistVisible()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 25

    move-object/from16 v1, p0

    .line 53
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v11, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 55
    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$1;

    invoke-direct {v7, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)V

    .line 62
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v12

    .line 63
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/lit8 v3, v0, 0x50

    .line 64
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "size"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 65
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "scale"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_3f

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3d

    goto :goto_3f

    :cond_3d
    :goto_3d
    move v8, v0

    goto :goto_42

    :cond_3f
    :goto_3f
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3d

    .line 68
    :goto_42
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-result-object v10

    .line 70
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_153

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move v5, v4

    move v9, v8

    move-object v8, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/mechanics/RewardManager;Lio/blueflower/stapel2d/util/Setter;F)V

    move-object v7, v8

    move v8, v9

    const-string v2, "cmdPresent"

    .line 114
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 116
    new-instance v9, Linfo/flowersoft/theotown/resources/AdReward;

    invoke-direct {v9}, Linfo/flowersoft/theotown/resources/AdReward;-><init>()V

    .line 117
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move v5, v4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Setter;FLinfo/flowersoft/theotown/resources/AdReward;Linfo/flowersoft/theotown/mechanics/RewardManager;)V

    const-string v2, "cmdAdReward"

    .line 149
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    add-int/2addr v3, v4

    .line 152
    sget-object v9, Linfo/flowersoft/theotown/util/SpecialOfferManager;->INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getStarterPack()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v7

    if-eqz v7, :cond_a7

    .line 155
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move v5, v4

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/draft/FeatureDraft;F)V

    .line 202
    const-string v2, "cmdOffer"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    add-int/2addr v3, v4

    .line 207
    :cond_a7
    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getCurrentSpecialOffer()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v15

    .line 209
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "hide special offer minutes"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    move-object v2, v11

    .line 210
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    .line 212
    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->getSpecialOfferDurationMinutes()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    add-long/2addr v5, v10

    if-eqz v15, :cond_153

    .line 215
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v13, "special offer"

    invoke-virtual {v7, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v7

    .line 216
    iget-object v13, v15, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    .line 217
    const-string v14, "task vanish time minutes"

    move/from16 v19, v0

    const/16 v0, 0x64

    invoke-virtual {v7, v14, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v17, v0, 0x3c

    .line 218
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_SPECIAL_OFFER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    move v14, v13

    .line 219
    new-instance v13, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    .line 224
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v18

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v18}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;-><init>(ILinfo/flowersoft/theotown/draft/FeatureDraft;Linfo/flowersoft/theotown/resources/TaskManager$Task;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 225
    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 227
    sget-wide v17, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    const-string v0, "min play minutes"

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v21, v2

    move/from16 v20, v3

    int-to-long v2, v0

    const-wide/16 v22, 0x3c

    mul-long v2, v2, v22

    cmp-long v0, v17, v2

    if-ltz v0, :cond_133

    .line 228
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_133

    .line 229
    invoke-virtual {v9, v15}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v0

    if-eqz v0, :cond_133

    const-string v0, "auto stage visit"

    .line 230
    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 231
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_133

    .line 232
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 235
    :cond_133
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;

    invoke-virtual/range {v21 .. v21}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual/range {v21 .. v21}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    move v12, v8

    move-wide v8, v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move v5, v4

    move-object v7, v13

    move v13, v14

    move-object v14, v15

    move/from16 v15, v19

    move/from16 v3, v20

    invoke-direct/range {v0 .. v15}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;JJFILinfo/flowersoft/theotown/draft/FeatureDraft;I)V

    const-string v1, "cmdSpecialOffer"

    .line 283
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    :cond_153
    return-void
.end method

.method public final isActionlistVisible()Z
    .registers 3

    .line 290
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    .line 291
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    if-ne v1, v0, :cond_1c

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$1;
.super Ljava/lang/Object;
.source "ActionButtonsBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/gamestack/Stage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

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

    .line 55
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$1;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ActionButtonsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

.field public final synthetic val$finalScale:F

.field public final synthetic val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/mechanics/RewardManager;Lio/blueflower/stapel2d/util/Setter;F)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$finalScale:F

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 84
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 85
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 87
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x640

    rem-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4099000000000000L    # 1600.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v0, v2

    .line 88
    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$finalScale:F

    mul-float/2addr v0, v2

    .line 89
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 90
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DAILY_AWARD:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 91
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 94
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimatedGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 96
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PRESENT:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 97
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_7b
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 5

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->isTimeForReward()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 104
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->canEarnDiamonds()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 105
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Z

    move-result v0

    if-eqz v0, :cond_45

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PRESENT:I

    .line 106
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 107
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "hide present minutes"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_43

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_45

    :cond_43
    const/4 v0, 0x1

    return v0

    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 7

    .line 74
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getRewardDay()I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 78
    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 79
    invoke-static {v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/DailyPresentDialog;-><init>(ILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ActionButtonsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

.field public final synthetic val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

.field public final synthetic val$finalScale:F

.field public final synthetic val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Setter;FLinfo/flowersoft/theotown/resources/AdReward;Linfo/flowersoft/theotown/mechanics/RewardManager;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
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
            null,
            null,
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$finalScale:F

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 126
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 127
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 128
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x640

    rem-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4099000000000000L    # 1600.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v0, v10

    .line 129
    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$finalScale:F

    mul-float/2addr v0, v2

    .line 130
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 131
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v5

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 132
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 133
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;)V

    .line 134
    invoke-virtual {v1, v10, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object v7, v1

    .line 136
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/AdReward;->getAvailableCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const v8, 0x3f99999a    # 1.2f

    const v9, -0x41b33333    # -0.2f

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

.method public isVisible()Z
    .registers 5

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->isTimeForReward()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 143
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->canEarnDiamonds()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

    .line 144
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/AdReward;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 145
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PRESENT:I

    .line 146
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 147
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "hide present minutes"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4b

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_4d

    :cond_4b
    const/4 v0, 0x1

    return v0

    :cond_4d
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 5

    .line 120
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/ui/AdRewardDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/AdRewardDialog;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ActionButtonsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public lastClick:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

.field public final synthetic val$finalScale:F

.field public final synthetic val$offerFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/draft/FeatureDraft;F)V
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

    .line 155
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->val$offerFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->val$finalScale:F

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const-wide/16 p2, 0x0

    .line 156
    iput-wide p2, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->lastClick:J

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 172
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 173
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 175
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->val$finalScale:F

    .line 176
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 177
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->val$offerFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v7, 0x0

    aget v9, v0, v7

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 180
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->lastClick:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5c

    .line 181
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;)V

    .line 184
    :cond_5c
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_OFFER:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 185
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_6c
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 199
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 5

    .line 191
    sget-object v0, Linfo/flowersoft/theotown/util/SpecialOfferManager;->INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->val$offerFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 192
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_OFFER:I

    .line 193
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 194
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "hide starter pack minutes"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_32

    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 6

    .line 160
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->val$offerFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 165
    invoke-static {v4}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;-><init>(ILinfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 162
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 167
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$4;->lastClick:J

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.ActionButtonsBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ActionButtonsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public lastClick:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

.field public final synthetic val$buildingPackOfferStage:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

.field public final synthetic val$currentSpecialOffer:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final synthetic val$currentSpecialOfferIcon:I

.field public final synthetic val$endTimeMS:J

.field public final synthetic val$finalScale:F

.field public final synthetic val$hideTimeSeconds:I

.field public final synthetic val$startTimeMS:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;JJFILinfo/flowersoft/theotown/draft/FeatureDraft;I)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
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
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$buildingPackOfferStage:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iput-wide p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$endTimeMS:J

    iput-wide p10, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$startTimeMS:J

    iput p12, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$finalScale:F

    iput p13, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$currentSpecialOfferIcon:I

    iput-object p14, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$currentSpecialOffer:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput p15, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$hideTimeSeconds:I

    move-object p7, p0

    move p8, p2

    move p9, p3

    move p10, p4

    move p11, p5

    move-object p12, p6

    invoke-direct/range {p7 .. p12}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const-wide/16 p1, 0x0

    .line 236
    iput-wide p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->lastClick:J

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 248
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 249
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 251
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE_ULTRA_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0x78

    .line 252
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object v10, v1

    .line 253
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v0, v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$endTimeMS:J

    .line 256
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$endTimeMS:J

    iget-wide v7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$startTimeMS:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v4, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float v7, v4, v3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41400000    # 12.0f

    const v6, -0x4036f025

    move v3, v0

    .line 253
    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 v0, 0xff

    .line 258
    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 259
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 261
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$finalScale:F

    .line 262
    invoke-virtual {v10, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 263
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$currentSpecialOfferIcon:I

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 264
    invoke-virtual {v10, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 266
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_ac

    .line 267
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v1, p1

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v2, p2

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;)V

    .line 270
    :cond_ac
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_OFFER:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 271
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_bc
    return-void
.end method

.method public isVisible()Z
    .registers 5

    .line 277
    sget-object v0, Linfo/flowersoft/theotown/util/SpecialOfferManager;->INSTANCE:Linfo/flowersoft/theotown/util/SpecialOfferManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$currentSpecialOffer:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SpecialOfferManager;->canBeOffered(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    .line 278
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_SPECIAL_OFFER:I

    .line 279
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$hideTimeSeconds:I

    int-to-long v0, v0

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2f

    .line 281
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$endTimeMS:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2f

    const/4 v0, 0x1

    return v0

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 240
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;->access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->val$buildingPackOfferStage:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 243
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder$5;->lastClick:J

    return-void
.end method
