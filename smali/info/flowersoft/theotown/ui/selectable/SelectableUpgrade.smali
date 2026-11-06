###### Class info.flowersoft.theotown.ui.selectable.SelectableUpgrade (info.flowersoft.theotown.ui.selectable.SelectableUpgrade)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableUpgrade.java"


# instance fields
.field public final building:Linfo/flowersoft/theotown/city/objects/Building;

.field public final draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

.field public final parent:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final requirement:Linfo/flowersoft/theotown/components/DefaultRequirement;

.field public final selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/UpgradeDraft;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 43
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 44
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/UpgradeDraft;->parent:Linfo/flowersoft/theotown/draft/Draft;

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->parent:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 45
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 46
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 47
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-direct {p2, p1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    const/16 p2, 0xb

    .line 49
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultRequirement;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->requirement:Linfo/flowersoft/theotown/components/DefaultRequirement;

    return-void
.end method


# virtual methods
.method public allowEasySelect()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 9

    .line 131
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 133
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz p1, :cond_8f

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 136
    :cond_22
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    if-eqz v6, :cond_8f

    .line 138
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 139
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 140
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    const-string v1, "Alphabet"

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 142
    invoke-virtual {v0, p1, p1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 143
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->cmdBuild:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v6, p1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 145
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    .line 146
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_7f

    :cond_6e
    const/16 v1, 0x7aa

    .line 150
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/TextFrame;->setText(Ljava/lang/String;)V

    .line 151
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    :cond_7f
    :goto_7f
    const/16 v1, 0xbb0

    .line 147
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/TextFrame;->setText(Ljava/lang/String;)V

    .line 148
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_8f
    return-void
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 182
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v4, :cond_12

    .line 183
    invoke-super/range {p0 .. p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    return-void

    .line 187
    :cond_12
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/16 v5, 0x32

    .line 188
    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 189
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v6, v1, v2, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 191
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->parent:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    .line 192
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v8

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget v9, v9, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 193
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v6

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget v9, v9, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 195
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getDrawer()Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v11

    .line 196
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    add-int/2addr v2, v8

    int-to-float v2, v2

    .line 197
    iput v2, v11, Linfo/flowersoft/theotown/city/Drawer;->x:F

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 198
    iput v3, v11, Linfo/flowersoft/theotown/city/Drawer;->y:F

    move v6, v7

    :goto_53
    const/4 v8, 0x2

    const/16 v9, 0xff

    if-ge v6, v8, :cond_d1

    .line 201
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->parent:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_60
    :goto_60
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 202
    iget-object v12, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eq v10, v12, :cond_7a

    iget-object v12, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v12, :cond_60

    invoke-virtual {v12, v10}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 204
    :cond_7a
    iget-object v12, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-ne v10, v12, :cond_80

    move v12, v9

    goto :goto_81

    :cond_80
    move v12, v5

    .line 203
    :goto_81
    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 205
    iget-object v12, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v13, v12

    if-le v13, v6, :cond_8e

    .line 206
    aget v12, v12, v6

    .line 207
    invoke-virtual {v1, v4, v2, v3, v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 210
    :cond_8e
    iget-object v12, v10, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    if-eqz v12, :cond_60

    const/4 v12, 0x1

    if-ne v6, v12, :cond_60

    .line 211
    iget-object v13, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v13, :cond_9f

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v13

    move v14, v13

    goto :goto_a0

    :cond_9f
    move v14, v7

    .line 212
    :goto_a0
    iget-object v13, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x43480000    # 200.0f

    div-float v16, v12, v13

    .line 213
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v12

    move-object v13, v12

    iget-object v12, v10, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpotIndices:[[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v15, v14

    move-object/from16 v22, v13

    move-object v13, v10

    move-object/from16 v10, v22

    invoke-virtual/range {v10 .. v21}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;Z)V

    goto :goto_60

    :cond_ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 222
    :cond_d1
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 223
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getDiamondPrice()I
    .registers 2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    return-object v0
.end method

.method public getMonthlyPrice()J
    .registers 3

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    return-wide v0
.end method

.method public getPower()J
    .registers 3

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    return-wide v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    return v0

    .line 177
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    return v0

    .line 171
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->selectableBuildingDraft:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    return-wide v0
.end method

.method public getReqContext()Ljava/lang/Object;
    .registers 2

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 165
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x363

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 233
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 228
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

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

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .registers 5

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 101
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v2, :cond_37

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v2, v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->requirement:Linfo/flowersoft/theotown/components/DefaultRequirement;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 102
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/components/DefaultRequirement;->checkUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    return v0

    :cond_37
    return v1
.end method

.method public select()V
    .registers 9

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_73

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v2, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v2, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    long-to-double v2, v2

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 117
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v6

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float v5, v0, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upgrade "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 118
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 120
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableUpgrade;->draft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->upgrade(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;Lvm2/LuaValue;)V

    .line 123
    :cond_6c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->onSelect:Ljava/lang/Runnable;

    if-eqz v0, :cond_73

    .line 124
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_73
    return-void
.end method
