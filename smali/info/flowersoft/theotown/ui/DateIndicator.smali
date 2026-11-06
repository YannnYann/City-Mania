###### Class info.flowersoft.theotown.ui.DateIndicator (info.flowersoft.theotown.ui.DateIndicator)
.class public Linfo/flowersoft/theotown/ui/DateIndicator;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "DateIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;
    }
.end annotation


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public prevSpeed:I

.field public slowSpeedFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Linfo/flowersoft/theotown/city/City;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x8d

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 47
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    .line 43
    iput p1, v0, Linfo/flowersoft/theotown/ui/DateIndicator;->prevSpeed:I

    .line 48
    iput-object p4, v0, Linfo/flowersoft/theotown/ui/DateIndicator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p4, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 50
    iput-object p5, v0, Linfo/flowersoft/theotown/ui/DateIndicator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 51
    iput-object p6, v0, Linfo/flowersoft/theotown/ui/DateIndicator;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 53
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/Features;->FEATURE_SLOWSPEED:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/DateIndicator;->slowSpeedFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 55
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DateIndicator;->init()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/DateIndicator;)I
    .registers 1

    .line 29
    iget p0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->prevSpeed:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/ui/DateIndicator;I)I
    .registers 2

    .line 29
    iput p1, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->prevSpeed:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/DateIndicator;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/DateIndicator;)Lio/blueflower/stapel2d/util/Setter;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public draw(II)V
    .registers 16

    .line 117
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 120
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    int-to-float v4, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v5, v0

    const/high16 v9, 0x3f000000    # 0.5f

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK_EMPTY:I

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getDay()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    .line 125
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getMonth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    .line 126
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 127
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v2, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/lit8 v3, v2, 0xa

    int-to-float v5, v3

    iget v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v6, v3

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    float-to-double v7, v0

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v11

    .line 128
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v0, v9

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v0, v9

    add-float/2addr v2, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 129
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v9

    sub-float v8, v0, v7

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v7, v2

    .line 127
    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 132
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/lit8 v5, v0, 0xa

    int-to-float v5, v5

    iget v6, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    mul-float/2addr v1, v3

    float-to-double v7, v1

    mul-double/2addr v7, v11

    .line 133
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v1, v9

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    .line 134
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float v8, v1, v7

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v7, v0

    .line 132
    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 138
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xaa4

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/DefaultDate;->getYear()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v6, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v7, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v8, 0x42480000    # 50.0f

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 144
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public final init()V
    .registers 12

    .line 59
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PAUSE:I

    const/4 v8, 0x2

    sget-object v9, Linfo/flowersoft/theotown/input/KeyAction;->SPEED_PAUSE:Linfo/flowersoft/theotown/input/KeyAction;

    const/16 v2, 0x46

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x14

    move-object v6, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;-><init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/input/KeyAction;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->slowSpeedFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYSLOW:I

    const/4 v8, 0x4

    sget-object v9, Linfo/flowersoft/theotown/input/KeyAction;->SPEED_SLOW:Linfo/flowersoft/theotown/input/KeyAction;

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x14

    move-object v6, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;-><init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/input/KeyAction;)V

    const/16 v0, 0x22

    :goto_33
    move v10, v0

    goto :goto_38

    :cond_35
    const/16 v0, 0x11

    goto :goto_33

    .line 74
    :goto_38
    new-instance v0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;

    add-int/lit8 v2, v10, 0x46

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    const/4 v8, 0x0

    sget-object v9, Linfo/flowersoft/theotown/input/KeyAction;->SPEED_NORMAL:Linfo/flowersoft/theotown/input/KeyAction;

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x14

    move-object v6, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;-><init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/input/KeyAction;)V

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;

    add-int/lit8 v2, v10, 0x57

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFAST:I

    const/4 v8, 0x1

    sget-object v9, Linfo/flowersoft/theotown/input/KeyAction;->SPEED_FAST:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;-><init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/input/KeyAction;)V

    .line 82
    new-instance v0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;

    add-int/lit8 v2, v10, 0x68

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    const/4 v8, 0x3

    sget-object v9, Linfo/flowersoft/theotown/input/KeyAction;->SPEED_FASTFAST:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;-><init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/input/KeyAction;)V

    .line 84
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->setPlacement(III)V

    .line 87
    sget-object v7, Linfo/flowersoft/theotown/input/KeyAction;->SPEED_PAUSE_UNPAUSE:Linfo/flowersoft/theotown/input/KeyAction;

    new-instance v0, Linfo/flowersoft/theotown/ui/DateIndicator$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/DateIndicator$1;-><init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    add-int/lit8 v10, v10, 0x7c

    .line 105
    invoke-virtual {p0, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 153
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DATE:I

    .line 154
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 3

    .line 110
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 112
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator;->slowSpeedFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DateIndicator;->init()V

    :cond_15
    return-void
.end method

###### Class info.flowersoft.theotown.ui.DateIndicator.AnonymousClass1 (info.flowersoft.theotown.ui.DateIndicator$1)
.class Linfo/flowersoft/theotown/ui/DateIndicator$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "DateIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DateIndicator;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DateIndicator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 87
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DateIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onClick()V
    .registers 4

    .line 94
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DateIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$100(Linfo/flowersoft/theotown/ui/DateIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    return-void

    .line 98
    :cond_20
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$102(Linfo/flowersoft/theotown/ui/DateIndicator;I)I

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DateIndicator.SpeedButton (info.flowersoft.theotown.ui.DateIndicator$SpeedButton)
.class Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;
.super Lio/blueflower/stapel2d/gui/Button;
.source "DateIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/DateIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeedButton"
.end annotation


# instance fields
.field public final icon:I

.field public final speed:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DateIndicator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DateIndicator;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/input/KeyAction;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    move-object p1, p0

    .line 163
    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 164
    iput p7, p1, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->icon:I

    .line 165
    iput p8, p1, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->speed:I

    .line 166
    invoke-virtual {p9, p0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 171
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 172
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 173
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 175
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_31

    .line 177
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 178
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 p2, v0, 0x3

    int-to-float v3, p2

    add-int/lit8 p2, p1, 0x3

    int-to-float v4, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 p2, p2, -0x6

    int-to-float v5, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 p2, p2, -0x6

    int-to-float v6, p2

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 179
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    :cond_31
    const/high16 p2, 0x3f000000    # 0.5f

    .line 182
    invoke-virtual {v1, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 183
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v0

    int-to-float v4, p1

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p2

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->icon:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {v1, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 187
    iget p2, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->speed:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_80

    sget-boolean p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez p2, :cond_80

    .line 189
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->isPressed()Z

    move-result p2

    if-nez p2, :cond_80

    .line 190
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result p2

    if-nez p2, :cond_80

    .line 191
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object p2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    invoke-virtual {p2, v0, p1, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;)V

    :cond_80
    return-void
.end method

.method public isPressed()Z
    .registers 3

    .line 197
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->speed:I

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 8

    .line 202
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 204
    iget v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->speed:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    .line 205
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v0

    if-gtz v0, :cond_51

    .line 206
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_51

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_51

    .line 207
    new-instance v1, Linfo/flowersoft/theotown/ui/FastForwardDialog;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    .line 208
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$200(Linfo/flowersoft/theotown/ui/DateIndicator;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    .line 209
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$300(Linfo/flowersoft/theotown/ui/DateIndicator;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v3

    .line 210
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    .line 211
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$400(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    iget v6, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->speed:I

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/FastForwardDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/city/City;I)V

    const/4 v0, 0x1

    .line 212
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 216
    :cond_51
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->this$0:Linfo/flowersoft/theotown/ui/DateIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DateIndicator;->access$000(Linfo/flowersoft/theotown/ui/DateIndicator;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/DateIndicator$SpeedButton;->speed:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    return-void
.end method
