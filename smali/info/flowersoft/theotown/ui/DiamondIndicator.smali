###### Class info.flowersoft.theotown.ui.DiamondIndicator (info.flowersoft.theotown.ui.DiamondIndicator)
.class public Linfo/flowersoft/theotown/ui/DiamondIndicator;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "DiamondIndicator.java"


# direct methods
.method public constructor <init>(IIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 11

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 26
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 29
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    int-to-float v4, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v5, v0

    const/high16 v9, 0x3f000000    # 0.5f

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondIndicator;->getDiamonds()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v5, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v6, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v0, v0, -0x19

    int-to-float v7, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    .line 39
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v2, v1, -0x5

    const/4 v3, 0x0

    if-le v0, v2, :cond_80

    if-le v0, v1, :cond_96

    .line 40
    :cond_80
    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 41
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 42
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->setPlacement(III)V

    .line 45
    :cond_96
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DIAMONDS:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 46
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0, v3}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_a5
    return-void
.end method

.method public final getDiamonds()I
    .registers 8

    .line 51
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    .line 53
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getEventOfType(I)Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 55
    iget v2, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->effectiveDisplayedTimeMS:I

    int-to-float v2, v2

    iget v3, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->targetDisplayTimeMS:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-long v3, v0

    .line 56
    iget-wide v0, v1, Linfo/flowersoft/theotown/ui/SuccessOverlay$Event;->amount:D

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    float-to-double v5, v5

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    sub-long/2addr v3, v0

    long-to-int v0, v3

    :cond_28
    return v0
.end method

.method public isVisible()Z
    .registers 5

    .line 64
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_39

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DIAMONDS:I

    .line 66
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_39

    const-string v0, "beginner"

    .line 68
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "hide shop minutes"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    sget-wide v2, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_39

    :cond_37
    const/4 v0, 0x1

    return v0

    :cond_39
    const/4 v0, 0x0

    return v0
.end method
