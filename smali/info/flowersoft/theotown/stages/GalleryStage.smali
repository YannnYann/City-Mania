###### Class info.flowersoft.theotown.stages.GalleryStage (info.flowersoft.theotown.stages.GalleryStage)
.class public Linfo/flowersoft/theotown/stages/GalleryStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "GalleryStage.java"


# instance fields
.field public final headerHeight:I

.field public itemsPerLine:I

.field public lastTouchPointCount:I

.field public moveY:F

.field public moveYSpeed:F

.field public final store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public tileHeight:I

.field public tileWidth:I

.field public touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

.field public final xywh:[I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->xywh:[I

    const/16 v0, 0x1e

    .line 47
    iput v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->headerHeight:I

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/GalleryStage;II)I
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/GalleryStage;->getIndexAt(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->xywh:[I

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/GalleryStage;[IIII)V
    .registers 5

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/stages/GalleryStage;->calculateRect([IIII)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V
    .registers 7

    .line 36
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/stages/GalleryStage;->clickTile(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/GalleryStage;)F
    .registers 1

    .line 36
    iget p0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    return p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/stages/GalleryStage;F)F
    .registers 2

    .line 36
    iput p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    return p1
.end method

.method public static synthetic access$524(Linfo/flowersoft/theotown/stages/GalleryStage;F)F
    .registers 3

    .line 36
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    sub-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    return v0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V
    .registers 7

    .line 36
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/stages/GalleryStage;->drawTile(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V

    return-void
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/stages/GalleryStage;F)F
    .registers 2

    .line 36
    iput p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveYSpeed:F

    return p1
.end method


# virtual methods
.method public final addTabButton(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;I)Linfo/flowersoft/theotown/ui/IconButton;
    .registers 15

    .line 223
    new-instance v0, Linfo/flowersoft/theotown/stages/GalleryStage$6;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/GalleryStage$6;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;I)V

    return-object v0
.end method

.method public final buildContentCanvas()Lio/blueflower/stapel2d/gui/Gadget;
    .registers 3

    .line 168
    new-instance v0, Linfo/flowersoft/theotown/stages/GalleryStage$5;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/stages/GalleryStage$5;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-object v0
.end method

.method public final calculateRect([IIII)V
    .registers 8

    .line 301
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    rem-int v1, p2, v0

    iget v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    const/4 p3, 0x0

    aput v1, p1, p3

    .line 302
    div-int/2addr p2, v0

    iget p3, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileHeight:I

    mul-int/2addr p2, p3

    iget p3, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1e

    add-int/2addr p2, p4

    const/4 p3, 0x1

    aput p2, p1, p3

    const/4 p2, 0x2

    .line 303
    iget p3, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileWidth:I

    aput p3, p1, p2

    const/4 p2, 0x3

    .line 304
    iget p3, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileHeight:I

    aput p3, p1, p2

    return-void
.end method

.method public final clickTile(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V
    .registers 14

    add-int/lit8 p6, p6, -0x1e

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-lt p4, p6, :cond_57

    .line 379
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getOverallRating()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p6

    const-string v1, "%,d"

    invoke-static {v1, p6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 380
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1, p6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p6

    float-to-int p6, p6

    sub-int v1, p5, p6

    add-int/lit8 v1, v1, -0x32

    if-le p3, v1, :cond_59

    .line 383
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 385
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getOwnRating()I

    move-result v1

    if-nez v1, :cond_4c

    .line 387
    div-int/lit8 p6, p6, 0x2

    sub-int p6, p5, p6

    add-int/lit8 p6, p6, -0x18

    if-ge p3, p6, :cond_48

    const/4 p6, -0x1

    .line 388
    invoke-virtual {p1, p6}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->rate(I)V

    goto :goto_57

    .line 390
    :cond_48
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->rate(I)V

    goto :goto_57

    .line 393
    :cond_4c
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->rate(I)V

    goto :goto_57

    .line 396
    :cond_50
    sget-object p6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-interface {p6, v1}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->showConnectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    :cond_57
    :goto_57
    move-object v5, p1

    goto :goto_77

    :cond_59
    const/16 p6, 0xc8

    if-ge p3, p6, :cond_57

    .line 399
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p6

    new-instance v1, Linfo/flowersoft/theotown/stages/GalleryCommentStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    new-instance v6, Linfo/flowersoft/theotown/stages/GalleryStage$7;

    invoke-direct {v6, p0, p1}, Linfo/flowersoft/theotown/stages/GalleryStage$7;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/stages/GalleryCommentStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    invoke-virtual {p6, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :goto_77
    const/4 p1, 0x4

    if-lt p4, p1, :cond_d0

    const/16 p1, 0x14

    if-ge p4, p1, :cond_d0

    sub-int/2addr p5, p1

    if-lt p3, p5, :cond_d0

    .line 423
    invoke-virtual {v5}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->isMyOwn()Z

    move-result p1

    if-nez p1, :cond_95

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result p1

    if-lez p1, :cond_d0

    .line 424
    :cond_95
    new-instance p1, Linfo/flowersoft/theotown/ui/Dialog;

    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object p4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p5, 0x604

    .line 425
    invoke-interface {p4, p5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p6, 0x100

    .line 426
    invoke-interface {p5, p6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {p1, p3, p4, p5, p6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 427
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object p4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p5, 0x5c5

    invoke-interface {p4, p5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 428
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object p4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p5, 0x7a5

    invoke-interface {p4, p5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Linfo/flowersoft/theotown/stages/GalleryStage$8;

    invoke-direct {p5, p0, v5}, Linfo/flowersoft/theotown/stages/GalleryStage$8;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    invoke-virtual {p1, p3, p4, p2, p5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 434
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_d0
    return-void
.end method

.method public final drawDownArrow(III)V
    .registers 12

    .line 439
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    sub-int v1, p1, p3

    int-to-float v1, v1

    int-to-float v2, p2

    int-to-float v3, p1

    add-int/2addr p2, p3

    int-to-float v4, p2

    add-int/2addr p1, p3

    int-to-float v5, p1

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public final drawImage(Lio/blueflower/stapel2d/drawing/Image;IIII)V
    .registers 16

    .line 447
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    invoke-virtual {v0, v3, v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 448
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result p2

    div-float p2, v5, p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result p3

    div-float p3, v6, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 449
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p3, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 450
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 451
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 452
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public final drawTile(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 322
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    .line 324
    iget-object v10, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v12, v6

    int-to-float v13, v7

    int-to-float v14, v8

    int-to-float v15, v9

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move/from16 v16, v2

    invoke-virtual/range {v10 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 325
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->isMyOwn()Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_2c

    :cond_2a
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    :goto_2c
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 326
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v17, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v3, v6, 0x3

    int-to-float v3, v3

    add-int/lit8 v4, v7, 0x3

    int-to-float v4, v4

    add-int/lit8 v5, v8, -0x6

    int-to-float v5, v5

    add-int/lit8 v10, v9, -0x6

    int-to-float v10, v10

    sget v22, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v10

    invoke-virtual/range {v16 .. v22}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 327
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-eqz v1, :cond_63

    add-int/lit8 v2, v6, 0x4

    add-int/lit8 v3, v7, 0x4

    add-int/lit8 v4, v8, -0x8

    add-int/lit8 v5, v9, -0x8

    .line 329
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/GalleryStage;->drawImage(Lio/blueflower/stapel2d/drawing/Image;IIII)V

    goto :goto_89

    .line 331
    :cond_63
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 332
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v17, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v2, v6, 0x4

    int-to-float v2, v2

    add-int/lit8 v3, v7, 0x4

    int-to-float v3, v3

    add-int/lit8 v4, v8, -0x8

    int-to-float v4, v4

    add-int/lit8 v5, v9, -0x8

    int-to-float v5, v5

    sget v22, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v16 .. v22}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 337
    :goto_89
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 338
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 339
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v17, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v3, v6, 0x4

    int-to-float v3, v3

    add-int v4, v7, v9

    add-int/lit8 v5, v4, -0x20

    int-to-float v5, v5

    add-int/lit8 v9, v8, -0x8

    int-to-float v9, v9

    const/high16 v21, 0x41e00000    # 28.0f

    sget v22, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object/from16 v16, v1

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v9

    invoke-virtual/range {v16 .. v22}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 340
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 341
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 342
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 343
    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 344
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getName()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v6, 0x6

    int-to-float v12, v12

    add-int/lit8 v13, v4, -0x20

    int-to-float v13, v13

    invoke-virtual {v9, v1, v11, v12, v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 345
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v9, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 346
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v11, 0x94f

    invoke-interface {v9, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getUserName()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v11, v6, 0x8

    int-to-float v11, v11

    .line 347
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v11, v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v1

    add-float/2addr v13, v1

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v1

    sub-float/2addr v13, v1

    .line 346
    invoke-virtual {v2, v5, v9, v11, v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 348
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 349
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getComments()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v6, 0x14

    int-to-float v3, v3

    add-int/lit8 v9, v4, -0x10

    int-to-float v9, v9

    invoke-virtual {v1, v5, v2, v3, v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 350
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 351
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v9, v4, -0x12

    int-to-float v9, v9

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    invoke-virtual {v1, v3, v12, v9, v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 352
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 354
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getOverallRating()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v9, "%,d"

    invoke-static {v9, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {v5, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    .line 356
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int/2addr v8, v6

    add-int/lit8 v12, v8, -0x4

    sub-int/2addr v12, v9

    add-int/lit8 v9, v12, -0x14

    int-to-float v9, v9

    add-int/lit8 v13, v4, -0xf

    add-int/lit8 v3, v4, -0x17

    int-to-float v3, v3

    invoke-virtual {v11, v5, v1, v9, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getOwnRating()I

    move-result v1

    .line 359
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0x50

    if-lez v1, :cond_17f

    move v9, v5

    goto :goto_181

    :cond_17f
    const/16 v9, 0xff

    :goto_181
    invoke-virtual {v3, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 360
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-gez v1, :cond_18b

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_18c

    :cond_18b
    move-object v9, v10

    :goto_18c
    invoke-virtual {v3, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v12, v12, -0x1e

    add-int/lit8 v4, v4, -0x14

    const/4 v3, 0x5

    .line 361
    invoke-virtual {v0, v12, v4, v3}, Linfo/flowersoft/theotown/stages/GalleryStage;->drawDownArrow(III)V

    .line 362
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-gez v1, :cond_19c

    goto :goto_19e

    :cond_19c
    const/16 v5, 0xff

    :goto_19e
    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 363
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-lez v1, :cond_1a8

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_1a9

    :cond_1a8
    move-object v1, v10

    :goto_1a9
    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v8, v8, -0xe

    .line 364
    invoke-virtual {v0, v8, v13, v3}, Linfo/flowersoft/theotown/stages/GalleryStage;->drawUpArrow(III)V

    .line 365
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 366
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 368
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->isMyOwn()Z

    move-result v1

    if-nez v1, :cond_1d1

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v1

    if-lez v1, :cond_1f8

    .line 369
    :cond_1d1
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move/from16 v18, v14

    .line 370
    iget-object v14, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v19, v15

    sget-object v15, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v1, v6, -0x4

    int-to-float v1, v1

    add-int/lit8 v2, v7, 0x4

    int-to-float v2, v2

    const/16 v21, 0x0

    sget v22, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v14 .. v22}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 371
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 374
    :cond_1f8
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->indicateUsage()V

    return-void
.end method

.method public final drawUpArrow(III)V
    .registers 12

    .line 443
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    sub-int v1, p1, p3

    int-to-float v1, v1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    int-to-float v5, p1

    sub-int/2addr p2, p3

    int-to-float v6, p2

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v4, v2

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public drop()V
    .registers 1

    .line 464
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public enter()V
    .registers 11

    .line 60
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    const/4 v8, 0x1

    .line 63
    iput v8, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    .line 64
    :goto_6
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_30

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    div-int/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v0, v2

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileHeight:I

    .line 67
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    if-lt v0, v2, :cond_30

    .line 68
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    add-int/2addr v0, v8

    iput v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    goto :goto_6

    .line 74
    :cond_30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/GalleryStage;->buildContentCanvas()Lio/blueflower/stapel2d/gui/Gadget;

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/stages/GalleryStage$1;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v3, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v2

    neg-int v4, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/GalleryStage$1;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 107
    new-instance v0, Linfo/flowersoft/theotown/stages/GalleryStage$2;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/GalleryStage$2;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 129
    new-instance v0, Linfo/flowersoft/theotown/stages/GalleryStage$3;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x1e

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/GalleryStage$3;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v9, 0x2

    .line 139
    invoke-virtual {v0, v9, v9, v9, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    move-object v7, v0

    .line 140
    new-instance v0, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 141
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v7, v0

    .line 142
    new-instance v0, Linfo/flowersoft/theotown/stages/GalleryStage$4;

    const/16 v5, 0x1e

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v4, 0x1e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/GalleryStage$4;-><init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 160
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x2bd

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v9}, Linfo/flowersoft/theotown/stages/GalleryStage;->addTabButton(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;I)Linfo/flowersoft/theotown/ui/IconButton;

    .line 161
    const-string v0, "$anim_ui_new00"

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x7d8

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4, v2}, Linfo/flowersoft/theotown/stages/GalleryStage;->addTabButton(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;I)Linfo/flowersoft/theotown/ui/IconButton;

    .line 162
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x136

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v8}, Linfo/flowersoft/theotown/stages/GalleryStage;->addTabButton(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;I)Linfo/flowersoft/theotown/ui/IconButton;

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetch()V

    return-void
.end method

.method public final getIndexAt(II)I
    .registers 4

    .line 308
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1e

    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileHeight:I

    div-int/2addr p2, v0

    .line 309
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileWidth:I

    div-int/2addr p1, v0

    if-ltz p2, :cond_36

    if-ltz p1, :cond_36

    .line 310
    iget v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    if-ge p1, v0, :cond_36

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    .line 312
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getScreenshots()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    if-ltz v0, :cond_32

    .line 313
    :try_start_22
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getScreenshots()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_32

    .line 314
    monitor-exit p1

    return v0

    :catchall_30
    move-exception p2

    goto :goto_34

    .line 316
    :cond_32
    monitor-exit p1

    goto :goto_36

    :goto_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_30

    throw p2

    :cond_36
    :goto_36
    const/4 p1, -0x1

    return p1
.end method

.method public leave()V
    .registers 2

    .line 457
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->releaseAllTextures()V

    .line 459
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onUpdate()V
    .registers 10

    .line 259
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/GalleryStage;->updateTouchInput()V

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 264
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v7, v0

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->tidyTexturesUp()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 469
    const-string v0, "GalleryStage"

    return-object v0
.end method

.method public final updateTouchInput()V
    .registers 7

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    .line 275
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 276
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/TouchPane;->getHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveYSpeed:F

    .line 277
    iget v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    add-float/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    goto :goto_98

    .line 278
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    if-le v1, v3, :cond_31

    .line 279
    iput v4, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveYSpeed:F

    goto :goto_98

    .line 281
    :cond_31
    iget v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->lastTouchPointCount:I

    if-ne v1, v3, :cond_42

    iget v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_42

    .line 282
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetch()V

    .line 284
    :cond_42
    iget v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveYSpeed:F

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v1, v5

    iput v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveYSpeed:F

    .line 285
    iget v5, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    add-float/2addr v5, v1

    iput v5, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    .line 287
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    .line 288
    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getScreenshots()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->itemsPerLine:I

    add-int/2addr v1, v5

    sub-int/2addr v1, v3

    neg-int v1, v1

    div-int/2addr v1, v5

    iget v3, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->tileHeight:I

    mul-int/2addr v1, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 289
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1e

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    .line 287
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 293
    iget v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    cmpl-float v3, v2, v4

    const v4, 0x3f19999a    # 0.6f

    if-lez v3, :cond_8a

    mul-float/2addr v2, v4

    iput v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    .line 294
    :cond_8a
    iget v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_98

    mul-float/2addr v4, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    iput v4, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->moveY:F

    .line 297
    :cond_98
    :goto_98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage;->lastTouchPointCount:I

    return-void
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass1 (info.flowersoft.theotown.stages.GalleryStage$1)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$1;
.super Linfo/flowersoft/theotown/ui/TouchPane;
.source "GalleryStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/TouchPane;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 12

    .line 79
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {p3}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getScreenshots()Ljava/util/List;

    move-result-object p3

    monitor-enter p3

    .line 80
    :try_start_b
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    .line 81
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr p2, v0

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$100(Linfo/flowersoft/theotown/stages/GalleryStage;II)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_6f

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    invoke-static {v0, v1, v3, v2, v4}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$300(Linfo/flowersoft/theotown/stages/GalleryStage;[IIII)V

    .line 85
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getScreenshots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v0

    const/4 v4, 0x0

    aget v0, v0, v4

    sub-int v4, p1, v0

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    sub-int v5, p2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object p1

    const/4 p2, 0x2

    aget v6, p1, p2

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object p1

    const/4 p2, 0x3

    aget v7, p1, p2

    invoke-static/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$400(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V

    goto :goto_6f

    :catchall_6c
    move-exception v0

    move-object p1, v0

    goto :goto_71

    .line 87
    :cond_6f
    :goto_6f
    monitor-exit p3

    return-void

    :goto_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_b .. :try_end_72} :catchall_6c

    throw p1
.end method

.method public twoFingerClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 6

    .line 95
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 96
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v0

    .line 97
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2f

    .line 98
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 99
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 100
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$1;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$524(Linfo/flowersoft/theotown/stages/GalleryStage;F)F

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass2 (info.flowersoft.theotown.stages.GalleryStage$2)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$2;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "GalleryStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 107
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$2;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 110
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v0, 0x0

    .line 111
    invoke-virtual {v1, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 113
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 115
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v3, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/GalleryStage$2;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1e

    int-to-float v4, v0

    .line 116
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$2;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1e

    int-to-float v6, v0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    .line 113
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$2;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_74

    .line 120
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 122
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float v3, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$2;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float v4, p2

    .line 123
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    int-to-float v5, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$2;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result p1

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    .line 120
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_74
    return-void
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass3 (info.flowersoft.theotown.stages.GalleryStage$3)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "GalleryStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 129
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$3;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 132
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xc8

    .line 133
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v4, p2, -0x50

    .line 134
    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v6, v1, 0x50

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    const/16 p1, 0xff

    .line 135
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 136
    invoke-virtual {p0, v3, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass4 (info.flowersoft.theotown.stages.GalleryStage$4)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "GalleryStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 142
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$4;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 145
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 146
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 147
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 148
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 149
    :cond_1f
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v3

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v9, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 151
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 155
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$4;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass5 (info.flowersoft.theotown.stages.GalleryStage$5)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$5;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "GalleryStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->buildContentCanvas()Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 172
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getScreenshots()Ljava/util/List;

    move-result-object v3

    .line 173
    monitor-enter v3

    .line 174
    :try_start_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-nez v4, :cond_b2

    move v4, v6

    .line 176
    :goto_1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v4, v7, :cond_69

    .line 177
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 178
    iget-object v11, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v11}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v12

    invoke-static {v11, v12, v4, v0, v2}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$300(Linfo/flowersoft/theotown/stages/GalleryStage;[IIII)V

    .line 179
    iget-object v11, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v11}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v11

    aget v11, v11, v6

    .line 180
    iget-object v11, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v11}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v11

    aget v10, v11, v10

    .line 181
    iget-object v11, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v11}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v11

    aget v9, v11, v9

    .line 182
    iget-object v9, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v9}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v9

    aget v8, v9, v8

    add-int/2addr v8, v10

    const/16 v9, -0x64

    if-lt v8, v9, :cond_66

    .line 183
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    if-ge v10, v8, :cond_66

    .line 184
    invoke-virtual {v7}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->prefetchThumbnail()V

    goto :goto_66

    :catchall_63
    move-exception v0

    goto/16 :goto_167

    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_69
    move v13, v6

    .line 188
    :goto_6a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_b2

    .line 189
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 190
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v7

    invoke-static {v4, v7, v13, v0, v2}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$300(Linfo/flowersoft/theotown/stages/GalleryStage;[IIII)V

    .line 191
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v4

    aget v14, v4, v6

    .line 192
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v4

    aget v15, v4, v10

    .line 193
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v4

    aget v16, v4, v9

    .line 194
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$200(Linfo/flowersoft/theotown/stages/GalleryStage;)[I

    move-result-object v4

    aget v17, v4, v8

    add-int v4, v15, v17

    if-ltz v4, :cond_af

    .line 195
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    if-ge v15, v4, :cond_af

    .line 196
    iget-object v11, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static/range {v11 .. v17}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$600(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V

    :cond_af
    add-int/lit8 v13, v13, 0x1

    goto :goto_6a

    .line 200
    :cond_b2
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_11 .. :try_end_b3} :catchall_63

    .line 202
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$500(Linfo/flowersoft/theotown/stages/GalleryStage;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/16 v2, 0xff

    if-lez v0, :cond_107

    .line 203
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$500(Linfo/flowersoft/theotown/stages/GalleryStage;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x32

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-int/lit16 v7, v0, 0xff

    div-int/lit8 v7, v7, 0x32

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 205
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v7, v4, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x3d2

    invoke-interface {v4, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v0, v0, 0x1e

    int-to-float v11, v0

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v12, v0

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v13, 0x42480000    # 50.0f

    invoke-virtual/range {v7 .. v15}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 206
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 209
    :cond_107
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 210
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 211
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x738

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    :goto_123
    move-object v9, v0

    goto :goto_130

    .line 212
    :cond_125
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x965

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_123

    .line 213
    :goto_130
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$500(Linfo/flowersoft/theotown/stages/GalleryStage;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 215
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v7, v3, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v4, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    add-int/lit8 v0, v0, 0x1e

    int-to-float v11, v0

    iget-object v0, v3, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v12, v0

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v13, 0x42480000    # 50.0f

    invoke-virtual/range {v7 .. v15}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 216
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/GalleryStage$5;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_166
    return-void

    .line 200
    :goto_167
    :try_start_167
    monitor-exit v3
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_63

    throw v0
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass6 (info.flowersoft.theotown.stages.GalleryStage$6)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "GalleryStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->addTabButton(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;I)Linfo/flowersoft/theotown/ui/IconButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

.field public final synthetic val$mode:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;I)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 223
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iput p9, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->val$mode:I

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 226
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 228
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 229
    :cond_21
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/GalleryStage$6;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 230
    :cond_30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/GalleryStage$6;->isPressed()Z

    move-result v0

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    if-eqz v0, :cond_3b

    goto :goto_40

    :cond_3b
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    goto :goto_44

    :cond_40
    :goto_40
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    :goto_44
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 231
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 232
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isPressed()Z
    .registers 3

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getMode()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->val$mode:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 6

    .line 237
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/GalleryStage$6;->isPressed()Z

    move-result v0

    if-nez v0, :cond_46

    .line 238
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-nez v1, :cond_2c

    iget v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->val$mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto :goto_46

    .line 242
    :cond_2c
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->val$mode:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->switchMode(IJ)V

    .line 243
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$502(Linfo/flowersoft/theotown/stages/GalleryStage;F)F

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$6;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$702(Linfo/flowersoft/theotown/stages/GalleryStage;F)F

    .line 247
    :cond_46
    :goto_46
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass7 (info.flowersoft.theotown.stages.GalleryStage$7)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$7;
.super Ljava/lang/Object;
.source "GalleryStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->clickTile(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

.field public final synthetic val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$7;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/GalleryStage$7;->val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 407
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$7;->val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 2

    .line 402
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$7;->val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->indicateUsage()V

    return-void
.end method

.method public release()V
    .registers 2

    .line 417
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$7;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/GalleryStage;->access$000(Linfo/flowersoft/theotown/stages/GalleryStage;)Linfo/flowersoft/theotown/resources/ScreenshotStore;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->releaseAllTextures()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.GalleryStage.AnonymousClass8 (info.flowersoft.theotown.stages.GalleryStage$8)
.class public Linfo/flowersoft/theotown/stages/GalleryStage$8;
.super Ljava/lang/Object;
.source "GalleryStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/GalleryStage;->clickTile(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

.field public final synthetic val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/GalleryStage;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/GalleryStage$8;->this$0:Linfo/flowersoft/theotown/stages/GalleryStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/GalleryStage$8;->val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 431
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryStage$8;->val$sc:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->delete()V

    return-void
.end method
