###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "StatusBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public gui:Lio/blueflower/stapel2d/gui/Master;

.field public pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 51
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 20

    move-object/from16 v1, p0

    .line 57
    new-instance v9, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$1;

    invoke-direct {v9, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)V

    .line 64
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v10, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 66
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->buildOtherButtons(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$2;

    .line 71
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->leftMinimap:Z

    const/16 v4, 0x31

    if-eqz v3, :cond_20

    move v3, v4

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    add-int/2addr v2, v3

    .line 72
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, -0x14

    .line 73
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/lit8 v6, v3, -0x31

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v17, 0x14

    move/from16 v7, v17

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 84
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    .line 85
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 87
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$4;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$3;

    invoke-direct {v7, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    .line 99
    const-string v2, "cmdDate"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 100
    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_DATE_INDICATOR:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 102
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v3, :cond_7e

    const/16 v3, 0x64

    goto :goto_80

    :cond_7e
    const/16 v3, 0xb4

    :goto_80
    add-int/2addr v0, v3

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_b7

    .line 104
    new-instance v11, Lio/blueflower/stapel2d/gui/ElementLine;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v14

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/lit8 v15, v0, -0x14

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v16

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v11 .. v18}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v11, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 105
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    .line 106
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    :cond_b7
    move-object v5, v2

    .line 109
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v2, 0x0

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Setter;)V

    const-string v2, "cmdDiamondShop"

    .line 116
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 118
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$6;

    const/16 v4, 0x3c

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    .line 125
    const-string v1, "cmdBudget"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 126
    sget-object v1, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_BUDGET_INDICATOR:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public final buildOtherButtons(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 12

    .line 130
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int v9, v0, v1

    .line 132
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;

    .line 133
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->leftMinimap:Z

    if-eqz v1, :cond_16

    const/4 p1, 0x0

    goto :goto_1c

    :cond_16
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x30

    :goto_1c
    add-int v4, v0, p1

    add-int/lit8 v5, v9, -0x30

    const/16 v7, 0x30

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v6, 0x30

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;I)V

    .line 259
    sget-object p1, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_MINIMAP:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 260
    const-string p1, "cmdMinimap"

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->pnlStatusbar:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$1;
.super Ljava/lang/Object;
.source "StatusBarBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->build()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

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

    .line 57
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$1;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$2;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "StatusBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 76
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 81
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$3;
.super Ljava/lang/Object;
.source "StatusBarBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->build()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

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

    .line 88
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$3;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$4;
.super Linfo/flowersoft/theotown/ui/DateIndicator;
.source "StatusBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/DateIndicator;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 95
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;
.super Linfo/flowersoft/theotown/ui/DiamondIndicator;
.source "StatusBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 109
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0, p2, p3, p4, p5}, Linfo/flowersoft/theotown/ui/DiamondIndicator;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 112
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 113
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Open"

    const-string v2, "Statusbar"

    const-string v3, "Shop"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$5;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$6;
.super Linfo/flowersoft/theotown/ui/BudgetIndicator;
.source "StatusBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
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

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/BudgetIndicator;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 121
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder.AnonymousClass7 (info.flowersoft.theotown.stages.gameuibuilder.StatusBarBuilder$7)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;
.super Lio/blueflower/stapel2d/gui/ToggleButton;
.source "StatusBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->buildOtherButtons(Lio/blueflower/stapel2d/gui/Panel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

