###### Class info.flowersoft.theotown.ui.BudgetIndicator (info.flowersoft.theotown.ui.BudgetIndicator)
.class public Linfo/flowersoft/theotown/ui/BudgetIndicator;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "BudgetIndicator.java"


# instance fields
.field public final budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public lastEstate:D


# direct methods
.method public constructor <init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 12

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p2, p3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->setPlacement(III)V

    .line 34
    iput-object p5, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 36
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide p1

    iput-wide p1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->lastEstate:D

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 24

    move-object/from16 v0, p0

    .line 41
    invoke-super/range {p0 .. p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 43
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 44
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    int-to-float v5, v1

    iget v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v6, v1

    const/high16 v10, 0x3f000000    # 0.5f

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 45
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 48
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_10f

    .line 49
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    .line 50
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMonthlyIncome()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 52
    iget-wide v6, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->lastEstate:D

    cmpl-double v6, v1, v6

    if-lez v6, :cond_66

    .line 54
    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v6

    const/high16 v7, -0x40000000    # -2.0f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    .line 55
    iget-wide v6, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->lastEstate:D

    sub-double/2addr v1, v6

    mul-double/2addr v1, v8

    add-double/2addr v1, v6

    iput-wide v1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->lastEstate:D

    goto :goto_68

    .line 58
    :cond_66
    iput-wide v1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->lastEstate:D

    .line 60
    :goto_68
    iget-wide v1, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->lastEstate:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v6, v1

    .line 62
    invoke-static {v6, v7, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(DZ)Ljava/lang/String;

    move-result-object v10

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v7, v4

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v7, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    .line 65
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v20

    .line 66
    iget v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v17, v8, -0x5

    const-wide/16 v18, 0x0

    cmp-long v1, v1, v18

    if-gez v1, :cond_aa

    .line 69
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_b3

    .line 71
    :cond_aa
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 74
    :goto_b3
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int v1, v1, v17

    int-to-float v1, v1

    sub-float/2addr v1, v7

    sub-float v11, v1, v20

    iget v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v12, v1

    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v14, v1

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 76
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    cmp-long v2, v4, v18

    if-ltz v2, :cond_d7

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_db

    :cond_d7
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    :goto_db
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 77
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v12, v0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int v1, v1, v17

    int-to-float v1, v1

    sub-float v14, v1, v20

    iget v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v15, v1

    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v1, v1

    const/16 v18, 0x0

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    move/from16 v17, v1

    move-object v13, v6

    invoke-virtual/range {v11 .. v19}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 78
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-float v7, v7, v20

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v7, v1

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr v7, v1

    .line 80
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_173

    .line 86
    :cond_10f
    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFINITY:I

    .line 87
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 88
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 89
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v4, v5, :cond_12e

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 90
    :cond_12e
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/city/GameMode;->DEVELOPER:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v4, v5, :cond_13f

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 91
    :cond_13f
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/BudgetIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v4

    if-eqz v4, :cond_150

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 92
    :cond_150
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v6, v0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/lit8 v6, v6, 0x14

    int-to-float v6, v6

    iget v7, v0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v7, v7

    int-to-float v8, v1

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    move v9, v8

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    add-int/lit8 v1, v1, 0x19

    .line 94
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 95
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 98
    :goto_173
    iget v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v4, v2, -0x5

    if-le v1, v4, :cond_17b

    if-le v1, v2, :cond_182

    .line 99
    :cond_17b
    iput v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 100
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 103
    :cond_182
    sget v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MONEY:I

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v1

    if-eqz v1, :cond_195

    .line 104
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual {v1, v2, v4, v0, v3}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_195
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 110
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MONEY:I

    .line 111
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method
