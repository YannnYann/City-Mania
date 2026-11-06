###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public categoryCounter:I

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public line:Lio/blueflower/stapel2d/gui/ElementLine;

.field public openToSide:I

.field public toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 88
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 89
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 69
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;
    .registers 1

    .line 69
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 69
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Lio/blueflower/stapel2d/gui/ElementLine;
    .registers 1

    .line 69
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    return-object p0
.end method


# virtual methods
.method public final addCollector(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/ui/ToolSelector;
    .registers 16

    .line 275
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getName()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getIconId()I

    move-result v2

    .line 278
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->collect()Ljava/util/List;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;

    invoke-direct {v7, p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;)V

    const/4 v8, 0x1

    move-object v0, p0

    move v3, p2

    move v9, p3

    move-object v5, p4

    .line 275
    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Ljava/lang/String;IILjava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;ZI)Linfo/flowersoft/theotown/ui/ToolSelector;

    move-result-object p1

    if-eqz p5, :cond_34

    .line 287
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 288
    :cond_34
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Button;->getIconGadget()Lio/blueflower/stapel2d/gui/Icon;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/gui/Icon;->setScaleDown(Z)V

    return-object p1
.end method

.method public final addCollector(Ljava/lang/String;IILjava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;ZI)Linfo/flowersoft/theotown/ui/ToolSelector;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;ZI)",
            "Linfo/flowersoft/theotown/ui/ToolSelector;"
        }
    .end annotation

    .line 684
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;ZI)V

    .line 715
    invoke-virtual {v0, p6}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 716
    iget p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->categoryCounter:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    :goto_1a
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/ui/ToolSelector;->setActiveZebra(Z)V

    if-nez p8, :cond_24

    const/16 p2, 0x1a

    .line 717
    invoke-virtual {v0, p2, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 719
    :cond_24
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->generateOnClickRunnable(Linfo/flowersoft/theotown/ui/ToolSelector;)Ljava/lang/Runnable;

    move-result-object p2

    .line 720
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/ui/Selectable;

    .line 721
    invoke-interface {p5, p2}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 724
    :cond_3c
    new-instance p2, Linfo/flowersoft/theotown/ui/Selector;

    invoke-direct {p2, p1, v0, p4}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;)V

    return-object v0
.end method

