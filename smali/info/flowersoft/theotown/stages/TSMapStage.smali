###### Class info.flowersoft.theotown.stages.TSMapStage (info.flowersoft.theotown.stages.TSMapStage)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTSMapStage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TSMapStage.kt\ninfo/flowersoft/theotown/stages/TSMapStage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,399:1\n777#2:400\n873#2,2:401\n*S KotlinDebug\n*F\n+ 1 TSMapStage.kt\ninfo/flowersoft/theotown/stages/TSMapStage\n*L\n76#1:400\n76#1:401,2\n*E\n"
.end annotation


# instance fields
.field public final availableSystems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;",
            ">;"
        }
    .end annotation
.end field

.field public bgDrawer:Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public cmdSystem:Linfo/flowersoft/theotown/ui/IconButton;

.field public currentSystem:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

.field public currentTitle:Ljava/lang/String;

.field public final draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public lastTPCount:I

.field public moveMomentumX:F

.field public moveMomentumY:F

.field public offsetX:F

.field public offsetY:F

.field public scale:F

.field public systemDrawer:Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

.field public touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

.field public touchStartCityScale:F

.field public touchStartDistance:F

.field public final tsComponent:Linfo/flowersoft/theotown/components/DefaultTSComponent;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentSystem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 42
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentSystem:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 43
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 48
    new-instance p1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {p1, p3}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    const/16 p1, 0x16

    .line 73
    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultTSComponent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->tsComponent:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 76
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystems()Ljava/util/List;

    move-result-object p1

    const-string p2, "getSystems(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 777
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 873
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_40
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 76
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 873
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 76
    :cond_57
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->availableSystems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$drawCity(Linfo/flowersoft/theotown/stages/TSMapStage;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->drawCity()V

    return-void
.end method

.method public static final synthetic access$getAvailableSystems$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Ljava/util/List;
    .registers 1

    .line 40
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->availableSystems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/drawing/TSMapStyle;
    .registers 1

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentSystem$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
    .registers 1

    .line 40
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentSystem:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    return-object p0
.end method

.method public static final synthetic access$getCurrentTitle$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDraftLocalizer$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/util/DraftLocalizer;
    .registers 1

    .line 40
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-object p0
.end method

.method public static final synthetic access$selectSystem(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->selectSystem(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V

    return-void
.end method

.method public static final synthetic access$updateStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)V
    .registers 1

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->updateStyle()V

    return-void
.end method

.method public static final synthetic access$zoom(Linfo/flowersoft/theotown/stages/TSMapStage;F)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->zoom(F)V

    return-void
.end method

.method public static final synthetic access$zoom(Linfo/flowersoft/theotown/stages/TSMapStage;FFF)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/TSMapStage;->zoom(FFF)V

    return-void
.end method

.method private final drawCity()V
    .registers 16

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getBackgroundColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 260
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 261
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 262
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v7, v0

    .line 263
    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 260
    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 266
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getBgDrawer()Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

    move-result-object v9

    iget-object v10, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const-string v0, "engine"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v11, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    iget v13, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    iget v14, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    move v12, v11

    invoke-virtual/range {v9 .. v14}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->draw(Lio/blueflower/stapel2d/drawing/Engine;FFFF)V

    .line 267
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    iget v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    iget v6, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    move v4, v3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->draw(Lio/blueflower/stapel2d/drawing/Engine;FFFF)V

    return-void
.end method

.method private final handleTouchInput()V
    .registers 14

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v0

    .line 289
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v1

    .line 291
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    if-nez v2, :cond_16

    const-string v2, "touchPane"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_16
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v2

    const-string v3, "getTouchPoints(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_66

    .line 293
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 295
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v4

    mul-float/2addr v4, v0

    .line 296
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v7

    mul-float/2addr v7, v1

    .line 297
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v8

    mul-float/2addr v8, v0

    .line 298
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v9

    mul-float/2addr v9, v1

    .line 299
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v10

    mul-float/2addr v10, v0

    .line 300
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v10, v4

    sub-float/2addr v0, v7

    .line 304
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result v1

    if-ne v1, v6, :cond_60

    const v1, -0x41333333    # -0.4f

    mul-float v8, v10, v1

    mul-float v9, v0, v1

    .line 307
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V

    .line 310
    :cond_60
    iput v8, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    .line 311
    iput v9, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    goto/16 :goto_107

    .line 312
    :cond_66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_fd

    .line 313
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 314
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 316
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v8

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v0

    .line 317
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v10

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v11

    add-float/2addr v10, v11

    mul-float/2addr v10, v9

    mul-float/2addr v10, v1

    .line 318
    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v11

    sub-float/2addr v9, v11

    mul-float/2addr v9, v0

    .line 319
    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v11

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float/2addr v9, v9

    mul-float/2addr v11, v11

    add-float/2addr v9, v11

    float-to-double v11, v9

    .line 320
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 323
    iget v11, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->lastTPCount:I

    if-ge v11, v7, :cond_b9

    .line 324
    iput v9, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchStartDistance:F

    .line 325
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchStartCityScale:F

    goto :goto_107

    .line 327
    :cond_b9
    iget v7, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchStartDistance:F

    cmpg-float v7, v9, v7

    if-nez v7, :cond_c0

    goto :goto_f8

    .line 328
    :cond_c0
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v7

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v11

    add-float/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    mul-float/2addr v7, v0

    float-to-int v0, v7

    .line 329
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v3

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v11

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 333
    iget v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchStartCityScale:F

    mul-float/2addr v3, v9

    iget v4, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchStartDistance:F

    div-float/2addr v3, v4

    .line 334
    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 335
    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 337
    iget v4, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    div-float/2addr v3, v4

    int-to-float v0, v0

    int-to-float v1, v1

    .line 338
    invoke-direct {p0, v3, v0, v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->zoom(FFF)V

    .line 341
    :goto_f8
    iput v8, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    .line 342
    iput v10, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    goto :goto_107

    .line 344
    :cond_fd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_107

    .line 345
    iput v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    .line 346
    iput v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    .line 349
    :cond_107
    :goto_107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->lastTPCount:I

    .line 351
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_159

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->scrollEdges:Z

    if-eqz v0, :cond_159

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 354
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v0

    .line 355
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v1

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-gtz v0, :cond_13e

    .line 357
    iput v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    goto :goto_149

    .line 358
    :cond_13e
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    if-lt v0, v4, :cond_149

    .line 359
    iput v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    :cond_149
    :goto_149
    if-gtz v1, :cond_14e

    .line 362
    iput v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    goto :goto_159

    .line 363
    :cond_14e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sub-int/2addr v0, v6

    if-lt v1, v0, :cond_159

    .line 364
    iput v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    .line 369
    :cond_159
    :goto_159
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_19c

    .line 370
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    add-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    .line 371
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    add-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    .line 372
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->limitOffset()V

    .line 373
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 374
    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    mul-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    .line 375
    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    mul-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    .line 377
    :cond_19c
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b7

    .line 378
    iput v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    .line 379
    iput v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    .line 382
    :cond_1b7
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->smoothScrolling:Z

    if-nez v0, :cond_1bf

    .line 383
    iput v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumY:F

    .line 384
    iput v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->moveMomentumX:F

    :cond_1bf
    return-void
.end method

.method private final limitOffset()V
    .registers 7

    .line 389
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    .line 390
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    .line 391
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 392
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 393
    iget v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    neg-int v0, v0

    int-to-float v0, v0

    iget v5, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    .line 394
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    return-void
.end method

.method private final zoom(F)V
    .registers 5

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-direct {p0, p1, v0, v2}, Linfo/flowersoft/theotown/stages/TSMapStage;->zoom(FFF)V

    return-void
.end method

.method private final zoom(FFF)V
    .registers 7

    .line 277
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3d800000    # 0.0625f

    .line 278
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 279
    iget v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    sub-float/2addr v0, p2

    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    div-float/2addr v0, v1

    .line 280
    iget v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    sub-float/2addr v2, p3

    div-float/2addr v2, v1

    .line 281
    iput p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    .line 282
    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    mul-float/2addr v2, p1

    add-float/2addr v2, p3

    .line 283
    iput v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    .line 284
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->limitOffset()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 79
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->availableSystems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 82
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void

    .line 86
    :cond_13
    new-instance v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/drawing/TSMapStyle;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/TSMapStage;->setBgDrawer(Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;)V

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v3, Linfo/flowersoft/theotown/stages/TSMapStage$enter$1;

    invoke-direct {v3, p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$1;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 96
    new-instance v3, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;

    invoke-direct {v3, p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V

    iput-object v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 142
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v3, Linfo/flowersoft/theotown/stages/TSMapStage$enter$3;

    invoke-direct {v3, p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$3;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V

    .line 150
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_SUNNY:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x3d

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v3, Linfo/flowersoft/theotown/stages/TSMapStage$enter$4;

    invoke-direct {v3, p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$4;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v1, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;Lio/blueflower/stapel2d/gui/Master;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->cmdSystem:Linfo/flowersoft/theotown/ui/IconButton;

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v1, Linfo/flowersoft/theotown/stages/TSMapStage$enter$6;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$6;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;Lio/blueflower/stapel2d/gui/Master;)V

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v3, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;

    invoke-direct {v3, p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V

    const/4 v0, 0x1

    .line 213
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentSystem:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/TSMapStage;->selectSystem(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V

    return-void
.end method

.method public final getBgDrawer()Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;
    .registers 2

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->bgDrawer:Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "bgDrawer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCenterX(Lcom/badlogic/gdx/math/Rectangle;)F
    .registers 4

    .line 64
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/high16 v1, 0x3f000000    # 0.5f

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public final getCenterY(Lcom/badlogic/gdx/math/Rectangle;)F
    .registers 4

    .line 65
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/high16 v1, 0x3f000000    # 0.5f

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public final getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;
    .registers 2

    .line 67
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->tsMapDarkMode:Z

    if-eqz v0, :cond_b

    .line 68
    sget-object v0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->Companion:Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;->getDARK()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v0

    return-object v0

    .line 70
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->Companion:Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;->getLIGHT()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;
    .registers 2

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->systemDrawer:Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "systemDrawer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .registers 2

    .line 251
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getBgDrawer()Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->dispose()V

    .line 252
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 247
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->handleTouchInput()V

    return-void
.end method

.method public final selectSystem(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V
    .registers 6

    .line 219
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentSystem:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 220
    new-instance v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/drawing/TSMapStyle;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/TSMapStage;->setSystemDrawer(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 221
    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    mul-float/2addr v2, v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    mul-float/2addr v2, v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    .line 228
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStationBounds()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bd

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStationBounds()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bd

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStationBounds()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v0, v2

    .line 231
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStationBounds()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 229
    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStationBounds()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCenterX(Lcom/badlogic/gdx/math/Rectangle;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetX:F

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->scale:F

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStationBounds()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCenterY(Lcom/badlogic/gdx/math/Rectangle;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->offsetY:F

    .line 237
    :cond_bd
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentSystem:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTitle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->currentTitle:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->cmdSystem:Linfo/flowersoft/theotown/ui/IconButton;

    if-nez v0, :cond_de

    const-string v0, "cmdSystem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_de
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getIcon()I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    return-void
.end method

.method public final setBgDrawer(Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->bgDrawer:Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

    return-void
.end method

.method public final setSystemDrawer(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage;->systemDrawer:Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 255
    const-string v0, "TSMapStage"

    return-object v0
.end method

.method public final updateStyle()V
    .registers 3

    .line 242
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getBgDrawer()Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;

    move-result-object v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->setStyle(Linfo/flowersoft/theotown/drawing/TSMapStyle;)V

    .line 243
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getCurrentStyle()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->setStyle(Linfo/flowersoft/theotown/drawing/TSMapStyle;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass1 (info.flowersoft.theotown.stages.TSMapStage$enter$1)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 11

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$1;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 90
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Panel;->draw(II)V

    .line 92
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$1;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$drawCity(Linfo/flowersoft/theotown/stages/TSMapStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass2 (info.flowersoft.theotown.stages.TSMapStage$enter$2)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;
.super Linfo/flowersoft/theotown/ui/TouchPane;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 12

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 96
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/TouchPane;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method private final getZoomStep()F
    .registers 2

    .line 103
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-lez v0, :cond_7

    .line 104
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->SMOOTH_ZOOM_STEP:F

    return v0

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method


# virtual methods
.method public clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 4

    .line 0
    return-void
.end method

.method public twoFingerClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 9

    const-string v0, "tp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-nez v3, :cond_13

    return-object v0

    .line 113
    :cond_13
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 115
    sget v3, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-nez v3, :cond_1f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v1, v3

    .line 117
    :cond_1f
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->getZoomStep()F

    move-result v3

    float-to-double v3, v3

    .line 118
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 120
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6f

    .line 121
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v4

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 122
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result p1

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v6

    mul-float/2addr p1, v6

    float-to-int p1, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_65

    .line 124
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    int-to-float v2, v4

    int-to-float p1, p1

    invoke-static {v1, v3, v2, p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$zoom(Linfo/flowersoft/theotown/stages/TSMapStage;FFF)V

    return-object v0

    .line 126
    :cond_65
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    int-to-float v2, v5

    div-float/2addr v2, v3

    int-to-float v3, v4

    int-to-float p1, p1

    invoke-static {v1, v2, v3, p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$zoom(Linfo/flowersoft/theotown/stages/TSMapStage;FFF)V

    return-object v0

    :cond_6f
    cmpg-float p1, v1, v2

    if-gez p1, :cond_79

    .line 130
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$zoom(Linfo/flowersoft/theotown/stages/TSMapStage;F)V

    return-object v0

    .line 132
    :cond_79
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$2;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    int-to-float v1, v5

    div-float/2addr v1, v3

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$zoom(Linfo/flowersoft/theotown/stages/TSMapStage;F)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass3 (info.flowersoft.theotown.stages.TSMapStage$enter$3)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 13

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$3;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    .line 142
    const-string v2, ""

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 144
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$3;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass4 (info.flowersoft.theotown.stages.TSMapStage$enter$4)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 13

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$4;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    .line 150
    const-string v2, ""

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 157
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->tsMapDarkMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 152
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 153
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->tsMapDarkMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->tsMapDarkMode:Z

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$4;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$updateStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass5 (info.flowersoft.theotown.stages.TSMapStage$enter$5)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTSMapStage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TSMapStage.kt\ninfo/flowersoft/theotown/stages/TSMapStage$enter$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,399:1\n2199#2,2:400\n*S KotlinDebug\n*F\n+ 1 TSMapStage.kt\ninfo/flowersoft/theotown/stages/TSMapStage$enter$5\n*L\n165#1:400,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public static synthetic $r8$lambda$XsTI3xjvKUpPZi9-hdd4u4PuDX8(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;->onClick$lambda$0$0$0(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 11

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    const/4 v1, 0x0

    .line 161
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public static final onClick$lambda$0$0$0(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V
    .registers 2

    .line 169
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$selectSystem(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 9

    .line 163
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 164
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    .line 165
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getAvailableSystems$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 167
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getIcon()I

    move-result v4

    .line 168
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getDraftLocalizer$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v5

    .line 169
    new-instance v6, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v3}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V

    .line 170
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getCurrentSystem$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 166
    invoke-virtual {v0, v4, v5, v6, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto :goto_14

    .line 173
    :cond_4b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage$enter$5$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.TSMapStage$enter$5$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/TSMapStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$5;->$r8$lambda$XsTI3xjvKUpPZi9-hdd4u4PuDX8(Linfo/flowersoft/theotown/stages/TSMapStage;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass6 (info.flowersoft.theotown.stages.TSMapStage$enter$6)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$6;
.super Lio/blueflower/stapel2d/gui/Label;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 10

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$6;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    .line 179
    const-string v1, ""

    const/16 v2, 0x23

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 181
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    .line 182
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$6;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getCurrentTitle$p(Linfo/flowersoft/theotown/stages/TSMapStage;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, "currentTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 183
    :cond_12
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    int-to-float v2, v2

    int-to-float p1, p1

    add-float/2addr v2, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    int-to-float p1, p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float p2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p2, v3

    add-float v3, p1, p2

    .line 184
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, p1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$6;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    iget-object v6, p1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    .line 181
    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.TSMapStage.AnonymousClass7 (info.flowersoft.theotown.stages.TSMapStage$enter$7)
.class public final Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "TSMapStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/TSMapStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTSMapStage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TSMapStage.kt\ninfo/flowersoft/theotown/stages/TSMapStage$enter$7\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,399:1\n1745#2:400\n1820#2,2:401\n1822#2:404\n1#3:403\n*S KotlinDebug\n*F\n+ 1 TSMapStage.kt\ninfo/flowersoft/theotown/stages/TSMapStage$enter$7\n*L\n196#1:400\n196#1:401,2\n196#1:404\n*E\n"
.end annotation


# instance fields
.field public legend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field public renderedStyle:Linfo/flowersoft/theotown/drawing/TSMapStyle;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/TSMapStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/TSMapStage;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 11

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    const/4 v1, 0x5

    const/16 v2, 0x23

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 191
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 193
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getCurrentStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->renderedStyle:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    return-void
.end method


# virtual methods
.method public final buildLegend()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getRoutes()Ljava/util/List;

    move-result-object v0

    const-string v1, "<get-routes>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1821
    check-cast v3, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;

    .line 197
    iget-object v4, v3, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->name:Ljava/lang/String;

    const-string v5, "name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->getSystemDrawer()Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    move-result-object v5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStyledColor(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    const-string v5, "with(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    invoke-direct {v5, v4, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1821
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_52
    return-object v2
.end method

.method public draw(II)V
    .registers 13

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->legend:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->renderedStyle:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getCurrentStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 202
    :cond_12
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->buildLegend()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->legend:Ljava/util/List;

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getCurrentStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->renderedStyle:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    .line 206
    :cond_20
    sget-object v1, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;->INSTANCE:Linfo/flowersoft/theotown/tools/marker/LegendDrawer;

    .line 207
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->legend:Ljava/util/List;

    .line 208
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v3, v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, p1, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    .line 209
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/TSMapStage;->access$getCurrentStyle(Linfo/flowersoft/theotown/stages/TSMapStage;)Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getStationColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    .line 210
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/TSMapStage$enter$7;->this$0:Linfo/flowersoft/theotown/stages/TSMapStage;

    iget-object v8, p1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const-string p1, "engine"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    const-string p1, "skin"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/tools/marker/LegendDrawer;->draw(Ljava/util/List;IIIILio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/gui/Skin;)V

    return-void
.end method
