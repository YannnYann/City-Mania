###### Class info.flowersoft.theotown.ui.RegionCoinIndicator (info.flowersoft.theotown.ui.RegionCoinIndicator)
.class public Linfo/flowersoft/theotown/ui/RegionCoinIndicator;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "RegionCoinIndicator.java"


# instance fields
.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 12

    .line 17
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeRegionCoins(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v4, v0, 0x19

    .line 20
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 21
    iput-object p4, v1, Linfo/flowersoft/theotown/ui/RegionCoinIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 22
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iput-object p1, v1, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 27
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    int-to-float v2, p1

    iget p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v3, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    int-to-float v4, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    int-to-float v5, p1

    const/high16 v7, 0x3f000000    # 0.5f

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 31
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "+"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/Localizer;->localizeRegionCoins(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    .line 35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    add-int/2addr p1, p2

    int-to-float v3, p1

    iget p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x5

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 33
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 36
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 38
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x5

    .line 39
    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v0, p2, -0x5

    if-le p1, v0, :cond_8a

    if-le p1, p2, :cond_89

    goto :goto_8a

    :cond_89
    return-void

    .line 40
    :cond_8a
    :goto_8a
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 41
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 42
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2, v0}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->setPlacement(III)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 53
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 58
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCoinDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCoinIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/RegionCoinDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 48
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    return-void
.end method
