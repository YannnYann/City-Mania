###### Class info.flowersoft.theotown.ui.CityNameIndicator (info.flowersoft.theotown.ui.CityNameIndicator)
.class public Linfo/flowersoft/theotown/ui/CityNameIndicator;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "CityNameIndicator.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 12

    const/16 v3, 0x64

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 23
    iput-object p5, v0, Linfo/flowersoft/theotown/ui/CityNameIndicator;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 28
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CityNameIndicator;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPeople;

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 35
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CityNameIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v5

    iget v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v7, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v1

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    int-to-float v1, v2

    .line 36
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/CityNameIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 38
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 39
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 40
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/2addr v2, v1

    int-to-float v5, v2

    iget v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v6, v2

    const/high16 v10, 0x3f000000    # 0.5f

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_INHABITANTS:I

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 41
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    add-int/lit8 v1, v1, 0x14

    .line 44
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 45
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%1$,d"

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 46
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v7, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v0

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    int-to-float v0, v1

    .line 47
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 49
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 51
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    const/4 v2, 0x2

    if-gt v0, v1, :cond_ba

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_c1

    .line 52
    :cond_ba
    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 53
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 56
    :cond_c1
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NAME:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0, v2}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_d0
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 63
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NAME:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    return v0
.end method
