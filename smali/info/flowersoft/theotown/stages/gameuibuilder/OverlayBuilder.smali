###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final IS_NEW_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public final infoLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;",
            ">;"
        }
    .end annotation
.end field

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$bQMQ40PcywVsn74OYnlGBDl6FDY(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 210
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    .line 210
    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 4

    .line 91
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 80
    const-string v0, "$anim_ui_new00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->IS_NEW_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    .line 88
    const-string v0, "beginner"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 92
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 93
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 78
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 78
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->IS_NEW_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/util/List;
    .registers 1

    .line 78
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 78
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 78
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final CreateIconButton(IIIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;
    .registers 18

    .line 728
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$26;

    const-string v3, ""

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$26;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public build()V
    .registers 21

    move-object/from16 v1, p0

    .line 98
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v12, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 100
    const-string v0, "ui"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v2, "overlay"

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/JSONUtil;->optObject(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v10

    .line 102
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v7

    .line 103
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v11

    .line 106
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->verticalToolButtons:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_57

    .line 107
    new-instance v15, Lio/blueflower/stapel2d/gui/LineLayout;

    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$1;

    .line 108
    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x1e

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-direct {v15, v13, v14, v14, v0}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 110
    invoke-virtual {v15, v8}, Lio/blueflower/stapel2d/gui/LineLayout;->setFloating(F)V

    :goto_55
    move-object v6, v15

    goto :goto_75

    .line 112
    :cond_57
    new-instance v15, Lio/blueflower/stapel2d/gui/LineLayout;

    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$2;

    .line 113
    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    const/16 v5, 0x1e

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-direct {v15, v8, v9, v14, v0}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 114
    invoke-virtual {v15, v14}, Lio/blueflower/stapel2d/gui/LineLayout;->setReversed(Z)V

    goto :goto_55

    .line 116
    :goto_75
    invoke-virtual {v6, v9}, Lio/blueflower/stapel2d/gui/LineLayout;->setOmitInvisibleChildren(Z)V

    .line 118
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/4 v3, 0x4

    move-object/from16 v1, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    move-object v15, v0

    .line 132
    const-string v0, "cmdCloseTool"

    invoke-virtual {v15, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 137
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->verticalToolButtons:Z

    const/16 v8, 0x8

    const/4 v1, 0x2

    const/16 v2, 0x1a

    if-eqz v0, :cond_f4

    move v0, v9

    :goto_94
    if-ge v0, v8, :cond_f1

    move v4, v0

    .line 144
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$4;

    move v3, v4

    const/16 v4, 0x1a

    const/16 v5, 0x1a

    move/from16 v16, v2

    const/4 v2, 0x0

    move/from16 v17, v3

    const/4 v3, 0x0

    move v14, v1

    move/from16 v13, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v1, v8

    move-object v8, v0

    move-object v0, v6

    const/4 v6, 0x1

    :goto_b0
    if-gt v6, v14, :cond_e3

    move v3, v9

    :goto_b3
    if-ge v3, v6, :cond_db

    move v2, v1

    .line 147
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;

    move-object v5, v7

    if-nez v3, :cond_bd

    const/4 v7, 0x1

    goto :goto_be

    :cond_bd
    move v7, v9

    :goto_be
    const/4 v4, 0x1

    move/from16 v18, v14

    move v14, v2

    move-object v2, v5

    move v5, v4

    move/from16 v4, v17

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;-><init>(Linfo/flowersoft/theotown/city/City;IIZIZLio/blueflower/stapel2d/gui/Gadget;)V

    move-object v7, v2

    .line 148
    invoke-virtual {v1, v13, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    add-int/lit8 v2, v6, -0x1

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, -0x1b

    .line 149
    invoke-virtual {v1, v2, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    add-int/lit8 v3, v3, 0x1

    move v1, v14

    move/from16 v14, v18

    goto :goto_b3

    :cond_db
    move/from16 v18, v14

    move v14, v1

    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v18

    goto :goto_b0

    :cond_e3
    move/from16 v18, v14

    move v14, v1

    add-int/lit8 v1, v17, 0x1

    move-object v6, v0

    move v0, v1

    move v2, v13

    move v8, v14

    move/from16 v1, v18

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_94

    :cond_f1
    move/from16 v18, v1

    goto :goto_111

    :cond_f4
    move/from16 v18, v1

    move v13, v2

    move v14, v8

    move v3, v9

    :goto_f9
    move-object v0, v6

    if-ge v3, v14, :cond_110

    .line 139
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;

    const/4 v6, 0x0

    move-object v2, v7

    sget-boolean v7, Linfo/flowersoft/theotown/resources/Settings;->verticalToolButtons:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/ToolActionButton;-><init>(Linfo/flowersoft/theotown/city/City;IIZIZLio/blueflower/stapel2d/gui/Gadget;)V

    move-object v7, v2

    move-object v6, v8

    .line 140
    invoke-virtual {v1, v13, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f9

    :cond_110
    move-object v6, v0

    .line 155
    :goto_111
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    move-object v0, v1

    .line 203
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/LineLayout;->layout()V

    .line 207
    new-instance v1, Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    .line 209
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)V

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 211
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v8

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v19, v7

    move v7, v2

    move-object/from16 v2, v19

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v7, v2

    .line 216
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;

    invoke-direct {v1, v0, v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/city/City;)V

    .line 228
    new-instance v6, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;

    const/16 v5, 0x22

    move-object v2, v6

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x64

    const/16 v4, 0x42

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/city/City;)V

    move-object v9, v7

    .line 261
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$8;

    invoke-direct {v7, v1, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$8;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Lio/blueflower/stapel2d/util/Getter;)V

    move v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->CreateIconButton(IIIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    move-object v1, v0

    move-object v0, v6

    .line 267
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$9;

    invoke-direct {v7, v1, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$9;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Lio/blueflower/stapel2d/util/Getter;)V

    move v1, v2

    const/16 v2, 0x22

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->CreateIconButton(IIIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    move-object v1, v0

    .line 274
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    const/4 v6, 0x0

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v2, ""

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    move-object v7, v8

    move-object v8, v0

    .line 285
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 286
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 287
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Label;->getFont()Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    const/4 v0, 0x0

    .line 288
    invoke-virtual {v8, v0, v0}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 291
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    const/4 v5, 0x0

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    .line 319
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    .line 348
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v4

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v5

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    move-object v2, v7

    const/16 v7, 0x14

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object v9, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    move-object v14, v0

    move-object v13, v9

    .line 417
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_249

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_249

    .line 418
    const-string v0, "build time boost"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "duration minutes"

    .line 419
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    move-object v9, v10

    move v10, v0

    .line 421
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SHORT_BUILD_TIME:I

    const/16 v7, 0x1a

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/json/JSONObject;ILinfo/flowersoft/theotown/mechanics/TimedEffectManager;)V

    const-string v1, "cmdBuildTimeBoost"

    .line 462
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    goto :goto_24a

    :cond_249
    move-object v9, v10

    .line 465
    :goto_24a
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-nez v0, :cond_27d

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_27d

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_27d

    .line 466
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UBER:I

    const/16 v7, 0x1a

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    move-object/from16 v1, p0

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/city/City;)V

    move-object v9, v10

    const-string v1, "cmdUber"

    .line 507
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    goto :goto_27e

    :cond_27d
    move-object v9, v13

    .line 513
    :goto_27e
    const-string v0, "store"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 514
    const-string v1, "active overlay"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b6

    const-string v1, "min version"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-gt v0, v1, :cond_2b6

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_2b6

    .line 515
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;

    invoke-static {}, Linfo/flowersoft/theotown/store/StoreStage;->getIcon()I

    move-result v2

    const/16 v7, 0x1a

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const-string v1, "cmdPluginStore"

    .line 536
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 573
    :cond_2b6
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;

    const/4 v3, 0x0

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    const/4 v2, 0x0

    move-object v6, v9

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/City;)V

    move-object v7, v5

    .line 592
    const-string v2, "cmdRank"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 593
    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_RANK_INDICATOR:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 595
    new-instance v0, Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3c

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v2, v3, v4, v7}, Linfo/flowersoft/theotown/ui/TaskIndicator;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    const-string v2, "cmdTask"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 597
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$18;

    const/16 v4, 0x64

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$18;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    .line 604
    const-string v1, "cmdCityName"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 605
    sget-object v1, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CITYNAME_INDICATOR:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 607
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$19;

    const/16 v4, 0x35

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$19;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    .line 614
    const-string v2, "cmdRating"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 615
    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_RATING_INDICATOR:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 619
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;

    invoke-direct {v2, v1, v11, v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;

    invoke-direct {v2, v1, v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;

    invoke-direct {v2, v1, v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;

    invoke-direct {v2, v1, v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;

    invoke-direct {v2, v1, v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->infoLines:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;

    invoke-direct {v2, v1, v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 108
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass10 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$10)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;
.super Linfo/flowersoft/theotown/ui/ShadowedLabel;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 274
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 3

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$10;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    if-eq v0, v1, :cond_16

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass11 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$11)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 291
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 294
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 295
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 296
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    .line 297
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    .line 298
    :goto_11
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 299
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;

    .line 300
    invoke-interface {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;->isActive()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 301
    invoke-interface {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;->getText()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-interface {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 303
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    int-to-float v3, p1

    int-to-float v4, p2

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;)V

    add-int/lit8 p2, p2, 0xa

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 307
    :cond_4a
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isVisible()Z
    .registers 3

    .line 312
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 313
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$11;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass12 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$12)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 319
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 322
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 323
    instance-of v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;

    if-nez v1, :cond_f

    goto :goto_52

    .line 325
    :cond_f
    check-cast v0, Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getMarker()Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_52

    .line 328
    :cond_18
    invoke-interface {v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getLegend()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 329
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_52

    .line 331
    :cond_25
    sget-object v1, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;->INSTANCE:Linfo/flowersoft/theotown/tools/marker/LegendDrawer;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v3, v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, p1, p2

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 334
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    const/16 p2, 0x64

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 335
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x3c

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v9, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v9, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 331
    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;->draw(Ljava/util/List;IIIILio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/gui/Skin;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public isVisible()Z
    .registers 3

    .line 342
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$12;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 343
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/tools/BuildTool;

    if-eqz v0, :cond_18

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass13 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$13)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 3

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$13;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    if-ne v0, v1, :cond_16

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 1

    .line 357
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 358
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass14 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final circle:Z

.field public final halo:Z

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$overlayConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final synthetic val$shortBuildingTimeMS:I

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public static synthetic $r8$lambda$vrzplXxzJpeIq9RBLjD7PfZ-QYA(Linfo/flowersoft/theotown/mechanics/TimedEffectManager;I)Ljava/lang/Boolean;
    .registers 4

    int-to-long v0, p1

    .line 449
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->addShortBuildTime(J)V

    .line 450
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$x2a28OWcU8Fswlacv7ZtA1Fzffk(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 451
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 451
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/json/JSONObject;ILinfo/flowersoft/theotown/mechanics/TimedEffectManager;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$overlayConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    iput p10, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$shortBuildingTimeMS:I

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 422
    const-string p2, "build time boost halo"

    const/4 p3, 0x0

    invoke-virtual {p9, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->halo:Z

    .line 423
    const-string p2, "build time boost circle"

    invoke-virtual {p9, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->circle:Z

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 9

    .line 427
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 429
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->circle:Z

    if-eqz v0, :cond_e

    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimatedGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 430
    :cond_e
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->halo:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2e

    .line 431
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;F)V

    .line 433
    :cond_2e
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_SHORT_BUILD_TIME:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 434
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_3d
    return-void
.end method

.method public isVisible()Z
    .registers 7

    .line 457
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_40

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_SHORT_BUILD_TIME:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 458
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "hide build time boost minutes"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_40

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 459
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingShortBuildTimeMS()J

    move-result-wide v0

    const-string v2, "build time boost"

    .line 460
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "cooldown minutes"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    neg-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_40

    const/4 v0, 0x1

    return v0

    :cond_40
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 14

    .line 440
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 441
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SHORT_BUILD_TIME:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 442
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x773

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 444
    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0xc9e

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$shortBuildingTimeMS:I

    int-to-long v4, v4

    .line 445
    invoke-static {v4, v5}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 443
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    .line 447
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->combinePriceAndFlags(II)J

    move-result-wide v5

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    iget v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->val$shortBuildingTimeMS:I

    move-object v9, v7

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;

    invoke-direct {v7, v9, v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/mechanics/TimedEffectManager;I)V

    new-instance v8, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;)V

    iget-object v9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 451
    invoke-static {v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v9

    const-string v11, "Build_Time_Boost"

    const/4 v12, 0x0

    const-string v10, "short building time button"

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 452
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/mechanics/TimedEffectManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    iput p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->$r8$lambda$vrzplXxzJpeIq9RBLjD7PfZ-QYA(Linfo/flowersoft/theotown/mechanics/TimedEffectManager;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$14$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;->$r8$lambda$x2a28OWcU8Fswlacv7ZtA1Fzffk(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$14;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass15 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final circle:Z

.field public final halo:Z

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$overlayConfig:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$-IDRdxJ4UrWLslk-xOQd1VE5-Is(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 499
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 499
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U9XEDAsTwbXokZ5x4JtRq8_Z0c0(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;Linfo/flowersoft/theotown/city/City;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 496
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->setUber(Z)V

    .line 497
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->save(Ljava/lang/Runnable;)V

    .line 498
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/city/City;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->val$overlayConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 467
    const-string p2, "uber halo"

    const/4 p3, 0x0

    invoke-virtual {p9, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_1a

    sget-boolean p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez p2, :cond_1a

    move p2, p4

    goto :goto_1b

    :cond_1a
    move p2, p3

    :goto_1b
    iput-boolean p2, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->halo:Z

    .line 468
    const-string p2, "uber circle"

    invoke-virtual {p9, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2a

    sget-boolean p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez p2, :cond_2a

    move p3, p4

    :cond_2a
    iput-boolean p3, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->circle:Z

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 9

    .line 472
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 474
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->circle:Z

    if-eqz v0, :cond_e

    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimatedGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 475
    :cond_e
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->halo:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2e

    .line 476
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;F)V

    .line 478
    :cond_2e
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_SHORT_BUILD_TIME:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 479
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_3d
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 505
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 16

    .line 485
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 486
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->val$overlayConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "uber price"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 487
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    .line 488
    invoke-static {v0, v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->combinePriceAndFlags(II)J

    move-result-wide v0

    :cond_17
    move-wide v7, v0

    .line 490
    new-instance v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_UBER:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 491
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x6cb

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 492
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x833

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->val$city:Linfo/flowersoft/theotown/city/City;

    new-instance v9, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;Linfo/flowersoft/theotown/city/City;)V

    new-instance v10, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;)V

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 499
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v11

    const-string v13, "Build_Time_Boost"

    const/4 v14, 0x0

    const-string v12, "uber mode"

    invoke-direct/range {v2 .. v14}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 500
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->$r8$lambda$U9XEDAsTwbXokZ5x4JtRq8_Z0c0(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;Linfo/flowersoft/theotown/city/City;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$15$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;->$r8$lambda$-IDRdxJ4UrWLslk-xOQd1VE5-Is(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$15;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass16 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$16)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 515
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 8

    .line 529
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 530
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_OPEN_STORE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_51

    .line 531
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 532
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v1, v1

    .line 533
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v3

    int-to-float p2, p2

    add-float/2addr p2, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v2, p1, p2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_51
    return-void
.end method

.method public isVisible()Z
    .registers 5

    .line 524
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PLUGIN_STORE:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 525
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "hide store minutes"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 5

    .line 518
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 519
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Open"

    const-string v2, "Overlay"

    const-string v3, "Store"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1200(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass17 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$17)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;
.super Linfo/flowersoft/theotown/ui/RankIndicator;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/City;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0, p2, p3, p4, p5}, Linfo/flowersoft/theotown/ui/RankIndicator;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 589
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasRequirements()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/RankIndicator;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 576
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 577
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultRequirement;

    .line 578
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultRequirement;->hasNewRank()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 579
    new-instance v0, Linfo/flowersoft/theotown/stages/RankStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1400(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RankStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 580
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 581
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1500(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 583
    :cond_3f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$17;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1600(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass18 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$18)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$18;
.super Linfo/flowersoft/theotown/ui/CityNameIndicator;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 597
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$18;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/CityNameIndicator;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 600
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 601
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$18;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1700(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass19 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$19)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$19;
.super Linfo/flowersoft/theotown/ui/RatingIndicator;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 607
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$19;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/RatingIndicator;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 610
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 611
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$19;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$1800(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$2;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass20 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$20)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final timeSpan:Linfo/flowersoft/theotown/resources/TimeSpan;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;Linfo/flowersoft/theotown/city/City;)V
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

    .line 619
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance p1, Linfo/flowersoft/theotown/resources/TimeSpan;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/resources/TimeSpan;-><init>(I)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->timeSpan:Linfo/flowersoft/theotown/resources/TimeSpan;

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 629
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 633
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->timeSpan:Linfo/flowersoft/theotown/resources/TimeSpan;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1f4

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->setMs(I)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x50c

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->timeSpan:Linfo/flowersoft/theotown/resources/TimeSpan;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->getLocalization()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 4

    .line 623
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$20;->val$city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    .line 624
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2b

    .line 625
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass21 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$21)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V
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

    .line 638
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 645
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 649
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x23e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 651
    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getDoubleIncomeDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 649
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 641
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$21;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getDoubleIncomeDays()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass22 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$22)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V
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

    .line 655
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 662
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->CYAN:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 666
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    .line 667
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x722

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 668
    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingShortBuildTimeMS()J

    move-result-wide v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 666
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 5

    .line 658
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$22;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingShortBuildTimeMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass23 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$23)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V
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

    .line 672
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 679
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 683
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xc75

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 685
    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingDoubledIncomeMS()J

    move-result-wide v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 683
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 5

    .line 675
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$23;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingDoubledIncomeMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass24 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$24)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V
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

    .line 689
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 696
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 700
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x360

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 702
    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingHalfTunnelPriceMS()J

    move-result-wide v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 700
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 5

    .line 692
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$24;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingHalfTunnelPriceMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass25 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$25)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/mechanics/TimedEffectManager;)V
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

    .line 706
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 714
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TURQUOISE:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 719
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x7b6

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    .line 721
    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFreeTunnels()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 719
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 709
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$25;->val$timedEffectManager:Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFreeTunnels()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass26 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$26)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$26;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->CreateIconButton(IIIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 728
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$26;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$26;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 730
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 732
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_23

    .line 733
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_23

    :cond_1f
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    .line 732
    :goto_23
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 735
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x2

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 740
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 741
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$26;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;
.super Linfo/flowersoft/theotown/ui/ToolSelector;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 3

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 121
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->onClick()V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$4;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 144
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 155
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method private isDialogOpen()Z
    .registers 5

    .line 172
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    .line 173
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 175
    :cond_e
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 177
    instance-of v1, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v1, :cond_23

    .line 178
    check-cast v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog$Background;->getDialog()Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_2d

    .line 180
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2d

    return v3

    :cond_2d
    return v2
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public final updateKeyAction(Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V
    .registers 8

    if-eqz p2, :cond_32

    .line 184
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isHotkeyActive()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 185
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->getHotkey()Linfo/flowersoft/theotown/input/KeyAction;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 187
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;->isDialogOpen()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_32

    .line 188
    :cond_15
    invoke-virtual {v0}, Linfo/flowersoft/theotown/input/KeyAction;->getKeys()[I

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Linfo/flowersoft/theotown/input/KeyAction;->getModifiers()[I

    move-result-object v0

    const/4 v2, 0x0

    .line 190
    :goto_1e
    array-length v3, v1

    if-ge v2, v3, :cond_32

    .line 191
    aget v3, v1, v2

    .line 192
    aget v4, v0, v2

    .line 193
    invoke-virtual {p1, v3, v4}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(II)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 194
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->onClick()V

    return-void

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    :goto_32
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 5

    .line 162
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 163
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Tool;->getActions()Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    move-result-object p1

    const/4 v0, 0x0

    .line 164
    :goto_12
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 165
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->get(I)Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object v1

    .line 166
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$5;->updateKeyAction(Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Linfo/flowersoft/theotown/tools/TwoModesTool;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Linfo/flowersoft/theotown/city/City;)V
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

    .line 216
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/tools/TwoModesTool;
    .registers 3

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;->val$city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 220
    instance-of v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;

    if-eqz v1, :cond_11

    .line 221
    check-cast v0, Linfo/flowersoft/theotown/tools/TwoModesTool;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 216
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$6;->get()Linfo/flowersoft/theotown/tools/TwoModesTool;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass7 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$7)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/city/City;)V
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

    .line 228
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 10

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/TwoModesTool;

    const/4 v1, 0x0

    if-eqz v0, :cond_df

    .line 232
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->moveIsPending()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 233
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->getDrawnTargetX()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 234
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->getDrawnTargetY()I

    move-result v0

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 235
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v3

    .line 236
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v0}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v5

    .line 237
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v2, v0}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v0

    .line 239
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    .line 240
    invoke-virtual {v2, v5, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v6

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    const/high16 v8, 0x42000000    # 32.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 241
    invoke-virtual {v2, v5, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v0

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x41000000    # 8.0f

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    int-to-float v2, v6

    .line 243
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Master;->getVirtualWidthRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v0

    .line 244
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Master;->getVirtualHeightRatio()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 245
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v2, v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 246
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v0, v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 247
    invoke-virtual {p0, v2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 249
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    if-nez v0, :cond_dc

    .line 250
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    .line 253
    :cond_dc
    iput-boolean v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    goto :goto_e1

    .line 255
    :cond_df
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    .line 258
    :goto_e1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass8 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$8)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$8;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 261
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$8;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$8;->val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$8;->val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/TwoModesTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->finishMove()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.AnonymousClass9 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$9)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$9;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

.field public final synthetic val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 267
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$9;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$9;->val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$9;->val$twoModeToolGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/TwoModesTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder.InfoLine (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$InfoLine)
.class public interface abstract Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$InfoLine;
.super Ljava/lang/Object;
.source "OverlayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoLine"
.end annotation


# virtual methods
.method public abstract getColor()Lio/blueflower/stapel2d/drawing/Color;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.OverlayBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;->$r8$lambda$bQMQ40PcywVsn74OYnlGBDl6FDY(Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method
