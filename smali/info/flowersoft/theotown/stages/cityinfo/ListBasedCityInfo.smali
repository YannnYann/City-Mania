###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo)
.class public abstract Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$SeparatorListItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$EmptyListItem;
    }
.end annotation


# instance fields
.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableCategory(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public addClickableCategory(Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 6

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;

    invoke-direct {v1, p1, p2, p3}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addClickableCategory([Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 11

    .line 39
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_15

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;

    const-string v3, ""

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void

    .line 39
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You have to provide 3 text parts"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "I",
            "Lio/blueflower/stapel2d/drawing/Font;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;-><init>(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 111
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/Runnable;)V

    return-void
.end method

.method public addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "I",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    if-eqz p6, :cond_6

    .line 103
    invoke-virtual/range {p0 .. p5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    return-void

    :cond_6
    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 105
    invoke-virtual/range {p1 .. p6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;)V
    .registers 3

    .line 82
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 6

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    invoke-direct {v1, p1, p2, p3}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addSeparator()V
    .registers 3

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$SeparatorListItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$SeparatorListItem;-><init>()V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$EmptyListItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$EmptyListItem;-><init>()V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addSpace()V
    .registers 2

    .line 94
    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 11

    .line 27
    new-instance v0, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-void
.end method

.method public colorForRatioInPercentBad(F)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 125
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 126
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, p1, v2, v0}, Lio/blueflower/stapel2d/drawing/Colors;->interpolateLight(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableCategory([Ljava/lang/String;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;

.field public final synthetic val$icon:I

.field public final synthetic val$onClick:Ljava/lang/Runnable;

.field public final synthetic val$textParts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$textParts:[Ljava/lang/String;

    iput p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$icon:I

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$onClick:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 23

    const/4 v1, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 44
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move-object v1, v7

    .line 46
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 47
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 48
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$textParts:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v3, v3, v11

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 49
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$textParts:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    div-int/lit8 v5, p5, 0x2

    add-int v12, p3, v5

    const/4 v13, 0x2

    div-int/lit8 v14, v3, 0x2

    move-object v3, v4

    sub-int v4, v12, v14

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 50
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$textParts:[Ljava/lang/String;

    aget-object v3, v1, v11

    const/4 v8, 0x0

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 51
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$textParts:[Ljava/lang/String;

    aget-object v3, v1, v13

    add-int v4, v12, v14

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 53
    iget v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$icon:I

    if-eqz v2, :cond_88

    .line 54
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 55
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    .line 56
    iget v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$icon:I

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v4

    .line 58
    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 59
    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int v6, p3, p5

    add-int/lit8 v6, v6, -0x4

    int-to-float v6, v6

    sub-float/2addr v6, v2

    move/from16 v2, p4

    int-to-float v2, v2

    move/from16 v7, p6

    int-to-float v7, v7

    sub-float/2addr v7, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v7, v4

    add-float/2addr v2, v7

    iget v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$icon:I

    invoke-virtual {v5, v3, v6, v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 62
    :cond_88
    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1e

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 72
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 74
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$1;->val$onClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.CategoryListItem (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo$CategoryListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryListItem"
.end annotation


# instance fields
.field public final icon:I

.field public final onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 4

    .line 198
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 199
    iput p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;->icon:I

    .line 200
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;->onClick:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 19

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 204
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move-object v1, v7

    .line 205
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 207
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 209
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 v4, p3, 0x2

    add-int/lit8 v6, p5, -0x4

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v5, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 211
    iget p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;->icon:I

    if-eqz p2, :cond_52

    .line 212
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 213
    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p2

    .line 214
    iget v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;->icon:I

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    .line 216
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int p3, p3, p5

    add-int/lit8 p3, p3, -0x4

    int-to-float p3, p3

    sub-float/2addr p3, p2

    int-to-float p2, p4

    move/from16 v6, p6

    int-to-float v3, v6

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr p2, v3

    .line 217
    iget v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;->icon:I

    invoke-virtual {p1, v1, p3, p2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 220
    :cond_52
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1e

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 230
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 232
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;->onClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    .line 233
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.ClickableItem (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo$ClickableItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickableItem"
.end annotation


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public desc:Ljava/lang/String;

.field public descSrc:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public font:Lio/blueflower/stapel2d/drawing/Font;

.field public icon:I

.field public onClick:Ljava/lang/Runnable;

.field public textSrc:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/Runnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "I",
            "Lio/blueflower/stapel2d/drawing/Font;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->textSrc:Lio/blueflower/stapel2d/util/Getter;

    .line 252
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->descSrc:Lio/blueflower/stapel2d/util/Getter;

    .line 253
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 254
    iput p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->icon:I

    .line 255
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->font:Lio/blueflower/stapel2d/drawing/Font;

    .line 256
    iput-object p6, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->onClick:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 26

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 261
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move v11, v4

    move v12, v6

    move-object v1, v7

    .line 263
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v2, :cond_1f

    .line 264
    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_26

    .line 266
    :cond_1f
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 269
    :goto_26
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->textSrc:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v3}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p3, 0x4

    add-int/lit8 v5, v11, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 270
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->descSrc:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v2, :cond_48

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->desc:Ljava/lang/String;

    .line 272
    :cond_48
    sget-object v13, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 273
    iget v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->icon:I

    invoke-virtual {v13, v2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v14

    .line 274
    iget v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->icon:I

    invoke-virtual {v13, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v15

    .line 275
    iget v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->icon:I

    invoke-virtual {v13, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v16

    .line 276
    iget v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->icon:I

    invoke-virtual {v13, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v17

    .line 278
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->desc:Ljava/lang/String;

    if-eqz v3, :cond_7c

    .line 279
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    add-int v5, v11, v12

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 282
    :cond_7c
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 283
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int v4, p3, p5

    add-int/lit8 v4, v4, -0x4

    int-to-float v4, v4

    sub-float/2addr v4, v14

    add-float v4, v4, v16

    int-to-float v5, v11

    int-to-float v6, v12

    sub-float/2addr v6, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float v5, v5, v17

    iget v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->icon:I

    invoke-virtual {v2, v13, v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 285
    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 296
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result p1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x8

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->descSrc:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 298
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    add-int/2addr p1, v0

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 290
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 291
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ClickableItem;->onClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.EmptyListItem (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo$EmptyListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$EmptyListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.SeparatorListItem (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo$SeparatorListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$SeparatorListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparatorListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 156
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 158
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 160
    iget-object v0, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v3

    add-int/lit8 p4, v4, 0x1

    int-to-float v3, p4

    int-to-float v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 162
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/4 p1, 0x3

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.ValueListItem (info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo$ValueListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ListBasedCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueListItem"
.end annotation


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public dedicatedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 174
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 175
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;->dedicatedValue:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 19

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 181
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move-object v1, v7

    .line 183
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 v4, p3, 0x4

    add-int/lit8 v6, p5, -0x8

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move v5, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 186
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;->dedicatedValue:Ljava/lang/String;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 188
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method
