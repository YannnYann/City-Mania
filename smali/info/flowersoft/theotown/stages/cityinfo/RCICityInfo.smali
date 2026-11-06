###### Class info.flowersoft.theotown.stages.cityinfo.RCICityInfo (info.flowersoft.theotown.stages.cityinfo.RCICityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
.source "RCICityInfo.java"


# instance fields
.field public barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

.field public demand:Linfo/flowersoft/theotown/city/components/Demand;

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;)V
    .registers 1

    .line 27
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->rebuildGraph()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 14

    const/16 p4, 0xa

    .line 59
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/city/components/Demand;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 60
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p3

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_78

    iget-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    instance-of p3, p3, Linfo/flowersoft/theotown/components/DefaultDemand;

    if-eqz p3, :cond_78

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p1

    if-nez p1, :cond_78

    .line 63
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    move-object v7, p1

    check-cast v7, Linfo/flowersoft/theotown/components/DefaultDemand;

    .line 68
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    move v8, p4

    :goto_33
    const/16 p3, 0x9

    const/16 v5, 0x16

    const/16 p4, 0x2c

    if-ge v8, p3, :cond_74

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;

    div-int/lit8 v4, p1, 0x9

    mul-int p3, v4, v8

    const/4 v1, 0x3

    add-int v2, v1, p3

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultDemand;I)V

    const-string p2, "+"

    .line 80
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/gui/Button;->setText(Ljava/lang/String;)V

    .line 82
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    add-int/lit8 v3, p2, -0x2c

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultDemand;I)V

    const-string p2, "-"

    .line 90
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/gui/Button;->setText(Ljava/lang/String;)V

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    add-int/lit8 v3, p2, -0x16

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultDemand;I)V

    move-object p2, v1

    const-string p3, "0"

    .line 106
    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/gui/Button;->setText(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move-object p2, v6

    goto :goto_33

    :cond_74
    move-object v6, p2

    move-object p2, p0

    move v2, v5

    goto :goto_7b

    :cond_78
    move-object v6, p2

    move-object p2, p0

    move v2, p4

    .line 110
    :goto_7b
    new-instance v0, Linfo/flowersoft/theotown/ui/BarGraph;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    sub-int/2addr p1, p4

    sub-int v4, p1, v2

    const/4 v1, 0x0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/BarGraph;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p2, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->rebuildGraph()V

    return-void
.end method

.method public createIcon(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Z)Lio/blueflower/stapel2d/gui/Icon;
    .registers 5

    .line 37
    new-instance p3, Linfo/flowersoft/theotown/ui/RCIIcon;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Demand;

    invoke-direct {p3, p1, p2}, Linfo/flowersoft/theotown/ui/RCIIcon;-><init>(Linfo/flowersoft/theotown/city/components/Demand;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 41
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x6

    const/4 v0, 0x3

    .line 39
    invoke-virtual {p3, v0, v0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-object p3
.end method

.method public final getDemand(F)F
    .registers 5

    .line 179
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const v1, -0x43b33333    # -0.0125f

    .line 180
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x269

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 185
    const-string v0, "RCICityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0xbe8

    return p1
.end method

.method public final rebuildGraph()V
    .registers 24

    move-object/from16 v0, p0

    .line 116
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    instance-of v2, v1, Linfo/flowersoft/theotown/components/DefaultDemand;

    if-eqz v2, :cond_d

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDemand;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->calculate()V

    .line 117
    :cond_d
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/BarGraph;->clear()V

    .line 119
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 120
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 121
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 122
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    .line 124
    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    .line 125
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    const v6, 0x3d4ccccd    # 0.05f

    invoke-virtual {v5, v2, v6}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    .line 126
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-virtual {v5, v2, v6}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    .line 127
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2, v3, v6}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    .line 128
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2, v3, v6}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v10

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    .line 129
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v11

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    .line 130
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    .line 133
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x1c2

    .line 134
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x134

    .line 135
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x860

    .line 136
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v4, "$cat_residential00_level00"

    .line 140
    const-class v9, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v4, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v10, 0x0

    aget-object v5, v2, v10

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES1:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 141
    invoke-virtual {v7, v10}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v7

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v7

    aget-object v8, v1, v10

    .line 139
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 142
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v3, "$cat_residential00_level01"

    .line 143
    invoke-static {v3, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    iget-object v12, v3, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v3, 0x1

    aget-object v13, v2, v3

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES2:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 144
    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v15

    aget-object v16, v1, v3

    .line 142
    invoke-virtual/range {v11 .. v16}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 145
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v5, "$cat_residential00_level02"

    .line 146
    invoke-static {v5, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v6, 0x2

    aget-object v19, v2, v6

    sget-object v20, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES3:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 147
    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v7

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v21

    aget-object v22, v1, v10

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 145
    invoke-virtual/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 149
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v4, "$cat_commercial00_level00"

    .line 150
    invoke-static {v4, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    iget-object v12, v4, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget-object v13, v2, v10

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM1:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 151
    invoke-virtual {v4, v10}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v15

    const/4 v4, 0x3

    aget-object v16, v1, v4

    .line 149
    invoke-virtual/range {v11 .. v16}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 152
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v7, "$cat_commercial00_level01"

    .line 153
    invoke-static {v7, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget-object v19, v2, v3

    sget-object v20, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM2:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 154
    invoke-virtual {v8, v3}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v8

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v21

    aget-object v22, v1, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    .line 152
    invoke-virtual/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 155
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v5, "$cat_commercial00_level02"

    .line 156
    invoke-static {v5, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v5

    iget-object v12, v5, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget-object v13, v2, v6

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM3:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 157
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v5

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v15

    aget-object v16, v1, v4

    .line 155
    invoke-virtual/range {v11 .. v16}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 159
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v7, "$cat_industrial00_level00"

    .line 160
    invoke-static {v7, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget-object v19, v2, v10

    sget-object v20, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND1:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 161
    invoke-virtual {v8, v10}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v8

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v21

    const/4 v8, 0x4

    aget-object v22, v1, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    .line 159
    invoke-virtual/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 162
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v5, "$cat_industrial00_level01"

    .line 163
    invoke-static {v5, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v5

    iget-object v12, v5, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget-object v13, v2, v3

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND2:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 164
    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v15

    const/4 v3, 0x5

    aget-object v16, v1, v3

    .line 162
    invoke-virtual/range {v11 .. v16}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 165
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const-string v5, "$cat_industrial00_level02"

    .line 166
    invoke-static {v5, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget-object v19, v2, v6

    sget-object v20, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND3:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    .line 167
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->getDemand(F)F

    move-result v21

    aget-object v22, v1, v8

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .line 165
    invoke-virtual/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/BarGraph;->addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V

    .line 169
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    const/16 v2, 0x3c

    .line 170
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 171
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x84d

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10, v4, v1}, Linfo/flowersoft/theotown/ui/BarGraph;->addHeadline(Ljava/lang/String;IILio/blueflower/stapel2d/drawing/Color;)V

    .line 172
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa84

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4, v1}, Linfo/flowersoft/theotown/ui/BarGraph;->addHeadline(Ljava/lang/String;IILio/blueflower/stapel2d/drawing/Color;)V

    .line 173
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x836

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v2, v3, v5, v4, v1}, Linfo/flowersoft/theotown/ui/BarGraph;->addHeadline(Ljava/lang/String;IILio/blueflower/stapel2d/drawing/Color;)V

    .line 175
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->barGraph:Linfo/flowersoft/theotown/ui/BarGraph;

    const/high16 v2, -0x40600000    # -1.25f

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/ui/BarGraph;->setView(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 190
    const-string v0, "RCI"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RCICityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.RCICityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RCICityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

.field public final synthetic val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultDemand;I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iput p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;->val$type:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 76
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;->val$type:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultDemand;->setOffset(II)V

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RCICityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.RCICityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RCICityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

.field public final synthetic val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultDemand;I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iput p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;->val$type:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 86
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;->val$type:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultDemand;->setOffset(II)V

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RCICityInfo.AnonymousClass3 (info.flowersoft.theotown.stages.cityinfo.RCICityInfo$3)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;
.super Lio/blueflower/stapel2d/gui/ToggleButton;
.source "RCICityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

.field public final synthetic val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultDemand;I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iput p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$type:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ToggleButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 3

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$type:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getMultiplier(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 101
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->onClick()V

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$type:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getMultiplier(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultDemand;->setMultiplier(II)V

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$defaultDemand:Linfo/flowersoft/theotown/components/DefaultDemand;

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->val$type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultDemand;->setOffset(II)V

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;)V

    return-void
.end method
