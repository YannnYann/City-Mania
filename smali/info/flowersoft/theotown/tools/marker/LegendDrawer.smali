###### Class info.flowersoft.theotown.tools.marker.LegendDrawer (info.flowersoft.theotown.tools.marker.LegendDrawer)
.class public final Linfo/flowersoft/theotown/tools/marker/LegendDrawer;
.super Ljava/lang/Object;
.source "LegendDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendDrawer.kt\ninfo/flowersoft/theotown/tools/marker/LegendDrawer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/tools/marker/LegendDrawer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;->INSTANCE:Linfo/flowersoft/theotown/tools/marker/LegendDrawer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Ljava/util/List;IIIILio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/gui/Skin;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;IIII",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "Lio/blueflower/stapel2d/drawing/Engine;",
            "Lio/blueflower/stapel2d/gui/Skin;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const-string v5, "iconOutlineColor"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "engine"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "skin"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1c

    goto :goto_22

    .line 20
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_23

    :goto_22
    return-void

    .line 32
    :cond_23
    iget-object v10, v4, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 33
    invoke-virtual {v10}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v4

    float-to-int v11, v4

    .line 35
    div-int v4, v1, v11

    .line 37
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_119

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    if-ge v6, v7, :cond_48

    move v6, v7

    goto :goto_48

    .line 39
    :cond_61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    .line 40
    div-int v4, p4, v5

    add-int/lit8 v6, v6, 0xf

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 44
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_7d
    if-ge v15, v13, :cond_113

    .line 45
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 46
    invoke-virtual {v4}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->getText()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v4}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v4

    add-int v6, p2, v16

    add-int v7, p3, v17

    .line 52
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object v8, v4

    .line 54
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move-object v9, v5

    int-to-float v5, v6

    .line 56
    div-int/lit8 v18, v11, 0x2

    add-int v18, v7, v18

    add-int/lit8 v14, v18, -0x4

    int-to-float v14, v14

    move-object/from16 v19, v8

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v20, v9

    .line 59
    sget v9, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v21, v7

    const/high16 v7, 0x41000000    # 8.0f

    move-object/from16 v0, v19

    move/from16 v2, v21

    move/from16 v19, v6

    move v6, v14

    move-object/from16 v14, v20

    .line 53
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 62
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v0, v4}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object v0, v4

    .line 64
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v19, 0x1

    int-to-float v5, v6

    add-int/lit8 v6, v18, -0x3

    int-to-float v6, v6

    const/high16 v8, 0x40c00000    # 6.0f

    .line 69
    sget v9, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v7, 0x40c00000    # 6.0f

    .line 63
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 73
    invoke-virtual {v10, v14}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    add-int/lit8 v5, v12, -0xa

    int-to-float v5, v5

    cmpl-float v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_e7

    div-float/2addr v5, v4

    .line 75
    invoke-virtual {v3, v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 77
    :cond_e7
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 78
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    add-int/lit8 v6, v19, 0xa

    int-to-float v5, v6

    int-to-float v6, v2

    .line 83
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v9, p7

    move v0, v7

    move-object v7, v10

    move-object v4, v14

    .line 78
    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;)V

    move-object v3, v9

    .line 86
    invoke-virtual {v3, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    add-int v17, v17, v11

    add-int v0, v17, v11

    if-le v0, v1, :cond_10a

    add-int v16, v16, v12

    const/16 v17, 0x0

    :cond_10a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p6

    move-object v10, v7

    goto/16 :goto_7d

    .line 94
    :cond_113
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 37
    :cond_119
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