.method public final addSeparator(Linfo/flowersoft/theotown/ui/ToolSelector;)V
    .registers 9

    .line 622
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$12;

    const/4 v4, 0x3

    const/16 v5, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$12;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public build()V
    .registers 13

    .line 93
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 95
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->rightSidebar:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto :goto_10

    :cond_f
    move v0, v10

    :goto_10
    iput v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->openToSide:I

    .line 97
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$1;

    .line 98
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->rightSidebar:Z

    if-eqz v3, :cond_23

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1f

    goto :goto_24

    :cond_23
    move v3, v10

    :goto_24
    add-int v4, v2, v3

    .line 99
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v5

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v6, 0x1f

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 105
    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/gui/ElementLine;->setOmitInvisibleChildren(Z)V

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    const-string v2, "sidebarLine"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 109
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->rightSidebar:Z

    if-nez v0, :cond_56

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setX(I)V

    .line 110
    :cond_56
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v11

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    .line 118
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGiftManager()Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v9

    const/16 v6, 0x1e

    if-eqz v9, :cond_86

    .line 120
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    move v7, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/CityGiftManager;)V

    .line 147
    :cond_86
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCommentsStage()Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    move-result-object v9

    if-eqz v9, :cond_ac

    .line 149
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 150
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    move v7, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    .line 164
    :cond_ac
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v6

    move-object v1, p0

    move v4, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v6, v4

    .line 200
    const-string v2, "cmdRegion"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildMenuButton(Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Button;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    const/16 v7, 0x16

    if-nez v0, :cond_ed

    .line 204
    invoke-virtual {p0, v11, v10}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 205
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RemoveCollector;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RemoveCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->openToSide:I

    sget v3, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REMOVE:I

    sget-object v5, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_REMOVE:Linfo/flowersoft/theotown/input/KeyAction;

    move-object v1, v0

    move-object v4, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/ui/ToolSelector;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v7, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    goto :goto_ee

    :cond_ed
    move-object v4, v11

    .line 209
    :goto_ee
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->openToSide:I

    sget v3, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_VIEW:I

    sget-object v5, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_VIEW:Linfo/flowersoft/theotown/input/KeyAction;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/ui/ToolSelector;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v7, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 212
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v1

    if-nez v1, :cond_120

    .line 213
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->openToSide:I

    sget v3, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_ALERT:I

    sget-object v5, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CATEGORY_ALERT:Linfo/flowersoft/theotown/input/KeyAction;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/ui/ToolSelector;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v7, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 217
    :cond_120
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildRCIButton(Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Button;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 219
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->rightSidebar:Z

    if-eqz v1, :cond_138

    .line 220
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ElementLine;->setFloating(F)V

    :cond_138
    return-void
.end method

.method public final buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;
    .registers 26

    move-object/from16 v1, p0

    .line 340
    sget-boolean v11, Linfo/flowersoft/theotown/resources/Settings;->useToolbarBuildtool:Z

    .line 342
    new-instance v4, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    if-eqz v11, :cond_e

    const/4 v2, 0x4

    :goto_b
    move-object/from16 v3, p1

    goto :goto_11

    .line 343
    :cond_e
    iget v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->openToSide:I

    goto :goto_b

    :goto_11
    invoke-direct {v4, v1, v0, v2, v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 400
    const-string v0, "cmdBuild"

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 401
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_BUILD_TOOL:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 403
    new-instance v12, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/DummyCollector;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v12, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/DummyCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$cat_root00"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 407
    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 408
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 409
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_1fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/Draft;

    .line 410
    iget-boolean v6, v5, Linfo/flowersoft/theotown/draft/Draft;->separator:Z

    if-eqz v6, :cond_62

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_62
    iget-boolean v6, v5, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v6, :cond_6f

    sget-boolean v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v6, :cond_73

    iget-boolean v6, v5, Linfo/flowersoft/theotown/draft/Draft;->dev:Z

    if-nez v6, :cond_6f

    goto :goto_73

    :cond_6f
    move-object/from16 v21, v3

    goto/16 :goto_1f9

    .line 413
    :cond_73
    :goto_73
    const-string v7, "$cat_zone00"

    const/4 v14, 0x0

    if-eqz v11, :cond_14f

    .line 414
    instance-of v8, v5, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v8, :cond_141

    .line 415
    move-object v8, v5

    check-cast v8, Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 416
    new-instance v9, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v10, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v9, v10, v8}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 417
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v10, v8, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8f
    :goto_8f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ad

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Linfo/flowersoft/theotown/draft/Draft;

    .line 419
    invoke-virtual {v2, v6, v13, v14}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v6

    if-eqz v6, :cond_8f

    .line 420
    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/Selectable;->isActive()Z

    move-result v18

    if-eqz v18, :cond_8f

    .line 421
    invoke-virtual {v9, v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    goto :goto_8f

    .line 425
    :cond_ad
    iget-object v6, v8, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 426
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v6

    if-nez v6, :cond_c3

    sget v6, Linfo/flowersoft/theotown/resources/Settings;->loadCounter:I

    .line 430
    :cond_c3
    new-instance v6, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v14, "$cat_rci_parts00"

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v6, v8, v10}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 431
    invoke-virtual {v9, v13}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->setMarkNewChildren(Z)V

    .line 432
    invoke-virtual {v9, v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 436
    new-instance v8, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v10, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL:I

    const/16 v13, 0x6dd

    invoke-direct {v8, v9, v13, v10, v14}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    const-string v9, "$cat_residential00"

    const/4 v10, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v9, v8, v10, v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->extractCategory(Ljava/lang/String;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;ZZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChildren(Ljava/util/Collection;)V

    .line 442
    new-instance v8, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v14, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    const/16 v13, 0x6be

    invoke-direct {v8, v9, v13, v14, v10}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    const-string v9, "$cat_commercial00"

    const/4 v10, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v9, v8, v10, v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->extractCategory(Ljava/lang/String;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;ZZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChildren(Ljava/util/Collection;)V

    .line 448
    new-instance v8, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v10, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    move-object/from16 v21, v3

    const/16 v3, 0x7eb

    invoke-direct {v8, v9, v3, v10, v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    const-string v3, "$cat_industrial00"

    const/4 v9, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v3, v8, v9, v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->extractCategory(Ljava/lang/String;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;ZZ)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChildren(Ljava/util/Collection;)V

    .line 454
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    const/16 v13, 0x6be

    invoke-direct {v3, v6, v13, v14, v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    const/16 v9, 0x7eb

    invoke-direct {v3, v6, v9, v10, v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_151

    :cond_141
    move-object/from16 v21, v3

    move v10, v13

    move-object v3, v14

    .line 461
    invoke-virtual {v2, v5, v10, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v6

    if-eqz v6, :cond_151

    .line 463
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_151

    :cond_14f
    move-object/from16 v21, v3

    :cond_151
    :goto_151
    if-nez v11, :cond_1f9

    .line 468
    instance-of v3, v5, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v3, :cond_1f9

    .line 469
    check-cast v5, Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 470
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 471
    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 473
    :goto_161
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f9

    .line 474
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/CategoryDraft;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 477
    :goto_16f
    iget-object v9, v5, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v6, v9, :cond_19c

    .line 478
    iget-object v9, v5, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v9, v6}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/draft/Draft;

    .line 479
    instance-of v10, v9, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v10, :cond_18e

    .line 480
    check-cast v9, Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 481
    iget-boolean v10, v9, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v10, :cond_18c

    invoke-virtual {v3, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_18c
    const/4 v13, 0x0

    goto :goto_197

    :cond_18e
    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 483
    invoke-virtual {v2, v9, v10, v13}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v9

    if-eqz v9, :cond_197

    const/4 v8, 0x1

    :cond_197
    :goto_197
    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_16f

    :cond_19c
    const/4 v13, 0x0

    if-eqz v8, :cond_1a9

    .line 491
    new-instance v6, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v6, v1, v8, v5, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_1a9
    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 540
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v5

    if-nez v5, :cond_1c7

    sget-boolean v5, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v5, :cond_1c2

    goto :goto_1c7

    :cond_1c2
    const/16 v10, 0x7eb

    const/16 v14, 0x6be

    goto :goto_161

    .line 541
    :cond_1c7
    :goto_1c7
    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v8, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL:I

    const/16 v10, 0x6dd

    invoke-direct {v5, v6, v10, v8, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v8, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    const/16 v14, 0x6be

    invoke-direct {v5, v6, v14, v8, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v8, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    const/16 v10, 0x7eb

    invoke-direct {v5, v6, v10, v8, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_161

    :cond_1f9
    :goto_1f9
    move-object/from16 v3, v21

    goto/16 :goto_4e

    :cond_1fd
    move v10, v13

    .line 554
    iput v10, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->categoryCounter:I

    if-nez v11, :cond_25c

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_206
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;

    if-ne v0, v12, :cond_220

    .line 559
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addSeparator(Linfo/flowersoft/theotown/ui/ToolSelector;)V

    .line 561
    iget v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->categoryCounter:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->categoryCounter:I

    goto :goto_206

    :cond_220
    move-object v5, v4

    const/16 v17, 0x1

    .line 563
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->collect()Ljava/util/List;

    move-result-object v4

    .line 564
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25a

    .line 565
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 566
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getIconId()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;

    invoke-direct {v7, v1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    .line 565
    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Ljava/lang/String;IILjava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;ZI)Linfo/flowersoft/theotown/ui/ToolSelector;

    move-object v1, v0

    :cond_25a
    move-object v4, v5

    goto :goto_206

    :cond_25c
    const/4 v10, 0x0

    .line 582
    iput v10, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->categoryCounter:I

    if-nez v11, :cond_27e

    .line 585
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE_DROPPER:I

    const/4 v3, 0x4

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ToolSelector;)V

    const-string v1, "cmdEyeDropper"

    .line 592
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 593
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MOVE_BUILDING:I

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ToolSelector;)V

    const-string v2, "cmdMoveBuilding"

    .line 600
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    goto :goto_288

    .line 602
    :cond_27e
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_288
    if-eqz v11, :cond_2a8

    .line 606
    sget-boolean v17, Linfo/flowersoft/theotown/resources/Settings;->verticalToolbar:Z

    .line 607
    sget-boolean v18, Linfo/flowersoft/theotown/resources/Settings;->darkToolbar:Z

    .line 608
    sget-boolean v19, Linfo/flowersoft/theotown/resources/Settings;->toolbarNames:Z

    .line 609
    sget-boolean v20, Linfo/flowersoft/theotown/resources/Settings;->toolbarPrices:Z

    .line 611
    new-instance v13, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v14, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move/from16 v16, p2

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v13 .. v22}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    iput-object v13, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    .line 615
    invoke-virtual {v13, v10}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    :cond_2a8
    return-object v4
.end method

.method public final buildMenuButton(Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Button;
    .registers 9

    .line 225
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 268
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MENU:I

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 269
    const-string p1, "cmdMenu"

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 270
    sget-object p1, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_MENU:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public final buildRCIButton(Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Button;
    .registers 9

    .line 635
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$13;

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$13;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 666
    sget-object p1, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_RCI:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 667
    new-instance p1, Linfo/flowersoft/theotown/ui/RCIIcon;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Demand;

    invoke-direct {p1, v1, v0}, Linfo/flowersoft/theotown/ui/RCIIcon;-><init>(Linfo/flowersoft/theotown/city/components/Demand;Lio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 668
    const-string p1, "cmdRCI"

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method public final extractCategory(Ljava/lang/String;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;ZZ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;",
            "ZZ)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->collect()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p4, :cond_65

    .line 296
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_64

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_level0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    new-instance v4, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v4, v5, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 302
    invoke-virtual {v4, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->setMarkNewChildren(Z)V

    move v3, v1

    .line 304
    :goto_37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5e

    .line 305
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/ui/Selectable;

    .line 306
    instance-of v6, v5, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    if-eqz v6, :cond_54

    move-object v7, v5

    check-cast v7, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v7

    iget v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    add-int/lit8 v7, v7, -0x1

    if-eq v7, v2, :cond_58

    :cond_54
    if-nez v6, :cond_5b

    if-nez v2, :cond_5b

    .line 308
    :cond_58
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 312
    :cond_5e
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_64
    return-object p4

    .line 316
    :cond_65
    new-instance p4, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {p4, v2, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 317
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->setMarkNewChildren(Z)V

    move p1, v1

    :goto_78
    if-ge p1, v0, :cond_cb

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$cat_level0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    new-instance v3, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v3, v4, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 323
    invoke-virtual {v3, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->setMarkNewChildren(Z)V

    move v2, v1

    .line 325
    :goto_9e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_c5

    .line 326
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/Selectable;

    .line 327
    instance-of v5, v4, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    if-eqz v5, :cond_bb

    move-object v6, v4

    check-cast v6, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    iget v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    add-int/lit8 v6, v6, -0x1

    if-eq v6, p1, :cond_bf

    :cond_bb
    if-nez v5, :cond_c2

    if-nez p1, :cond_c2

    .line 329
    :cond_bf
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    :cond_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 333
    :cond_c5
    invoke-virtual {p4, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_78

    .line 335
    :cond_cb
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final generateOnClickRunnable(Linfo/flowersoft/theotown/ui/ToolSelector;)Ljava/lang/Runnable;
    .registers 3

    .line 673
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$14;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$14;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/ui/ToolSelector;)V

    return-object v0
.end method

.method public release()V
    .registers 2

    .line 730
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$1;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 102
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass10 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$10)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;
.super Linfo/flowersoft/theotown/ui/ToolSelector;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$buildSelector:Linfo/flowersoft/theotown/ui/ToolSelector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ToolSelector;)V
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

    .line 585
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;->val$buildSelector:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 588
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->onClick()V

    .line 589
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;->val$buildSelector:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->collapse()V

    .line 590
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$10;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/EyeDropperTool;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/EyeDropperTool;-><init>(Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass11 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$11)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;
.super Linfo/flowersoft/theotown/ui/ToolSelector;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$buildSelector:Linfo/flowersoft/theotown/ui/ToolSelector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ToolSelector;)V
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

    .line 593
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;->val$buildSelector:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 596
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->onClick()V

    .line 597
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;->val$buildSelector:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->collapse()V

    .line 598
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$11;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass12 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$12)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$12;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addSeparator(Linfo/flowersoft/theotown/ui/ToolSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 622
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$12;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 626
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 627
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    int-to-float v5, v3

    .line 628
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    int-to-float v6, p2

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move v3, p1

    .line 627
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 629
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass13 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$13)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$13;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildRCIButton(Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 635
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$13;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 644
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 645
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 646
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 648
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_23

    :cond_1f
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_23
    invoke-virtual {p0, p1, p2, v2}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 649
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x2

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 651
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 653
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DEMAND:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 654
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_46
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 660
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DEMAND:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_14

    .line 662
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 638
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 639
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$13;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1100(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass14 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$14)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$14;
.super Ljava/lang/Object;
.source "SideBarBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->generateOnClickRunnable(Linfo/flowersoft/theotown/ui/ToolSelector;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$selector:Linfo/flowersoft/theotown/ui/ToolSelector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/ui/ToolSelector;)V
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

    .line 673
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$14;->val$selector:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 676
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$14;->val$selector:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->collapse()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass15 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$15)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;
.super Linfo/flowersoft/theotown/ui/ToolSelector;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Ljava/lang/String;IILjava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;ZI)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$drawFrame:Z

.field public final synthetic val$tutFlag:I

.field public final synthetic val$visibilityQuery:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 684
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$visibilityQuery:Lio/blueflower/stapel2d/util/Getter;

    iput-boolean p6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$drawFrame:Z

    iput p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$tutFlag:I

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 692
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$drawFrame:Z

    if-eqz v0, :cond_8

    .line 693
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/ToolSelector;->draw(II)V

    goto :goto_b

    .line 695
    :cond_8
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 698
    :goto_b
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$tutFlag:I

    if-eqz v0, :cond_1d

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 699
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_1d
    return-void
.end method

.method public examineVisibility()Z
    .registers 2

    .line 687
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$visibilityQuery:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 710
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$15;->val$tutFlag:I

    if-eqz v0, :cond_a

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 711
    :cond_a
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 1

    .line 705
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->onClick()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/CityGiftManager;)V
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

    .line 120
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 134
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/IconButton;->draw(II)V

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->hasUnclaimedGiftsUser()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 136
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int v3, v0, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int v4, p1, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    const v7, 0x3f99999a    # 1.2f

    const v8, -0x41333333    # -0.4f

    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawNewMarker(Lio/blueflower/stapel2d/drawing/Engine;IIIIFF)V

    :cond_30
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 142
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 7

    .line 123
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 124
    new-instance v0, Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;)V

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    .line 129
    invoke-static {v4}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/online/CityGiftsDialog;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$2$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2$1;
.super Ljava/lang/Object;
.source "SideBarBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->onClick()V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

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

    .line 124
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$2$1;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$commentsStage:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
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

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;->val$commentsStage:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 159
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 153
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$3;->val$commentsStage:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 173
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 174
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 175
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    goto :goto_14

    :cond_13
    move v3, v10

    :goto_14
    add-int/2addr v2, v3

    .line 177
    sget-object v11, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 178
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 180
    :cond_25
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_34

    :cond_30
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_34
    invoke-virtual {p0, p1, p2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    move v3, v2

    .line 182
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v0, v0

    int-to-float v4, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v3

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    const/high16 v7, 0x3f000000    # 0.5f

    move v3, v0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 184
    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 190
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REGION:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 191
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0, v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_5e
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 197
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REGION:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_14

    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 167
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->close()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildMenuButton(Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 225
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 7

    .line 254
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 256
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 257
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 258
    :cond_14
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    const/16 v3, 0xff

    if-eqz v2, :cond_1d

    const/16 v2, 0x64

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 260
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_30

    :cond_2c
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_30
    invoke-virtual {p0, p1, p2, v2}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 261
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x2

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    add-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 263
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 264
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 9

    .line 229
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    const/4 v0, 0x0

    .line 230
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    .line 232
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 234
    instance-of v1, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    .line 236
    :cond_1f
    new-instance v1, Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;-><init>()V

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/blueflower/stapel2d/gui/Master;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    .line 237
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    .line 240
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v6

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 236
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->build(Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass5.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$5$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;
.super Ljava/lang/Object;
.source "SideBarBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;->onClick()V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 4

    .line 244
    instance-of v0, p1, Linfo/flowersoft/theotown/stages/BaseStage;

    if-eqz v0, :cond_12

    .line 245
    move-object v0, p1

    check-cast v0, Linfo/flowersoft/theotown/stages/BaseStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 247
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Ljava/lang/Object;

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

    .line 241
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$5$1;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;
.super Ljava/lang/Object;
.source "SideBarBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->addCollector(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/input/KeyAction;)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$collector:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;)V
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

    .line 281
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;->val$collector:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;->val$collector:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->isVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 281
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$6;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass7 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$7)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;
.super Linfo/flowersoft/theotown/ui/ToolSelector;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;IILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 385
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/ToolSelector;->draw(II)V

    .line 387
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_BUILD:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 388
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_13
    return-void
.end method

.method public isMarked()Z
    .registers 3

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isPressed()Z
    .registers 2

    .line 366
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    return v0

    :cond_13
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 394
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_BUILD:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_14

    .line 396
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 346
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 347
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 349
    :cond_19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->isPressed()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    .line 350
    :cond_28
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->onClick()V

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 352
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->isPressed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 353
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->setPressed(Z)V

    .line 354
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    :cond_45
    return-void
.end method

.method public onUpdate()V
    .registers 3

    .line 376
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 378
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 379
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->getIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 360
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->reset()V

    .line 361
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->access$1000(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;)Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    :cond_15
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass8 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$8)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;
.super Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.source "SideBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

.field public final synthetic val$selectableResolver:Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 491
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$selectableResolver:Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public collect(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "$cat_decoration00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 516
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_16
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 520
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 522
    instance-of v2, v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v2, :cond_30

    goto :goto_1f

    .line 528
    :cond_30
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$selectableResolver:Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 529
    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 530
    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/Draft;->separator:Z

    if-eqz v1, :cond_4c

    new-instance v1, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_4c
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_50
    return-void
.end method

.method public getIconId()I
    .registers 5

    .line 504
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    array-length v3, v1

    if-lez v3, :cond_d

    .line 505
    aget v0, v1, v2

    return v0

    .line 507
    :cond_d
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_17

    array-length v1, v0

    if-lez v1, :cond_17

    .line 508
    aget v0, v0, v2

    return v0

    :cond_17
    return v2
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 499
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 494
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$8;->val$categoryDraft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder.AnonymousClass9 (info.flowersoft.theotown.stages.gameuibuilder.SideBarBuilder$9)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;
.super Ljava/lang/Object;
.source "SideBarBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;->buildBuildButton(Lio/blueflower/stapel2d/gui/Gadget;Z)Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

.field public final synthetic val$collector:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;)V
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

    .line 571
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;->val$collector:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 574
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;->val$collector:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->isVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 571
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder$9;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
