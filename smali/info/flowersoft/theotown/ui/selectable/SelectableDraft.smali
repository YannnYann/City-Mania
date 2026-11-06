###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft (info.flowersoft.theotown.ui.selectable.SelectableDraft)
.class public abstract Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.super Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;
.source "SelectableDraft.java"


# static fields
.field public static context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public static stageSetter:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;-><init>()V

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-void
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 12

    .line 302
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    .line 307
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLabels()V

    .line 309
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v2, :cond_22

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->hideId:Z

    if-eqz v2, :cond_26

    :cond_22
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v2, :cond_a7

    .line 312
    :cond_26
    instance-of v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v2, :cond_3c

    .line 313
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_53

    .line 314
    :cond_3c
    instance-of v2, v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v2, :cond_52

    .line 315
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    goto :goto_53

    :cond_52
    const/4 v2, -0x1

    .line 317
    :goto_53
    new-instance v3, Lio/blueflower/stapel2d/gui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v2, :cond_87

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_89

    :cond_87
    const-string v2, ""

    :goto_89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x6

    .line 320
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 321
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 322
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 325
    :cond_a7
    invoke-virtual {p0, v1, p1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLocked(Linfo/flowersoft/theotown/draft/Draft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 327
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v1

    if-lez v1, :cond_b9

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->chargeDiamondsImmediately()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 328
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildBuyWithDiamondsButton(Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V

    :cond_b9
    return-void
.end method

.method public buildBuyFeatureButton(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;Z)V
    .registers 5

    .line 458
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result p3

    if-nez p3, :cond_38

    iget-boolean p3, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz p3, :cond_38

    .line 459
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result p3

    if-nez p3, :cond_19

    .line 460
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p3

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    :cond_19
    if-eqz p4, :cond_38

    .line 482
    iget-boolean p3, p1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez p3, :cond_38

    .line 483
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    new-instance p4, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;

    invoke-direct {p4, p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)V

    new-instance p1, Lio/blueflower/stapel2d/util/StaticGetter;

    .line 490
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    .line 483
    const-string p2, ""

    invoke-virtual {p0, p3, p2, p4, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const-string p2, "cmdGetFeature"

    .line 490
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public buildBuyWithDiamondsButton(Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 14

    .line 427
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 428
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v10

    .line 429
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    int-to-long v3, v10

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 430
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/Panel;I)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 454
    const-string p1, "cmdGetDraft "

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public buildLabels()V
    .registers 21

    move-object/from16 v1, p0

    .line 188
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v9

    .line 189
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getMaxCount()I

    move-result v8

    .line 190
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v10

    .line 191
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v11, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    const/4 v12, 0x1

    if-ltz v8, :cond_5b

    if-ne v8, v12, :cond_1c

    const/16 v0, 0x458

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x38d

    .line 195
    :goto_1e
    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;I)V

    .line 203
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/TextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 204
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 205
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 207
    :cond_5b
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getUpgrades()I

    move-result v0

    if-lez v0, :cond_90

    .line 208
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v3, 0x94d

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getUpgrades()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 208
    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v7

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v2, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 212
    :cond_90
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPower()J

    move-result-wide v2

    const-wide/16 v13, 0x0

    cmp-long v0, v2, v13

    if-lez v0, :cond_c9

    .line 213
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v3, 0x956

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPower()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 213
    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v7

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v2, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 217
    :cond_c9
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getWater()J

    move-result-wide v2

    cmp-long v0, v2, v13

    if-lez v0, :cond_100

    .line 218
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v3, 0xba6

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getWater()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 218
    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v7

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v2, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 222
    :cond_100
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPrice()J

    move-result-wide v2

    cmp-long v0, v2, v13

    if-lez v0, :cond_12b

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 223
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v6

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 253
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    goto :goto_12c

    :cond_12b
    move-object v8, v9

    .line 255
    :goto_12c
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v0

    if-lez v0, :cond_165

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->chargeDiamondsImmediately()Z

    move-result v0

    if-nez v0, :cond_165

    .line 256
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 257
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v6

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$3;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 271
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 273
    :cond_165
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_1d8

    .line 274
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getMonthlyPrice()J

    move-result-wide v2

    cmp-long v0, v2, v13

    if-lez v0, :cond_1a7

    .line 276
    new-instance v12, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v4, 0xb0

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    long-to-double v2, v2

    .line 277
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 276
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 278
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v17

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v18

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v18}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v12, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    goto :goto_1d8

    :cond_1a7
    if-gez v0, :cond_1d8

    .line 280
    new-instance v13, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v4, 0xae

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    neg-long v2, v2

    long-to-double v2, v2

    .line 281
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 282
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v18

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v13, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    :cond_1d8
    :goto_1d8
    if-eqz v10, :cond_221

    .line 286
    iget v0, v10, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v0, :cond_221

    .line 287
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget v2, v10, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_221

    .line 288
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v2

    if-nez v2, :cond_221

    .line 289
    new-instance v12, Lio/blueflower/stapel2d/gui/Label;

    const/16 v2, 0xae2

    .line 291
    invoke-interface {v8, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    .line 292
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTranslatedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 293
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v17

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v18

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v18}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 294
    invoke-virtual {v12, v11}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 295
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_221
    return-void
.end method

.method public buildLocked(Linfo/flowersoft/theotown/draft/Draft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 19

    move-object/from16 v10, p3

    .line 337
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 338
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v11

    .line 341
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getReqContext()Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    move v14, v12

    .line 343
    :goto_18
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_97

    .line 344
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 345
    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->setContext(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasRequirements()Z

    move-result v0

    .line 347
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v2

    .line 348
    instance-of v3, v8, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v3, :cond_3e

    if-nez v2, :cond_94

    .line 349
    :cond_3e
    invoke-virtual {v8}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->autoFulfilledInSandboxMode()Z

    move-result v4

    if-eqz v4, :cond_46

    if-eqz v0, :cond_94

    :cond_46
    if-eqz v3, :cond_50

    if-nez v14, :cond_50

    .line 350
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v0

    if-gtz v0, :cond_7e

    :cond_50
    if-eqz v2, :cond_58

    .line 351
    invoke-virtual {v8}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->hideIfFulfilled()Z

    move-result v0

    if-nez v0, :cond_7e

    :cond_58
    if-nez v2, :cond_60

    .line 352
    invoke-virtual {v8}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->hideIfNotFulfilled()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 353
    :cond_60
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v10, v2}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v6

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;Ljava/lang/Object;)V

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 360
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 362
    :cond_7e
    invoke-virtual {v8}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isImportant()Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_97

    .line 363
    :cond_85
    instance-of v0, v8, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    if-eqz v0, :cond_94

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 364
    check-cast v8, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    move-object v13, v8

    :cond_94
    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    .line 368
    :cond_97
    :goto_97
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_ea

    if-eqz v13, :cond_cc

    .line 369
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideRankFeature:Z

    if-nez v0, :cond_cc

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_cc

    const/16 v0, 0x6a4

    .line 371
    invoke-interface {v10, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 372
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v11, p2

    move-object v9, v13

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/draft/requirement/RankRequirement;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Panel;)V

    const-string v2, "cmdGetRank"

    .line 414
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 417
    :cond_cc
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 418
    instance-of v2, v0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v2, :cond_ea

    .line 419
    check-cast v0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->getFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    const/4 v2, 0x1

    move-object/from16 v11, p2

    .line 420
    invoke-virtual {p0, v0, v11, v10, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildBuyFeatureButton(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;Z)V

    :cond_ea
    return-void
.end method

.method public chargeDiamondsImmediately()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public drawAnimationSpot(Lio/blueflower/stapel2d/drawing/Image;FFFFLinfo/flowersoft/theotown/draft/AnimationSpot;Lio/blueflower/stapel2d/drawing/Engine;IZI)V
    .registers 14

    .line 699
    iget-object v0, p6, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 700
    iget v1, p6, Linfo/flowersoft/theotown/draft/AnimationSpot;->flags:I

    if-nez v1, :cond_55

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    if-lez v1, :cond_55

    .line 701
    iget v1, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    int-to-float p8, p8

    mul-float/2addr v1, p8

    iget p8, p6, Linfo/flowersoft/theotown/draft/AnimationSpot;->shift:I

    int-to-float p8, p8

    add-float/2addr v1, p8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p8

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    rem-int/2addr p8, v2

    .line 702
    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->rotationAware:Z

    if-eqz v2, :cond_27

    if-eqz p9, :cond_27

    .line 703
    array-length p8, v1

    div-int/lit8 p8, p8, 0x4

    rem-int/lit8 p10, p10, 0x4

    mul-int/2addr p8, p10

    .line 706
    :cond_27
    iget-object p9, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz p9, :cond_32

    const/4 p10, 0x0

    .line 707
    aget-object p9, p9, p10

    invoke-virtual {p7, p9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_39

    .line 708
    :cond_32
    iget-object p9, p6, Linfo/flowersoft/theotown/draft/AnimationSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz p9, :cond_39

    .line 709
    invoke-virtual {p7, p9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 711
    :cond_39
    :goto_39
    invoke-virtual {p7}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result p9

    .line 712
    iget p10, p6, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float p10, p10

    mul-float/2addr p10, p9

    add-float/2addr p2, p10

    add-float/2addr p2, p4

    iget p4, p6, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float p4, p4

    mul-float/2addr p4, p9

    add-float/2addr p3, p4

    add-float/2addr p3, p5

    iget-object p4, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p4, p4, p8

    invoke-virtual {p7, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 716
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p7, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_55
    return-void
.end method

.method public drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[IFFFF",
            "Lio/blueflower/stapel2d/drawing/Engine;",
            "IIZI)V"
        }
    .end annotation

    .line 669
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz p1, :cond_7d

    const/4 v0, 0x0

    if-nez p2, :cond_40

    move p2, v0

    .line 673
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7d

    .line 674
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 675
    iget-boolean v0, v6, Linfo/flowersoft/theotown/draft/AnimationSpot;->rotationAware:Z

    if-eqz v0, :cond_1c

    move/from16 v0, p11

    goto :goto_1e

    :cond_1c
    move/from16 v0, p9

    .line 676
    :goto_1e
    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, v6, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-nez v0, :cond_3d

    move-object v0, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    .line 677
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpot(Lio/blueflower/stapel2d/drawing/Image;FFFFLinfo/flowersoft/theotown/draft/AnimationSpot;Lio/blueflower/stapel2d/drawing/Engine;IZI)V

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 681
    :cond_40
    array-length v2, p2

    rem-int v2, p9, v2

    aget-object p2, p2, v2

    move v11, v0

    .line 682
    :goto_46
    array-length v0, p2

    if-ge v11, v0, :cond_7d

    .line 683
    aget v0, p2, v11

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 684
    iget-boolean v0, v6, Linfo/flowersoft/theotown/draft/AnimationSpot;->rotationAware:Z

    if-eqz v0, :cond_59

    move/from16 v0, p11

    goto :goto_5b

    :cond_59
    move/from16 v0, p9

    .line 685
    :goto_5b
    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, v6, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-nez v0, :cond_7a

    move-object v0, p0

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    .line 686
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpot(Lio/blueflower/stapel2d/drawing/Image;FFFFLinfo/flowersoft/theotown/draft/AnimationSpot;Lio/blueflower/stapel2d/drawing/Engine;IZI)V

    :cond_7a
    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    :cond_7d
    return-void
.end method

.method public drawBuilding(FFFFLinfo/flowersoft/theotown/draft/BuildingDraft;ILio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 27

    move-object/from16 v0, p5

    .line 650
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float v2, p1, p3

    add-float v3, p2, p4

    .line 652
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, p6

    move-object/from16 v12, p7

    invoke-virtual {v12, v1, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 654
    iget-object v6, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    iget-object v7, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpotIndices:[[I

    iget-boolean v15, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    move-object/from16 v5, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p6

    move/from16 v13, p8

    move/from16 v16, p9

    invoke-virtual/range {v5 .. v16}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    .line 657
    iget-object v6, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpots:Ljava/util/List;

    iget-object v7, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpotIndices:[[I

    iget-boolean v15, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    invoke-virtual/range {v5 .. v16}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    return-void
.end method

.method public drawRoad(Lio/blueflower/stapel2d/drawing/Engine;IIILinfo/flowersoft/theotown/draft/RoadDraft;FFIIIIIIILinfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/draft/BusStopDraft;)V
    .registers 34

    move-object/from16 v12, p5

    move/from16 v0, p8

    move/from16 v1, p11

    move/from16 v2, p12

    move-object/from16 v13, p15

    .line 547
    sget-object v15, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 548
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v3

    .line 549
    rem-int/lit8 v4, p14, 0x4

    neg-int v4, v4

    const/4 v5, 0x4

    add-int/2addr v4, v5

    rem-int/2addr v4, v5

    const/16 v6, 0x10

    const/high16 v7, 0x41400000    # 12.0f

    if-nez p2, :cond_118

    move/from16 v8, p3

    move/from16 v9, p10

    .line 552
    invoke-static {v8, v9}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v8

    add-int/lit8 v9, p4, 0x4

    sub-int/2addr v9, v4

    .line 553
    rem-int/2addr v9, v5

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 555
    iget-object v4, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    iget-object v6, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpotIndices:[[I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    mul-float v16, v3, v7

    move-object v0, v4

    sub-float v4, p7, v16

    move v3, v5

    int-to-float v5, v1

    move-object v1, v6

    int-to-float v6, v2

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move/from16 v3, p6

    move/from16 v11, p14

    move-object v2, v1

    move v14, v8

    move/from16 v8, p13

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    add-float v0, p6, v5

    add-float v1, p7, v6

    sub-float v1, v1, v16

    .line 561
    iget-object v2, v12, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v2, v2, v14

    invoke-virtual {v7, v15, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    if-eqz v13, :cond_6e

    move v2, v1

    .line 567
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    move v3, v2

    iget-object v2, v13, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpotIndices:[[I

    const/4 v10, 0x0

    move/from16 v8, p13

    move/from16 v11, p14

    move v15, v0

    move v13, v3

    move-object/from16 v0, p0

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    goto :goto_70

    :cond_6e
    move v15, v0

    move v13, v1

    :goto_70
    const/4 v0, 0x1

    if-eqz p16, :cond_ad

    const/4 v1, 0x2

    .line 574
    invoke-static {v1, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v2

    if-nez v2, :cond_87

    .line 575
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move-object/from16 v3, p16

    iget-object v8, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v8, v8, v0

    invoke-virtual {v7, v2, v15, v13, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :goto_85
    const/4 v2, 0x4

    goto :goto_8a

    :cond_87
    move-object/from16 v3, p16

    goto :goto_85

    .line 581
    :goto_8a
    invoke-static {v2, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v2

    if-nez v2, :cond_99

    .line 582
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v8, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v8, v1

    invoke-virtual {v7, v2, v15, v13, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 588
    :cond_99
    iget-object v1, v3, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpots:Ljava/util/List;

    iget-object v2, v3, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpotIndices:[[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v8, p13

    move/from16 v11, p14

    move/from16 v16, v13

    move-object v13, v3

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    goto :goto_b1

    :cond_ad
    move/from16 v16, v13

    move-object/from16 v13, p16

    .line 595
    :goto_b1
    iget-object v1, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    iget-object v2, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpotIndices:[[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v3, p6

    move/from16 v8, p13

    move/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    if-eqz p15, :cond_da

    move-object/from16 v0, p15

    .line 602
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpotIndices:[[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v3, p6

    move/from16 v8, p13

    move/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    goto :goto_dc

    :cond_da
    move-object/from16 v7, p1

    :goto_dc
    if-eqz v13, :cond_117

    const/16 v0, 0x8

    .line 610
    invoke-static {v0, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 611
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    move/from16 v2, v16

    invoke-virtual {v7, v0, v15, v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :goto_f2
    const/4 v0, 0x1

    goto :goto_f7

    :cond_f4
    move/from16 v2, v16

    goto :goto_f2

    .line 617
    :goto_f7
    invoke-static {v0, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v0

    if-nez v0, :cond_107

    .line 618
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, v13, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v7, v0, v15, v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 624
    :cond_107
    iget-object v1, v13, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpots:Ljava/util/List;

    iget-object v2, v13, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpotIndices:[[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p6

    move/from16 v8, p13

    move/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawAnimationSpots(Ljava/util/List;[[IFFFFLio/blueflower/stapel2d/drawing/Engine;IIZI)V

    :cond_117
    return-void

    :cond_118
    move-object/from16 v4, p1

    move/from16 v9, p10

    .line 631
    invoke-static/range {p9 .. p10}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v5

    .line 632
    iget-object v8, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v9

    aget v8, v8, v9

    if-nez v0, :cond_145

    .line 634
    iget v9, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    if-lt v9, v6, :cond_145

    .line 635
    iget-object v6, v12, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    aget v5, v6, v5

    int-to-float v6, v1

    add-float v6, p6, v6

    int-to-float v9, v2

    add-float v9, p7, v9

    int-to-float v10, v0

    mul-float/2addr v10, v3

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    .line 636
    invoke-virtual {v4, v15, v6, v9, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_145
    int-to-float v1, v1

    add-float v1, p6, v1

    int-to-float v2, v2

    add-float v2, p7, v2

    int-to-float v0, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    .line 640
    invoke-virtual {v4, v15, v1, v2, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 533
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 534
    :cond_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualCount()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getDiamondPrice()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDraft()Linfo/flowersoft/theotown/draft/Draft;
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 111
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 112
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getMonthlyPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPower()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreviewFrame()I
    .registers 6

    .line 497
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 498
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    array-length v4, v1

    if-lt v4, v3, :cond_10

    .line 499
    aget v0, v1, v2

    return v0

    .line 502
    :cond_10
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz v1, :cond_20

    .line 503
    check-cast v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    .line 504
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v0, :cond_20

    array-length v1, v0

    if-lt v1, v3, :cond_20

    .line 505
    aget v0, v0, v2

    return v0

    .line 509
    :cond_20
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewFrame()I

    move-result v0

    return v0
.end method

.method public getPreviewFrame2()I
    .registers 4

    .line 514
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 516
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_10

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    .line 517
    aget v0, v0, v1

    return v0

    .line 520
    :cond_10
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewFrame2()I

    move-result v0

    return v0
.end method

.method public abstract getPrice()J
.end method

.method public getReqContext()Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 179
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    return v0
.end method

.method public getSelectId()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getSelectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xa03

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgrades()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getWater()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasRequirement()Z
    .registers 2

    .line 119
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 525
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 4

    .line 139
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 142
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-eqz v1, :cond_e

    return v2

    .line 144
    :cond_e
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v1, :cond_55

    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v1, :cond_26

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->dev:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 145
    :cond_26
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 146
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 147
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v1, :cond_53

    .line 148
    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->getFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    if-nez v1, :cond_48

    return v2

    .line 151
    :cond_48
    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-nez v1, :cond_53

    .line 152
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v0

    return v0

    :cond_53
    const/4 v0, 0x1

    return v0

    :cond_55
    return v2
.end method

.method public isMarkable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .line 164
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isUnlocked()Z
    .registers 2

    .line 124
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.SelectableDraft$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;
.super Lio/blueflower/stapel2d/gui/TextFrame;
.source "SelectableDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final synthetic val$maxCount:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;I)V
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

    .line 196
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iput p8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;->val$maxCount:I

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getActualCount()I

    move-result v0

    .line 200
    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$1;->val$maxCount:I

    if-le v1, v0, :cond_f

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0

    :cond_f
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass2 (info.flowersoft.theotown.ui.selectable.SelectableDraft$2)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;
.super Lio/blueflower/stapel2d/gui/Label;
.source "SelectableDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public lastPrice:J

.field public price:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;)V
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

    .line 223
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    move-object p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 228
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPrice()J

    move-result-wide p3

    iput-wide p3, p2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->price:J

    const-wide/16 p5, 0x1

    sub-long/2addr p3, p5

    .line 229
    iput-wide p3, p2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->lastPrice:J

    .line 230
    iget-object p1, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->price:J

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 247
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_17

    .line 249
    :cond_11
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 251
    :goto_17
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Label;->draw(II)V

    return-void
.end method

.method public onUpdate()V
    .registers 5

    .line 235
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPrice()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->price:J

    .line 237
    iget-wide v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->lastPrice:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2d

    .line 238
    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->lastPrice:J

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x5be

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$2;->price:J

    long-to-double v1, v1

    .line 240
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass3 (info.flowersoft.theotown.ui.selectable.SelectableDraft$3)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$3;
.super Lio/blueflower/stapel2d/gui/Label;
.source "SelectableDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 257
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 260
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v1

    if-lt v0, v1, :cond_15

    .line 261
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_19

    :cond_15
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    :goto_19
    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 262
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Label;->draw(II)V

    .line 264
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 265
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 266
    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    .line 267
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move v3, v2

    .line 268
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v4

    add-int/2addr p1, v3

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 269
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass4 (info.flowersoft.theotown.ui.selectable.SelectableDraft$4)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;
.super Lio/blueflower/stapel2d/gui/Label;
.source "SelectableDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLocked(Linfo/flowersoft/theotown/draft/Draft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final synthetic val$reqContext:Ljava/lang/Object;

.field public final synthetic val$singleRequirement:Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;Ljava/lang/Object;)V
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

    .line 353
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->val$singleRequirement:Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->val$reqContext:Ljava/lang/Object;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 356
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->val$singleRequirement:Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->val$reqContext:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->setContext(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->val$singleRequirement:Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$4;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 358
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0

    :cond_18
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass5 (info.flowersoft.theotown.ui.selectable.SelectableDraft$5)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "SelectableDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLocked(Linfo/flowersoft/theotown/draft/Draft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final synthetic val$panel:Lio/blueflower/stapel2d/gui/Panel;

.field public final synthetic val$r:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$KkzpZ2OkJ4y9wCkZkPZL_Q8YXJQ(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;Linfo/flowersoft/theotown/draft/requirement/RankRequirement;Lio/blueflower/stapel2d/util/Setter;)Ljava/lang/Boolean;
    .registers 5

    .line 386
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    .line 386
    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultRequirement;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultRequirement;->setNewRank(Linfo/flowersoft/theotown/draft/RankDraft;)V

    .line 387
    new-instance p1, Linfo/flowersoft/theotown/stages/RankStage;

    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0, p0}, Linfo/flowersoft/theotown/stages/RankStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 388
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/draft/requirement/RankRequirement;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Panel;)V
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

    .line 372
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$r:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 406
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/IconButton;->draw(II)V

    return-void
.end method

.method public isVisible()Z
    .registers 4

    .line 411
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$r:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 412
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$r:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/Features;->canUnlockRank(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 16

    .line 375
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 376
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$r:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/Features;->getUnlockRankFeature(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 379
    sget-object v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->stageSetter:Lio/blueflower/stapel2d/util/Setter;

    .line 380
    new-instance v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x6a4

    .line 381
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x4fa

    .line 382
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 383
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    iget-object v7, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 384
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->val$r:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    move-object v10, v9

    new-instance v9, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v10, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;Linfo/flowersoft/theotown/draft/requirement/RankRequirement;Lio/blueflower/stapel2d/util/Setter;)V

    sget-object v10, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->stageSetter:Lio/blueflower/stapel2d/util/Setter;

    sget-object v11, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v12, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v13, "Get_Rank"

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 390
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 392
    :cond_58
    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->stageSetter:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Linfo/flowersoft/theotown/stages/RankStage;

    sget-object v2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/stages/RankStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_68
    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft$5$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.selectable.SelectableDraft$5$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;Linfo/flowersoft/theotown/draft/requirement/RankRequirement;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;->$r8$lambda$KkzpZ2OkJ4y9wCkZkPZL_Q8YXJQ(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$5;Linfo/flowersoft/theotown/draft/requirement/RankRequirement;Lio/blueflower/stapel2d/util/Setter;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass6 (info.flowersoft.theotown.ui.selectable.SelectableDraft$6)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "SelectableDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildBuyWithDiamondsButton(Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final synthetic val$panel:Lio/blueflower/stapel2d/gui/Panel;

.field public final synthetic val$price:I


# direct methods
.method public static synthetic $r8$lambda$y5JQI_IDB60g5j6rRLDNptlc_pM(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;Lio/blueflower/stapel2d/gui/Panel;)Ljava/lang/Boolean;
    .registers 3

    .line 445
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    .line 445
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 447
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 448
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 449
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/Panel;I)V
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

    .line 430
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    iput p10, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->val$price:I

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 16

    .line 433
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 434
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 436
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 438
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v4

    .line 439
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v5

    .line 441
    new-instance v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 442
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->val$price:I

    int-to-long v7, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    new-instance v9, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;Lio/blueflower/stapel2d/gui/Panel;)V

    sget-object v11, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v12, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v14}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 450
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_44
    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft$6$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.selectable.SelectableDraft$6$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gui/Panel;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gui/Panel;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;->$r8$lambda$y5JQI_IDB60g5j6rRLDNptlc_pM(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$6;Lio/blueflower/stapel2d/gui/Panel;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableDraft.AnonymousClass7 (info.flowersoft.theotown.ui.selectable.SelectableDraft$7)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;
.super Ljava/lang/Object;
.source "SelectableDraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildBuyFeatureButton(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;Lio/blueflower/stapel2d/gamestack/Translator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

.field public final synthetic val$featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final synthetic val$panel:Lio/blueflower/stapel2d/gui/Panel;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/Panel;)V
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

    .line 483
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->val$featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 486
    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->stageSetter:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Linfo/flowersoft/theotown/stages/FeaturesStage;

    sget-object v2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->val$featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-direct {v1, v2, v3, v0}, Linfo/flowersoft/theotown/stages/FeaturesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 488
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft$7;->val$panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    return-void
.end method
