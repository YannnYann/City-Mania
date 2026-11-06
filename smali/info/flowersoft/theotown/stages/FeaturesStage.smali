###### Class info.flowersoft.theotown.stages.FeaturesStage (info.flowersoft.theotown.stages.FeaturesStage)
.class public Linfo/flowersoft/theotown/stages/FeaturesStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "FeaturesStage.java"


# instance fields
.field public focus:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public selectedIndex:I

.field public selector:Linfo/flowersoft/theotown/ui/Selector;

.field public shiftY:F

.field public final stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C8VXC2bezU9M2SPISmkCITMAtDY(Linfo/flowersoft/theotown/stages/FeaturesStage;)V
    .registers 1

    .line 109
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$Nwla3Bals8MlhVV7M-WeP_Qobsk(Linfo/flowersoft/theotown/stages/FeaturesStage;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    new-instance v2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v3, ""

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v7

    .line 138
    new-instance v4, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    .line 139
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 140
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    int-to-long v9, v2

    new-instance v11, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v1}, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/FeaturesStage;Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    iget-object v12, v0, Linfo/flowersoft/theotown/stages/FeaturesStage;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v14, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v4 .. v16}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 148
    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$brJz3U_bRiawLP0ZPUs_mnDMyyk(Linfo/flowersoft/theotown/stages/FeaturesStage;Linfo/flowersoft/theotown/draft/FeatureDraft;)Ljava/lang/Boolean;
    .registers 3

    .line 142
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FeaturesStage;->saveState()V

    .line 143
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->buyFeature(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    .line 144
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    .line 145
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$khrj8wbRyGY5eFkeDPJr7C3r8ho(Linfo/flowersoft/theotown/stages/FeaturesStage;)V
    .registers 1

    .line 110
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selectedIndex:I

    .line 48
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->focus:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 49
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, p2}, Linfo/flowersoft/theotown/stages/FeaturesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 12

    .line 54
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/ui/Page;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x478

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_30
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 65
    iget-boolean v8, v6, Linfo/flowersoft/theotown/draft/FeatureDraft;->cityBound:Z

    if-nez v8, :cond_30

    iget-object v8, v6, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v8

    if-nez v8, :cond_30

    iget-object v8, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v8, :cond_30

    array-length v9, v8

    if-lt v9, v7, :cond_30

    const/4 v7, 0x0

    aget v7, v8, v7

    if-eqz v7, :cond_30

    .line 67
    iget-boolean v7, v6, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz v7, :cond_5d

    .line 68
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 69
    :cond_5d
    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 70
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 72
    :cond_67
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 77
    :cond_6b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    move-object v6, v5

    :cond_71
    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 78
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Linfo/flowersoft/theotown/stages/FeaturesStage;->getSelectable(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v9

    .line 80
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v10, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->focus:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-ne v8, v10, :cond_71

    move-object v6, v9

    goto :goto_71

    .line 84
    :cond_8e
    new-instance v1, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9a
    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 87
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Linfo/flowersoft/theotown/stages/FeaturesStage;->getSelectable(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v8

    .line 89
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v9, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->focus:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-ne v3, v9, :cond_9a

    move-object v6, v8

    goto :goto_9a

    .line 93
    :cond_b7
    new-instance v1, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c3
    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 96
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/stages/FeaturesStage;->getSelectable(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v3

    .line 98
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v8, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->focus:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-ne v2, v8, :cond_c3

    move-object v6, v3

    goto :goto_c3

    .line 102
    :cond_e0
    new-instance v1, Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-direct {v1, v5, v2, v4, v7}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;Z)V

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selector:Linfo/flowersoft/theotown/ui/Selector;

    if-eqz v6, :cond_f2

    .line 104
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/ui/Selector;->focus(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 105
    iput-object v5, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->focus:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 108
    :cond_f2
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x970

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/FeaturesStage;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 110
    new-instance v1, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/FeaturesStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FeaturesStage;->restoreState()V

    return-void
.end method

.method public final getSelectable(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 7

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 132
    new-instance v1, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Ljava/lang/String;)V

    .line 134
    new-instance v2, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1, p2}, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/FeaturesStage;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)V

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public onUpdate()V
    .registers 1

    .line 169
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public final restoreState()V
    .registers 3

    .line 160
    iget v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selectedIndex:I

    if-ltz v0, :cond_1f

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Selector;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selectedIndex:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Selector;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->shiftY:F

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Selector;->rebuild()V

    :cond_1f
    return-void
.end method

.method public final saveState()V
    .registers 2

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Selector;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selectedIndex:I

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->selector:Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Selector;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage;->shiftY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 174
    const-string v0, "FeaturesStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FeaturesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FeaturesStage;->$r8$lambda$C8VXC2bezU9M2SPISmkCITMAtDY(Linfo/flowersoft/theotown/stages/FeaturesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FeaturesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FeaturesStage;->$r8$lambda$khrj8wbRyGY5eFkeDPJr7C3r8ho(Linfo/flowersoft/theotown/stages/FeaturesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$2:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gui/Panel;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FeaturesStage;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$3:Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda2;->f$3:Lio/blueflower/stapel2d/gui/Panel;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/FeaturesStage;->$r8$lambda$Nwla3Bals8MlhVV7M-WeP_Qobsk(Linfo/flowersoft/theotown/stages/FeaturesStage;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.FeaturesStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/FeatureDraft;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FeaturesStage;Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/FeaturesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FeaturesStage$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FeaturesStage;->$r8$lambda$brJz3U_bRiawLP0ZPUs_mnDMyyk(Linfo/flowersoft/theotown/stages/FeaturesStage;Linfo/flowersoft/theotown/draft/FeatureDraft;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