.field public final synthetic val$bottomY:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;I)V
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

    .line 137
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    iput p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->val$bottomY:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ToggleButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 16

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getMinimap()Linfo/flowersoft/theotown/ui/Minimap;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v9, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 177
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v1, p1

    .line 178
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v10, v2, p2

    .line 181
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->showMinimap:Z

    const/16 v11, 0xff

    const/4 v12, 0x2

    if-eqz v2, :cond_6c

    .line 183
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 186
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v1

    int-to-float v5, v10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    int-to-float v7, v1

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 187
    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 188
    invoke-virtual {v9, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 189
    invoke-virtual {v9, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 190
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    div-int/2addr v1, v12

    add-int/2addr v10, v1

    int-to-float v5, v10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    div-int/2addr v1, v12

    int-to-float v7, v1

    const/high16 v9, 0x3f000000    # 0.5f

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    move-object v9, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 191
    invoke-virtual {v9, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 192
    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto/16 :goto_15c

    :cond_6c
    if-eqz v0, :cond_15c

    .line 196
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0xb4

    .line 197
    invoke-virtual {v9, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 199
    invoke-virtual {v9, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 200
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 201
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual {p0, p1, p2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v10, 0x2

    .line 204
    :try_start_8b
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v0, v3, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Minimap;->draw(IIII)V

    .line 205
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_9d} :catch_9e

    goto :goto_a9

    :catch_9e
    move-exception v0

    .line 207
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Flush"

    invoke-interface {v3, v4, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 208
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->removeFramebuffer()V

    .line 211
    :goto_a9
    invoke-virtual {v9, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    if-eqz v0, :cond_144

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_11e

    if-eq v0, v12, :cond_e9

    if-eq v0, v3, :cond_c2

    goto/16 :goto_159

    .line 223
    :cond_c2
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    add-int/lit8 v0, v1, 0x3

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v4, v10

    sub-int/2addr v4, v3

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x5

    int-to-float v5, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    sub-int/2addr v1, v3

    int-to-float v6, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x5

    int-to-float v8, v10

    move v7, v0

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    goto/16 :goto_159

    .line 220
    :cond_e9
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v4, v10

    sub-int/2addr v4, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    add-int/2addr v6, v10

    sub-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    add-int/2addr v1, v7

    sub-int/2addr v1, v3

    int-to-float v7, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x5

    int-to-float v8, v10

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    goto :goto_159

    .line 217
    :cond_11e
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-int/lit8 v4, v10, 0x3

    int-to-float v4, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    sub-int/2addr v1, v3

    int-to-float v7, v1

    add-int/lit8 v10, v10, 0x5

    int-to-float v8, v10

    move v6, v4

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    goto :goto_159

    .line 214
    :cond_144
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    add-int/lit8 v0, v1, 0x3

    int-to-float v3, v0

    add-int/lit8 v0, v10, 0x3

    int-to-float v4, v0

    add-int/lit8 v1, v1, 0x5

    int-to-float v5, v1

    add-int/lit8 v10, v10, 0x5

    int-to-float v8, v10

    move v6, v4

    move v7, v3

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 226
    :goto_159
    invoke-virtual {v9, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 230
    :cond_15c
    :goto_15c
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MAP:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 231
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_16c
    return-void
.end method

.method public isPressed()Z
    .registers 2

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->minimapPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 237
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MAP:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final keyActionHit(Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/input/KeyAction;)Z
    .registers 6

    .line 248
    invoke-virtual {p2}, Linfo/flowersoft/theotown/input/KeyAction;->getKeys()[I

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 250
    :goto_6
    array-length v2, p2

    if-ge v0, v2, :cond_15

    .line 251
    aget v2, p2, v0

    if-lez v2, :cond_12

    .line 253
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    return v1
.end method

.method public onClick()V
    .registers 2

    .line 140
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->onClick()V

    .line 141
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showMinimap:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showMinimap:Z

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 168
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->updateSize()V

    .line 170
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 4

    .line 242
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 243
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TURN_MAP_LEFT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->keyActionHit(Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->turnMap(I)V

    .line 244
    :cond_17
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TURN_MAP_RIGHT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->keyActionHit(Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->turnMap(I)V

    :cond_2b
    return-void
.end method

.method public final updateSize()V
    .registers 3

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_17

    return-void

    .line 154
    :cond_17
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showMinimap:Z

    if-eqz v0, :cond_20

    .line 156
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    goto :goto_3d

    .line 158
    :cond_20
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    .line 159
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 162
    :goto_3d
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder$7;->val$bottomY:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 163
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method
