###### Class info.flowersoft.theotown.ui.scenario.ScenarioListItem (info.flowersoft.theotown.ui.scenario.ScenarioListItem)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ScenarioListItem.kt"


# instance fields
.field public final completed:Z

.field public final scenario:Linfo/flowersoft/theotown/draft/ScenarioDraft;

.field public final subText:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)V
    .registers 7

    const-string v0, "scenario"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v0, ""

    .line 18
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->scenario:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    .line 25
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->isCompleted()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->completed:Z

    .line 27
    invoke-virtual {p4, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->title:Ljava/lang/String;

    if-eqz p2, :cond_45

    const/16 p1, 0x52e

    .line 30
    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object p2

    iget-wide p2, p2, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    const/16 p4, 0x3e8

    int-to-long v0, p4

    mul-long/2addr p2, v0

    invoke-static {p2, p3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4b

    :cond_45
    const/16 p1, 0x969

    .line 34
    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    :goto_4b
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->subText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 21

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p7

    const-string v3, "skin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p0 .. p7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 45
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 47
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->scenario:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz p2, :cond_3c

    array-length p2, p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1d

    move p2, v5

    goto :goto_1e

    :cond_1d
    move p2, v3

    :goto_1e
    xor-int/2addr p2, v5

    if-ne p2, v5, :cond_3c

    .line 48
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 50
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v0

    int-to-float v7, v1

    move/from16 p2, p6

    int-to-float v9, p2

    .line 55
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->scenario:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    aget v12, p2, v3

    const/high16 v8, 0x428c0000    # 70.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    .line 49
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    :cond_3c
    if-eqz p1, :cond_41

    .line 59
    iget-object p1, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_43

    :cond_41
    iget-object p1, v2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_43
    invoke-virtual {v4, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 61
    iget-object p1, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 62
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->title:Ljava/lang/String;

    int-to-float v0, v0

    const/high16 v3, 0x428c0000    # 70.0f

    add-float/2addr v0, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v3, v1

    .line 60
    invoke-virtual {v4, p1, p2, v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/16 p1, 0x96

    .line 67
    invoke-virtual {v4, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 69
    iget-object p1, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 70
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->subText:Ljava/lang/String;

    const/high16 v2, 0x41900000    # 18.0f

    add-float/2addr v2, v1

    .line 68
    invoke-virtual {v4, p1, p2, v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 75
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->completed:Z

    if-eqz p1, :cond_7a

    const/16 p1, 0xff

    .line 76
    invoke-virtual {v4, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 78
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 p2, 0x41b00000    # 22.0f

    sub-float/2addr v0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr v1, p2

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    .line 77
    invoke-virtual {v4, p1, v0, v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 82
    :cond_7a
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x28

    return p1
.end method

.method public final getScenario()Linfo/flowersoft/theotown/draft/ScenarioDraft;
    .registers 2

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->scenario:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    return-object v0
.end method
