###### Class info.flowersoft.theotown.ui.RatingIndicator (info.flowersoft.theotown.ui.RatingIndicator)
.class public Linfo/flowersoft/theotown/ui/RatingIndicator;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "RatingIndicator.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final management:Linfo/flowersoft/theotown/components/management/DefaultManagement;


# direct methods
.method public constructor <init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 12

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 29
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 26
    const-string p1, "$anim_ui_happiness00"

    const-class p2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/RatingIndicator;->happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 30
    iput-object p5, v0, Linfo/flowersoft/theotown/ui/RatingIndicator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p1, 0x3

    .line 31
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/RatingIndicator;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 16

    .line 36
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RatingIndicator;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result v0

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RatingIndicator;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingDelta()F

    move-result v1

    .line 40
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RatingIndicator;->happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v12, v2, v3

    .line 41
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    int-to-float v6, v2

    iget v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v7, v2

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RatingIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x74f

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v0

    .line 44
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->getDeltaSign(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_8d

    .line 47
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-float/2addr v0, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, v3, v2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_a0

    .line 49
    :cond_8d
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, v3, v2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 51
    :goto_a0
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v6, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v7, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v0, v0, -0x19

    int-to-float v8, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 54
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RATING:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 55
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_d2
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 61
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RATING:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    return v0
.end method
