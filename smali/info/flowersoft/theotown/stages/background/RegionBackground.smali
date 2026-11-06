###### Class info.flowersoft.theotown.stages.background.RegionBackground (info.flowersoft.theotown.stages.background.RegionBackground)
.class public final Linfo/flowersoft/theotown/stages/background/RegionBackground;
.super Ljava/lang/Object;
.source "RegionBackground.kt"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegionBackground.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegionBackground.kt\ninfo/flowersoft/theotown/stages/background/RegionBackground\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,191:1\n2199#2,2:192\n2199#2,2:194\n22#3:196\n74#3,16:197\n*S KotlinDebug\n*F\n+ 1 RegionBackground.kt\ninfo/flowersoft/theotown/stages/background/RegionBackground\n*L\n165#1:192,2\n170#1:194,2\n178#1:196\n178#1:197,16\n*E\n"
.end annotation


# instance fields
.field public final bgImage$delegate:Lkotlin/Lazy;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

.field public final pixmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation
.end field

.field public final starsImage$delegate:Lkotlin/Lazy;

.field public final textures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$V5btFFeX7K9CgAd8wtQ-zF6nvgY(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->starsImage_delegate$lambda$0(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VKsLCgBbsmwbIKpO0JBKZYlUBqE(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->bgImage_delegate$lambda$0(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->textures:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->pixmaps:Ljava/util/List;

    .line 27
    new-instance p1, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/background/RegionBackground;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->bgImage$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p1, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/background/RegionBackground;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->starsImage$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    const-wide/16 v0, 0x7c

    invoke-direct {p1, v0, v1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;-><init>(J)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    return-void
.end method

.method public static final bgImage_delegate$lambda$0(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 3

    .line 27
    const-string v0, "bg_region00.jpg"

    const/16 v1, 0x2601

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p0

    return-object p0
.end method

.method public static final starsImage_delegate$lambda$0(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 3

    .line 28
    const-string v0, "bg_region01.jpg"

    const/16 v1, 0x2601

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .registers 4

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->textures:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/drawing/Texture;

    .line 166
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    goto :goto_8

    .line 168
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->textures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->pixmaps:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Pixmap;

    .line 171
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_2b

    .line 173
    :cond_3b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->pixmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final draw(FFF)V
    .registers 21

    move-object/from16 v0, p0

    .line 125
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v16

    .line 126
    invoke-virtual/range {v16 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 129
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getBgImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    move/from16 v2, p1

    neg-float v10, v2

    move/from16 v2, p2

    neg-float v11, v2

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const v9, 0x3f8147ae    # 1.01f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual/range {v0 .. v15}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->drawTiled(Lio/blueflower/stapel2d/drawing/Image;IIFFFFFFFFFFFF)V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_73

    .line 140
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getStarsImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v5, p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v6, p3, v0

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f828f5c    # 1.02f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 139
    invoke-virtual/range {v0 .. v15}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->drawTiled(Lio/blueflower/stapel2d/drawing/Image;IIFFFFFFFFFFFF)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getStarsImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    const v0, 0x3f99999a    # 1.2f

    mul-float v6, p3, v0

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3f83d70a    # 1.03f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    .line 149
    invoke-virtual/range {v0 .. v15}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->drawTiled(Lio/blueflower/stapel2d/drawing/Image;IIFFFFFFFFFFFF)V

    .line 160
    :cond_73
    invoke-virtual/range {v16 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 161
    invoke-virtual/range {v16 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    return-void
.end method

.method public final drawTiled(Lio/blueflower/stapel2d/drawing/Image;IIFFFFFFFFFFFF)V
    .registers 53

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    .line 47
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v5

    int-to-float v5, v5

    .line 49
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v8, v5, v7

    const/4 v9, 0x0

    move-object/from16 v10, p1

    .line 51
    invoke-virtual {v10, v9}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v10

    .line 52
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v11

    const v13, 0x1e8480

    int-to-long v13, v13

    rem-long/2addr v11, v13

    const v13, 0xf4240

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    long-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    mul-float v11, v11, p8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v8, v12

    sub-float v14, v12, v13

    .line 54
    invoke-static {v14}, Lio/blueflower/stapel2d/util/MathUtil;->clamp01(F)F

    move-result v14

    sub-float/2addr v14, v12

    div-float v14, v14, p9

    add-float/2addr v14, v12

    div-float v8, v12, v8

    sub-float v15, v12, v8

    .line 55
    invoke-static {v15}, Lio/blueflower/stapel2d/util/MathUtil;->clamp01(F)F

    move-result v15

    sub-float/2addr v15, v12

    div-float v15, v15, p9

    add-float/2addr v15, v12

    add-float/2addr v13, v12

    .line 56
    invoke-static {v13}, Lio/blueflower/stapel2d/util/MathUtil;->clamp01(F)F

    move-result v13

    sub-float/2addr v13, v12

    div-float v13, v13, p9

    add-float/2addr v13, v12

    add-float/2addr v8, v12

    .line 57
    invoke-static {v8}, Lio/blueflower/stapel2d/util/MathUtil;->clamp01(F)F

    move-result v8

    sub-float/2addr v8, v12

    div-float v8, v8, p9

    add-float/2addr v8, v12

    mul-float v16, p10, v12

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v17, p9, v29

    mul-float v16, v16, v17

    add-float v14, v14, v16

    mul-float v12, v12, p11

    mul-float v12, v12, v17

    add-float/2addr v15, v12

    add-float v13, v13, v16

    add-float/2addr v8, v12

    mul-float v12, v14, p12

    mul-float v14, v15, p13

    mul-float v13, v13, p12

    mul-float v8, v8, p13

    move v15, v9

    :goto_82
    if-ge v15, v2, :cond_218

    int-to-float v9, v15

    move-object/from16 v17, v6

    const/4 v6, 0x0

    add-float v18, v9, v6

    move/from16 p1, v6

    int-to-float v6, v2

    div-float v2, v18, v6

    add-float v9, v9, v29

    div-float v6, v9, v6

    const/4 v9, 0x0

    :goto_94
    if-ge v9, v1, :cond_1f6

    move-object/from16 v18, v10

    int-to-float v10, v9

    add-float v19, v10, p1

    move/from16 v20, v9

    int-to-float v9, v1

    div-float v1, v19, v9

    add-float v10, v10, v29

    div-float/2addr v10, v9

    move/from16 v9, p1

    .line 75
    invoke-static {v9, v5, v1}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v19

    .line 76
    invoke-static {v9, v7, v2}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v21

    .line 77
    invoke-static {v9, v5, v10}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v22

    .line 78
    invoke-static {v9, v7, v6}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v23

    const/16 v24, 0x0

    .line 79
    invoke-static {v12, v13, v1}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v16

    move-object/from16 v25, v17

    .line 80
    invoke-static {v14, v8, v2}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v17

    move/from16 v26, v20

    .line 81
    invoke-static {v12, v13, v10}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v20

    move/from16 v27, v19

    .line 82
    invoke-static {v14, v8, v6}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v19

    .line 85
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    mul-float v1, v1, p4

    move/from16 p8, v1

    const/4 v1, 0x7

    int-to-float v1, v1

    move/from16 v28, v1

    add-float v1, p8, v28

    mul-float v30, p4, v2

    move/from16 v31, v2

    const/16 v2, 0x1f

    int-to-float v2, v2

    move/from16 p9, v2

    add-float v2, v30, p9

    invoke-virtual {v9, v1, v2, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v9

    .line 84
    invoke-static {v3, v4, v9}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v9

    move/from16 v32, v5

    .line 88
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    mul-float v33, p4, v6

    move/from16 v34, v6

    add-float v6, v33, p9

    invoke-virtual {v5, v1, v6, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v1

    .line 87
    invoke-static {v3, v4, v1}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v1

    .line 91
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    mul-float v10, v10, p4

    move/from16 v35, v1

    add-float v1, v10, v28

    invoke-virtual {v5, v1, v6, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v5

    .line 90
    invoke-static {v3, v4, v5}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v5

    .line 94
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    invoke-virtual {v6, v1, v2, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v1

    .line 93
    invoke-static {v3, v4, v1}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v1

    .line 96
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    const/16 v6, 0x25

    int-to-float v6, v6

    move/from16 v28, v1

    add-float v1, p8, v6

    const/16 v3, 0x49

    int-to-float v3, v3

    move/from16 p8, v3

    add-float v3, v30, p8

    invoke-virtual {v2, v1, v3, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v2

    mul-float v2, v2, p14

    add-float v2, v2, p15

    move/from16 p9, v2

    .line 97
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    add-float v4, v33, p8

    invoke-virtual {v2, v1, v4, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v1

    mul-float v1, v1, p14

    add-float v1, v1, p15

    .line 98
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    add-float/2addr v10, v6

    invoke-virtual {v2, v10, v4, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v2

    mul-float v2, v2, p14

    add-float v2, v2, p15

    .line 99
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    invoke-virtual {v4, v10, v3, v11}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v3

    mul-float v3, v3, p14

    add-float v3, v3, p15

    sub-float v4, v29, p9

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v10, p9, v29

    move/from16 p13, p7

    move-object/from16 p8, v0

    move/from16 p9, v4

    move/from16 p10, v6

    move/from16 p12, v9

    move/from16 p11, v10

    .line 100
    invoke-virtual/range {p8 .. p13}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getColor(FFFFF)F

    move-result v0

    sub-float v4, v29, v1

    add-float v1, v1, v29

    move-object/from16 p8, p0

    move/from16 p11, v1

    move/from16 p9, v4

    move/from16 p12, v35

    .line 101
    invoke-virtual/range {p8 .. p13}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getColor(FFFFF)F

    move-result v1

    sub-float v4, v29, v2

    add-float v2, v2, v29

    move/from16 p11, v2

    move/from16 p9, v4

    move/from16 p12, v5

    .line 102
    invoke-virtual/range {p8 .. p13}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getColor(FFFFF)F

    move-result v2

    sub-float v4, v29, v3

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v3, v3, v29

    move/from16 p11, v3

    move/from16 p9, v4

    move/from16 p10, v5

    move/from16 p12, v28

    .line 103
    invoke-virtual/range {p8 .. p13}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->getColor(FFFFF)F

    move-result v3

    const/16 v28, 0x1

    move/from16 v10, v27

    move v4, v13

    move/from16 v13, v23

    move v5, v14

    move/from16 v14, v22

    move v9, v15

    move/from16 v15, v21

    move v6, v7

    move-object/from16 v7, v18

    move/from16 v18, v16

    move/from16 v30, v9

    move/from16 v9, v21

    move/from16 v21, v19

    move/from16 v33, v12

    move/from16 v12, v22

    move/from16 v22, v20

    move/from16 v35, v11

    move/from16 v11, v23

    move/from16 v23, v17

    move/from16 v36, v24

    move/from16 v24, v0

    move v0, v6

    move-object/from16 v6, v25

    move/from16 v25, v1

    move/from16 v1, v36

    move/from16 v36, v26

    move/from16 v26, v2

    move v2, v8

    move/from16 v8, v27

    move/from16 v27, v3

    const/4 v3, 0x0

    .line 105
    invoke-virtual/range {v6 .. v28}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFFFFFI)V

    move-object/from16 v17, v6

    add-int/lit8 v9, v36, 0x1

    move/from16 v1, p2

    move v8, v2

    move/from16 p1, v3

    move v13, v4

    move v14, v5

    move-object v10, v7

    move/from16 v15, v30

    move/from16 v2, v31

    move/from16 v5, v32

    move/from16 v12, v33

    move/from16 v6, v34

    move/from16 v11, v35

    move/from16 v3, p5

    move/from16 v4, p6

    move v7, v0

    move-object/from16 v0, p0

    goto/16 :goto_94

    :cond_1f6
    move/from16 v32, v5

    move v0, v7

    move v2, v8

    move-object v7, v10

    move/from16 v35, v11

    move/from16 v33, v12

    move v4, v13

    move v5, v14

    move/from16 v30, v15

    const/4 v1, 0x0

    add-int/lit8 v15, v30, 0x1

    move/from16 v3, p5

    move v9, v1

    move-object/from16 v6, v17

    move/from16 v5, v32

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p6

    move v7, v0

    move-object/from16 v0, p0

    goto/16 :goto_82

    :cond_218
    return-void
.end method

.method public final getBgImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->bgImage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public final getColor(FFFFF)F
    .registers 9

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    mul-float/2addr p1, p4

    float-to-int p1, p1

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 117
    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    mul-float/2addr p2, v0

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 118
    invoke-static {p2, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p2

    mul-float/2addr p3, v0

    mul-float/2addr p3, p4

    float-to-int p3, p3

    .line 119
    invoke-static {p3, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p5

    mul-float/2addr v0, p4

    int-to-float p4, v2

    mul-float/2addr v0, p4

    float-to-int p4, v0

    .line 120
    invoke-static {p4, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p4

    .line 121
    sget-object p5, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    shl-int/lit8 p4, p4, 0x18

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final getStarsImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->starsImage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public final loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;
    .registers 7

    .line 178
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 75
    :try_start_19
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "getBytes(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_2d} :catch_3d

    .line 85
    :try_start_2d
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 86
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v2, "digest(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_3c} :catch_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception p1

    goto :goto_4f

    :catch_3f
    move-exception p1

    .line 88
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    new-array p1, v1, [B

    .line 75
    :goto_45
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p1

    const-string v2, "bin2hex(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_4e} :catch_3d

    goto :goto_54

    .line 77
    :goto_4f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string p1, ""

    .line 178
    :goto_54
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    const/4 v0, 0x4

    .line 177
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPAPixmap(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    .line 182
    new-instance v0, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v2, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;

    invoke-direct {v2, p1, v1}, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    invoke-direct {v0, v2}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 183
    invoke-virtual {v0, p2, p2}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 185
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->textures:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground;->pixmaps:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Image;->createSingleFrame(Lio/blueflower/stapel2d/drawing/Texture;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p1

    const-string p2, "createSingleFrame(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.background.RegionBackground$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.background.RegionBackground$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/background/RegionBackground;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/background/RegionBackground;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->$r8$lambda$VKsLCgBbsmwbIKpO0JBKZYlUBqE(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.background.RegionBackground$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.background.RegionBackground$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/background/RegionBackground;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/background/RegionBackground;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/background/RegionBackground$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->$r8$lambda$V5btFFeX7K9CgAd8wtQ-zF6nvgY(Linfo/flowersoft/theotown/stages/background/RegionBackground;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0
.end method
