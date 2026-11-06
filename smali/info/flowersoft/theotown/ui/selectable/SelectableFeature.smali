###### Class info.flowersoft.theotown.ui.selectable.SelectableFeature (info.flowersoft.theotown.ui.selectable.SelectableFeature)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;
.super Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;
.source "SelectableFeature.java"


# instance fields
.field public final featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final selectText:Ljava/lang/String;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Ljava/lang/String;)V
    .registers 6

    .line 33
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;-><init>()V

    .line 34
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    .line 36
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 37
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->selectText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Linfo/flowersoft/theotown/ui/GoldButton;"
        }
    .end annotation

    .line 137
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 138
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

.method public allowEasySelect()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 11

    .line 77
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 79
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 80
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0x2d6

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->replaceBuildButton(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_46

    .line 81
    :cond_1b
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 82
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->getUnlockedReason()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object p1

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xb3a

    .line 84
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    .line 85
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->replaceBuildButton(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 89
    :cond_46
    :goto_46
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    if-lez p1, :cond_75

    .line 90
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x7f

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v5

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 94
    :cond_75
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->doubledIncomeTimeMin:I

    const-wide/16 v0, 0x3e8

    if-lez p1, :cond_a9

    .line 95
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x687

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->doubledIncomeTimeMin:I

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    mul-long/2addr v3, v0

    .line 96
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 95
    invoke-static {p1, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v7

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 100
    :cond_a9
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->shortBuildTimeMin:I

    if-lez p1, :cond_db

    .line 101
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x490

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->shortBuildTimeMin:I

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    mul-long/2addr v3, v0

    .line 102
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 101
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v7

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    :cond_db
    return-void
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 6

    .line 116
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 119
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 120
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x1a

    int-to-float p2, p2

    .line 121
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p3, p3, -0x1a

    int-to-float p3, p3

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    .line 119
    invoke-virtual {p1, v0, p2, p3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_22
    return-void
.end method

.method public getPreviewFrame()I
    .registers 3

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 129
    aget v0, v0, v1

    return v0

    .line 131
    :cond_a
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    return v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 57
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->selectText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 3

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final replaceBuildButton(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 10

    .line 108
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 109
    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 110
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 111
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableFeature.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.SelectableFeature$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "SelectableFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;

.field public final synthetic val$onClick:Ljava/lang/Runnable;

.field public final synthetic val$visibility:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableFeature;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;->val$onClick:Ljava/lang/Runnable;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;->val$visibility:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;->val$visibility:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 141
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 142
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFeature$1;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method
