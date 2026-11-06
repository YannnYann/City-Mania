###### Class info.flowersoft.theotown.ui.toolbar.SlidePanel (info.flowersoft.theotown.ui.toolbar.SlidePanel)
.class Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "SlidePanel.java"


# instance fields
.field public final SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final cachedTitles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public draggedDX:F

.field public draggedDY:F

.field public draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

.field public draggedTX:F

.field public draggedTY:F

.field public hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

.field public final toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final touchPane:Linfo/flowersoft/theotown/ui/TouchPane;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 14

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 53
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 38
    const-string p3, "$anim_toolbar_showinfo00"

    const-class p4, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p3, p4}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 50
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->cachedTitles:Ljava/util/Map;

    .line 54
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    .line 55
    iput-object p2, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 57
    new-instance p2, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3, p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;-><init>(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;ILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V

    iput-object p2, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 94
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->dontFillParent()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;II)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getSelectableAt(II)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;Linfo/flowersoft/theotown/ui/Selectable;)I
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getXOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;Linfo/flowersoft/theotown/ui/Selectable;)I
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getYOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;Linfo/flowersoft/theotown/ui/Selectable;II)V
    .registers 4

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->clickAt(Linfo/flowersoft/theotown/ui/Selectable;II)V

    return-void
.end method

.method private getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 328
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 329
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/Selectable;

    .line 330
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_24

    :cond_1f
    if-ne p1, v1, :cond_22

    return-object v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final clickAt(Linfo/flowersoft/theotown/ui/Selectable;II)V
    .registers 8

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    .line 106
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getHeightOfVisItem()I

    move-result v1

    .line 108
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2d

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v2, v1, -0xa

    if-lt p3, v2, :cond_2d

    add-int/lit8 v1, v1, 0xa

    if-gt p3, v1, :cond_2d

    const/16 v1, 0xf

    if-gt p2, v1, :cond_25

    .line 111
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->prevFrame()V

    return-void

    :cond_25
    add-int/lit8 v1, v0, -0xf

    if-lt p2, v1, :cond_2d

    .line 114
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->nextFrame()V

    return-void

    .line 120
    :cond_2d
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_42

    add-int/lit8 v0, v0, -0x12

    if-lt p2, v0, :cond_3c

    const/16 p2, 0x14

    if-gt p3, p2, :cond_3c

    goto :goto_42

    .line 123
    :cond_3c
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->select(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void

    .line 121
    :cond_42
    :goto_42
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showInfo(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void
.end method

.method public final countSelectables()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 318
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 319
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/Selectable;

    .line 320
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_21

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_24
    return v1
.end method

.method public draw(II)V
    .registers 35

    move-object/from16 v0, p0

    .line 339
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 341
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v11, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    .line 342
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getHeightOfVisItem()I

    move-result v12

    const/4 v1, 0x0

    move-object v14, v1

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 346
    :goto_12
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v16, 0x40000000    # 2.0f

    if-ge v15, v1, :cond_7e

    .line 347
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, p1, v1

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    rem-int v4, v9, v4

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    mul-int/2addr v4, v7

    add-int/2addr v1, v4

    .line 348
    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, p2, v4

    iget v6, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v6, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v6, v9, v6

    iget-object v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v8, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    mul-int/2addr v6, v8

    add-int/2addr v4, v6

    .line 350
    iget-object v6, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/ui/Selectable;

    .line 351
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v7

    if-nez v7, :cond_6e

    move v1, v9

    move v5, v11

    move v9, v12

    move/from16 v25, v15

    goto/16 :goto_3ad

    .line 352
    :cond_6e
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v7, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-nez v7, :cond_84

    sub-int v7, v1, p1

    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_84

    :cond_7e
    move v5, v11

    move v9, v12

    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_3b4

    .line 353
    :cond_84
    instance-of v7, v6, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    add-int v17, v1, v11

    if-ltz v17, :cond_3a6

    .line 357
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->cachedTitles:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_9d

    .line 359
    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/Selectable;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 360
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->cachedTitles:Ljava/util/Map;

    invoke-interface {v10, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    move-object v10, v8

    .line 362
    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewWidth()I

    move-result v8

    int-to-float v8, v8

    .line 363
    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewHeight()I

    move-result v13

    int-to-float v13, v13

    .line 364
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getScaleForSelectable(Linfo/flowersoft/theotown/ui/Selectable;)F

    move-result v3

    mul-float v21, v8, v3

    mul-float/2addr v13, v3

    .line 368
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v5, v8, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-eqz v5, :cond_f8

    .line 370
    iget v5, v8, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    move/from16 v23, v3

    .line 371
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    move/from16 v24, v3

    add-int v3, p2, v24

    if-ge v4, v3, :cond_c8

    add-int v3, p2, v24

    sub-int/2addr v3, v4

    sub-int/2addr v5, v3

    add-int v3, p2, v24

    goto :goto_e3

    :cond_c8
    add-int v3, v4, v5

    add-int v25, p2, v24

    move/from16 v26, v5

    .line 374
    iget v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    move/from16 v27, v5

    add-int v5, v25, v27

    if-le v3, v5, :cond_e0

    sub-int v3, v3, p2

    sub-int v3, v3, v24

    sub-int v3, v3, v27

    sub-int v5, v26, v3

    move v3, v4

    goto :goto_e3

    :cond_e0
    move v3, v4

    move/from16 v5, v26

    :goto_e3
    if-lez v5, :cond_f1

    move-object/from16 v24, v6

    int-to-float v6, v1

    int-to-float v3, v3

    .line 378
    iget v8, v8, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v8, v8

    int-to-float v5, v5

    invoke-virtual {v2, v6, v3, v8, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    goto :goto_fc

    :cond_f1
    move-object/from16 v24, v6

    const/4 v3, 0x0

    .line 380
    invoke-virtual {v2, v3, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    goto :goto_fc

    :cond_f8
    move/from16 v23, v3

    move-object/from16 v24, v6

    .line 384
    :goto_fc
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v5, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-eqz v5, :cond_163

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    rem-int v5, v9, v3

    const/4 v8, 0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v3, v9, v3

    add-int/2addr v5, v3

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_163

    const/high16 v3, 0x3f800000    # 1.0f

    .line 385
    invoke-virtual {v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v5, 0x8

    .line 386
    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 387
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v5, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    if-eqz v5, :cond_125

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_127

    :cond_125
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    :goto_127
    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move/from16 v20, v3

    .line 388
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v5, v1

    move/from16 v22, v5

    int-to-float v5, v4

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v8, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v8, v8

    iget v6, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v27, v2

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    move/from16 v29, v4

    move-object/from16 v28, v10

    move/from16 v25, v15

    move/from16 v4, v22

    move-object/from16 v10, v24

    const/16 v15, 0xff

    move/from16 v24, v13

    move/from16 v13, v23

    move/from16 v23, v7

    move v7, v6

    move v6, v8

    move v8, v2

    move-object/from16 v2, v27

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 392
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 393
    invoke-virtual {v2, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_173

    :cond_163
    move/from16 v29, v4

    move-object/from16 v28, v10

    move/from16 v25, v15

    move-object/from16 v10, v24

    const/16 v15, 0xff

    move/from16 v24, v13

    move/from16 v13, v23

    move/from16 v23, v7

    .line 396
    :goto_173
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-eq v3, v10, :cond_17d

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    if-ne v3, v9, :cond_180

    :cond_17d
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_184

    :cond_180
    move-object v8, v2

    move/from16 v15, v29

    goto :goto_1c1

    .line 397
    :goto_184
    invoke-virtual {v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v3, 0x14

    .line 398
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 399
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    if-eqz v3, :cond_195

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_197

    :cond_195
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    :goto_197
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 400
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v1

    move/from16 v5, v29

    int-to-float v6, v5

    iget-object v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v8, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v8, v8

    iget v7, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    int-to-float v7, v7

    iget-object v15, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v15, v15, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    move/from16 v31, v15

    move v15, v5

    move v5, v6

    move v6, v8

    move/from16 v8, v31

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move-object v8, v2

    .line 405
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0xff

    .line 406
    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 409
    :goto_1c1
    invoke-virtual {v8, v13, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    int-to-float v13, v1

    .line 410
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v2, v2

    sub-float v2, v2, v21

    div-float v2, v2, v16

    add-float/2addr v2, v13

    float-to-int v2, v2

    int-to-float v3, v15

    int-to-float v4, v12

    sub-float v5, v4, v24

    div-float v5, v5, v16

    add-float/2addr v5, v3

    float-to-int v5, v5

    invoke-interface {v10, v8, v2, v5}, Linfo/flowersoft/theotown/ui/Selectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 413
    invoke-virtual {v8, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    if-eqz v28, :cond_22d

    .line 417
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v6, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showName:Z

    if-eqz v6, :cond_22d

    .line 418
    iget-boolean v5, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    if-eqz v5, :cond_1ef

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_1f3

    :cond_1ef
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_1f3
    invoke-virtual {v8, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-eqz v23, :cond_20b

    .line 420
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v5, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    if-eqz v5, :cond_204

    .line 421
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_20b

    .line 423
    :cond_204
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 426
    :cond_20b
    :goto_20b
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    move/from16 v20, v2

    move-object v2, v5

    add-int v5, v15, v12

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    iget v6, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    move/from16 v16, v4

    move v4, v1

    const/4 v1, 0x0

    move/from16 v21, v7

    move v7, v6

    move/from16 v6, v21

    move/from16 v21, v16

    move/from16 v16, v3

    move-object/from16 v3, v28

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->drawText(ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIII)V

    goto :goto_234

    :cond_22d
    move/from16 v20, v2

    move/from16 v16, v3

    move/from16 v21, v4

    move v4, v1

    :goto_234
    if-nez v23, :cond_2ea

    .line 430
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showPrice:Z

    if-eqz v1, :cond_2ea

    instance-of v1, v10, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    if-eqz v1, :cond_2ea

    .line 434
    move-object v6, v10

    check-cast v6, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    .line 435
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPrice()J

    move-result-wide v1

    .line 436
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v3

    int-to-long v5, v3

    .line 437
    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const-wide/16 v23, 0x0

    if-eqz v3, :cond_254

    move-wide/from16 v5, v23

    .line 438
    :cond_254
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v3

    if-eqz v3, :cond_264

    move-wide/from16 v1, v23

    :cond_264
    cmp-long v3, v5, v23

    if-lez v3, :cond_285

    .line 441
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    .line 442
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v3

    move v7, v1

    move-object/from16 v23, v2

    int-to-long v1, v3

    cmp-long v1, v1, v5

    if-ltz v1, :cond_280

    const/4 v5, 0x1

    goto :goto_281

    :cond_280
    const/4 v5, 0x0

    :goto_281
    move v1, v7

    move-object/from16 v3, v23

    goto :goto_2a4

    :cond_285
    cmp-long v3, v1, v23

    if-lez v3, :cond_29f

    long-to-double v5, v1

    .line 446
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v3

    .line 447
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v5, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v5

    const/4 v1, 0x0

    goto :goto_2a4

    .line 444
    :cond_29f
    const-string v2, ""

    move-object v3, v2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 450
    :goto_2a4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2ea

    if-eqz v5, :cond_2bd

    .line 452
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    if-eqz v2, :cond_2b5

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_2b9

    :cond_2b5
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    :goto_2b9
    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_2cd

    .line 454
    :cond_2bd
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    if-eqz v2, :cond_2c6

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_2ca

    :cond_2c6
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    :goto_2ca
    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 456
    :goto_2cd
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    add-int v5, v15, v12

    .line 457
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showName:Z

    if-eqz v7, :cond_2dc

    iget v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    goto :goto_2dd

    :cond_2dc
    const/4 v7, 0x0

    :goto_2dd
    add-int/2addr v5, v7

    iget v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    iget v6, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    move/from16 v31, v7

    move v7, v6

    move/from16 v6, v31

    .line 456
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->drawText(ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIII)V

    :cond_2ea
    move v1, v4

    .line 462
    invoke-interface {v10}, Linfo/flowersoft/theotown/ui/Selectable;->countFrames()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_328

    invoke-interface {v10}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_328

    const/high16 v2, 0x3f000000    # 0.5f

    .line 463
    invoke-virtual {v8, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 464
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v11

    move v2, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v24, v10

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    move-object/from16 v27, v8

    const/4 v8, 0x0

    move v4, v13

    move/from16 v5, v16

    move/from16 v7, v21

    move-object/from16 v30, v24

    move/from16 v16, v1

    move v13, v2

    move/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 465
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 466
    invoke-virtual {v2, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    goto :goto_32e

    :cond_328
    move/from16 v16, v1

    move-object v2, v8

    move v13, v9

    move-object/from16 v30, v10

    .line 469
    :goto_32e
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-object/from16 v10, v30

    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isNew(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v1

    if-eqz v1, :cond_357

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->newIndicator:Z

    if-eqz v1, :cond_357

    move-object v8, v2

    .line 470
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    move-object/from16 v27, v8

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3dcccccd    # 0.1f

    move v6, v11

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object/from16 v3, v27

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawNewMarker(Lio/blueflower/stapel2d/drawing/Engine;IIIIFF)V

    move-object v2, v3

    move v5, v6

    move v9, v7

    goto :goto_35b

    :cond_357
    move v5, v11

    move v9, v12

    move/from16 v4, v16

    .line 473
    :goto_35b
    instance-of v1, v10, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-nez v1, :cond_372

    .line 474
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v17, -0xe

    int-to-float v6, v6

    add-int/lit8 v7, v15, 0x2

    int-to-float v7, v7

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/16 v19, 0x0

    aget v8, v8, v19

    invoke-virtual {v2, v3, v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 477
    :cond_372
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v3, v10}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isMarked(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v3

    if-eqz v3, :cond_398

    .line 478
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    add-int v12, v9, v3

    invoke-static {v2, v4, v15, v5, v12}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->drawMarked(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    if-eqz v1, :cond_3a4

    move-object v8, v2

    .line 480
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    add-int v6, v9, v1

    const/4 v7, 0x2

    move v3, v4

    move v4, v15

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IIIIILio/blueflower/stapel2d/drawing/Engine;)V

    move-object v2, v8

    goto :goto_3a4

    .line 483
    :cond_398
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slideTaskSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-ne v1, v10, :cond_3ab

    invoke-interface {v10}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_3ab

    :cond_3a4
    :goto_3a4
    move-object v14, v10

    goto :goto_3ab

    :cond_3a6
    move v13, v9

    move v5, v11

    move v9, v12

    move/from16 v25, v15

    :cond_3ab
    :goto_3ab
    add-int/lit8 v1, v13, 0x1

    :goto_3ad
    add-int/lit8 v15, v25, 0x1

    move v11, v5

    move v12, v9

    move v9, v1

    goto/16 :goto_12

    .line 490
    :goto_3b4
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    .line 492
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v3, :cond_407

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-nez v4, :cond_407

    .line 494
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getScaleForSelectable(Linfo/flowersoft/theotown/ui/Selectable;)F

    move-result v3

    mul-float v4, v3, v16

    .line 495
    invoke-virtual {v2, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 496
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {v4}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 497
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    .line 498
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    iget v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTX:F

    iget v8, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedDX:F

    add-float/2addr v7, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v10, v8, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    div-float v10, v10, v16

    add-float/2addr v7, v10

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v10, v18, v4

    sub-float/2addr v7, v10

    float-to-int v4, v7

    iget v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    iget v11, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedDY:F

    add-float/2addr v7, v11

    iget v11, v8, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    iget v8, v8, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    sub-int/2addr v11, v8

    int-to-float v8, v11

    sub-float/2addr v8, v6

    div-float v8, v8, v16

    add-float/2addr v7, v8

    sub-float/2addr v7, v10

    float-to-int v6, v7

    invoke-interface {v3, v2, v4, v6}, Linfo/flowersoft/theotown/ui/Selectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 501
    invoke-virtual {v2, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_407
    if-eqz v14, :cond_482

    .line 504
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->handInToolbar:Z

    if-eqz v1, :cond_482

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouse()Z

    move-result v1

    if-nez v1, :cond_482

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-nez v1, :cond_482

    .line 505
    instance-of v1, v14, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-nez v1, :cond_482

    .line 506
    invoke-virtual {v0, v14}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getXOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result v1

    add-int v1, v1, p1

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v1, v3

    .line 507
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v3, p2, v3

    .line 508
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v6, "$anim_hand00"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 509
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    const-wide/16 v10, 0x7d0

    rem-long/2addr v6, v10

    long-to-float v6, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v10

    .line 510
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v6, v6, v18

    sub-float v10, v18, v6

    float-to-double v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 511
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v8, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->atBottom:Z

    if-eqz v8, :cond_468

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v6, v8

    .line 512
    :cond_468
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v1, v11

    int-to-float v1, v1

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v3, v12

    iget v5, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/16 v19, 0x0

    aget v4, v4, v19

    invoke-virtual {v2, v8, v1, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_482
    return-void
.end method

.method public final drawText(ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIII)V
    .registers 26

    move-object/from16 v1, p2

    move/from16 v9, p4

    move/from16 v0, p6

    move-object/from16 v10, p0

    move/from16 v2, p7

    .line 522
    iget-object v3, v10, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v11, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 523
    invoke-virtual/range {p2 .. p3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    mul-int/lit8 v4, v0, 0x3

    .line 524
    div-int/lit8 v4, v4, 0x2

    if-eqz p1, :cond_1e

    sub-int v4, v0, v2

    mul-int/lit8 v4, v4, 0x3

    .line 525
    div-int/lit8 v4, v4, 0x2

    :cond_1e
    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7a

    move-object/from16 v3, p3

    .line 529
    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_6a

    .line 530
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 531
    :goto_49
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 532
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_49

    .line 535
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7c

    :cond_7a
    move-object/from16 v3, p3

    .line 538
    :goto_7c
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v12

    if-eqz p1, :cond_85

    sub-int v4, v0, v2

    goto :goto_86

    :cond_85
    move v4, v0

    :goto_86
    int-to-float v4, v4

    div-float v4, v12, v4

    const v5, 0x3fb33333    # 1.4f

    .line 539
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v14, v13, v4

    .line 540
    invoke-virtual {v11, v14, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    if-eqz p1, :cond_a0

    .line 541
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v9

    int-to-float v4, v4

    :goto_9d
    move/from16 v5, p5

    goto :goto_a2

    :cond_a0
    int-to-float v4, v9

    goto :goto_9d

    :goto_a2
    int-to-float v5, v5

    int-to-float v0, v0

    int-to-float v15, v2

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v6, v15

    move v5, v0

    move-object v0, v11

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    const/16 v0, 0xff

    .line 542
    invoke-virtual {v11, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 543
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 544
    invoke-virtual {v11, v13, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    if-eqz p1, :cond_d6

    move v0, v12

    .line 546
    sget-object v12, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v1, v9

    mul-float/2addr v0, v14

    sub-float v0, v5, v0

    sub-float/2addr v0, v15

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float v13, v1, v0

    move/from16 v16, v15

    move/from16 v17, p1

    move v14, v4

    invoke-virtual/range {v11 .. v17}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_d6
    return-void
.end method

.method public final getHeightOfVisItem()I
    .registers 4

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    .line 99
    iget-boolean v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showName:Z

    if-eqz v2, :cond_b

    iget v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    sub-int/2addr v1, v2

    .line 100
    :cond_b
    iget-boolean v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showPrice:Z

    if-eqz v2, :cond_12

    iget v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    sub-int/2addr v1, v0

    :cond_12
    return v1
.end method

.method public final getScaleForSelectable(Linfo/flowersoft/theotown/ui/Selectable;)F
    .registers 4

    .line 551
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    .line 552
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewHeight()I

    move-result p1

    int-to-float p1, p1

    .line 553
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 554
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getHeightOfVisItem()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 555
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final getSelectableAt(II)Linfo/flowersoft/theotown/ui/Selectable;
    .registers 10

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 227
    iget v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    float-to-int v0, v0

    move v1, v2

    move v3, v1

    .line 228
    :goto_c
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_81

    .line 229
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/Selectable;

    .line 230
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_4c

    :cond_29
    if-gt v3, p1, :cond_3a

    .line 231
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v6, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    add-int/2addr v6, v3

    if-ge p1, v6, :cond_3a

    if-gt v0, p2, :cond_3a

    iget v5, v5, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    add-int/2addr v5, v0

    if-ge p2, v5, :cond_3a

    return-object v4

    .line 232
    :cond_3a
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    add-int/2addr v3, v4

    add-int/2addr v4, v3

    .line 233
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    if-le v4, v5, :cond_4c

    .line 235
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    add-int/2addr v0, v3

    move v3, v2

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 239
    :cond_4f
    iget p2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    float-to-int p2, p2

    .line 240
    :goto_52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_81

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/Selectable;

    .line 242
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_7e

    :cond_6f
    if-gt p2, p1, :cond_79

    .line 243
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    add-int/2addr v1, p2

    if-ge p1, v1, :cond_79

    return-object v0

    .line 244
    :cond_79
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    add-int/2addr p2, v0

    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_81
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getXOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 253
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3d

    .line 254
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/Selectable;

    .line 255
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_3a

    :cond_20
    if-ne v3, p1, :cond_29

    .line 256
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget p1, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    float-to-int p1, p1

    add-int/2addr v2, p1

    return v2

    .line 257
    :cond_29
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    add-int/2addr v2, v3

    add-int/2addr v3, v2

    .line 258
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    if-le v3, v4, :cond_3a

    .line 260
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    move v2, v0

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3d
    return v0
.end method

.method public final getYOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 269
    :goto_4
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3f

    .line 270
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/Selectable;

    .line 271
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_3c

    :cond_21
    if-ne v4, p1, :cond_2a

    .line 272
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget p1, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    float-to-int p1, p1

    add-int/2addr v3, p1

    return v3

    .line 273
    :cond_2a
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    add-int/2addr v2, v4

    add-int/2addr v4, v2

    .line 274
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    if-le v4, v5, :cond_3c

    .line 276
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    add-int/2addr v3, v2

    move v2, v0

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3f
    return v0
.end method

.method public onUpdate()V
    .registers 12

    .line 140
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    .line 143
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v2

    .line 144
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v3, v3, -0x3c

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v5, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    iget v6, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    mul-int/2addr v6, v5

    sub-int/2addr v3, v6

    int-to-float v3, v3

    .line 145
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    iget v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    add-int/2addr v5, v4

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v5, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v4, v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    mul-int/2addr v5, v4

    sub-int/2addr v6, v5

    int-to-float v4, v6

    const/4 v5, 0x0

    .line 146
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v8, 0x41200000    # 10.0f

    if-ne v6, v7, :cond_119

    const/4 v3, 0x0

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 151
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-nez v3, :cond_10a

    .line 152
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getSelectableAt(II)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 153
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTX:F

    .line 154
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v3

    mul-float/2addr v3, v2

    iput v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    .line 156
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v3, :cond_de

    .line 157
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v3

    mul-float/2addr v3, v2

    iget v4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    add-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_93

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->atBottom:Z

    if-eqz v3, :cond_a5

    .line 158
    :cond_93
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v3

    mul-float/2addr v3, v2

    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    sub-float/2addr v2, v8

    cmpg-float v2, v3, v2

    if-gez v2, :cond_de

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->atBottom:Z

    if-eqz v2, :cond_de

    .line 159
    :cond_a5
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    iget v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_de

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 160
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isDragable(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 161
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 162
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getXOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTX:F

    sub-float/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedDX:F

    .line 163
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    sub-float/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedDY:F

    .line 166
    :cond_de
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v3, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-eqz v3, :cond_f7

    .line 167
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveYSpeed:F

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    iget v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveYSpeed:F

    add-float/2addr v1, v2

    iput v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    .line 169
    iput v5, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    return-void

    .line 171
    :cond_f7
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    iget v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    add-float/2addr v1, v2

    iput v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    .line 173
    iput v5, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    return-void

    .line 176
    :cond_10a
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTX:F

    .line 177
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    return-void

    .line 179
    :cond_119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24a

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->hoveredSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 181
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v2, :cond_14c

    .line 182
    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v6

    iget v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_13f

    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedTY:F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_146

    .line 183
    :cond_13f
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectViaDragging(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 185
    :cond_146
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->draggedSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 186
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput v5, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 188
    :cond_14c
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    const v6, 0x3f666666    # 0.9f

    if-eqz v2, :cond_160

    .line 189
    iget v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveYSpeed:F

    mul-float/2addr v2, v6

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveYSpeed:F

    .line 190
    iget v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    add-float/2addr v6, v2

    iput v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    goto :goto_16a

    .line 192
    :cond_160
    iget v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    mul-float/2addr v2, v6

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 193
    iget v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    add-float/2addr v6, v2

    iput v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    .line 196
    :goto_16a
    iget v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    sub-float v2, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v8, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    iget-object v7, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v9, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    cmpl-float v10, v9, v5

    if-lez v10, :cond_18c

    sub-float v10, v2, v1

    mul-float/2addr v9, v10

    iput v9, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    .line 198
    :cond_18c
    iget v9, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    cmpg-float v10, v9, v3

    if-gez v10, :cond_198

    sub-float v10, v3, v9

    mul-float/2addr v1, v10

    add-float/2addr v9, v1

    .line 199
    iput v9, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    .line 202
    :cond_198
    iget v1, v7, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    sub-float v7, v4, v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v8, v1

    sub-float v1, v2, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 203
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    cmpl-float v8, v7, v5

    if-lez v8, :cond_1b3

    sub-float/2addr v2, v1

    mul-float/2addr v7, v2

    iput v7, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    .line 204
    :cond_1b3
    iget v2, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    cmpg-float v7, v2, v4

    if-gez v7, :cond_1be

    sub-float/2addr v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    .line 205
    iput v2, v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    .line 208
    :cond_1be
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouse()Z

    move-result v1

    if-eqz v1, :cond_24a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_24a

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-nez v0, :cond_24a

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->getMouseX()I

    move-result v0

    .line 210
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->getMouseY()I

    move-result v1

    .line 211
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v4

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_24a

    int-to-float v0, v0

    .line 212
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 213
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    .line 214
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    neg-float v4, v0

    .line 216
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v0, v6

    add-float/2addr v0, v2

    cmpl-float v2, v4, v5

    if-lez v2, :cond_23a

    .line 217
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v6, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    mul-float/2addr v4, v1

    add-float/2addr v6, v4

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    :cond_23a
    cmpl-float v2, v0, v5

    if-lez v2, :cond_24a

    .line 218
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v4, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    :cond_24a
    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 8

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_cd

    .line 285
    :cond_10
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/16 v0, 0x3d

    .line 287
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_47

    .line 288
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->countSelectables()I

    move-result v0

    if-lez v0, :cond_43

    .line 290
    invoke-virtual {p1}, Lio/blueflower/stapel2d/key/KeyMapper;->getActiveModifier()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 291
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v5, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    if-ne v5, v2, :cond_32

    iput v1, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    .line 292
    :cond_32
    iget v5, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    add-int/2addr v5, v0

    sub-int/2addr v5, v4

    rem-int/2addr v5, v0

    iput v5, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    goto :goto_47

    .line 294
    :cond_3a
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v5, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    add-int/2addr v5, v4

    rem-int/2addr v5, v0

    iput v5, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    goto :goto_47

    .line 297
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    .line 300
    :cond_47
    :goto_47
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    if-ltz v0, :cond_6f

    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->countSelectables()I

    move-result v0

    if-lez v0, :cond_6f

    .line 301
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->select(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput v2, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    goto :goto_92

    .line 303
    :cond_6f
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    if-ltz v0, :cond_92

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->countSelectables()I

    move-result v0

    if-lez v0, :cond_92

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showInfo(Linfo/flowersoft/theotown/ui/Selectable;)V

    :cond_92
    :goto_92
    const/16 v0, 0x43

    .line 306
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 307
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->back()V

    .line 310
    :cond_9f
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget p1, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    if-le p1, v2, :cond_cd

    .line 311
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getSelectable(I)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->getXOfSelectable(Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    sub-float/2addr p1, v1

    neg-float v2, p1

    .line 312
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    sub-float/2addr v2, p1

    const/high16 p1, 0x42200000    # 40.0f

    sub-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    :cond_cd
    :goto_cd
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 6

    .line 129
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 130
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-eqz v1, :cond_1e

    .line 131
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v1

    .line 132
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 133
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v2, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    iget v3, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    :cond_1e
    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.SlidePanel.AnonymousClass1 (info.flowersoft.theotown.ui.toolbar.SlidePanel$1)
.class Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;
.super Linfo/flowersoft/theotown/ui/TouchPane;
.source "SlidePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;IIIILio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

.field public final synthetic val$toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;ILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->this$0:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->val$toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/ui/TouchPane;-><init>(ILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 6

    .line 60
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->val$toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    const/4 v0, 0x0

    iput v0, p3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 61
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->this$0:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    invoke-static {p3, p1, p2}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->access$000(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;II)Linfo/flowersoft/theotown/ui/Selectable;

    move-result-object p3

    if-eqz p3, :cond_44

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->val$toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_44

    .line 65
    :cond_1a
    instance-of v0, p3, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-eqz v0, :cond_33

    .line 66
    move-object p1, p3

    check-cast p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->val$toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->select(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void

    .line 69
    :cond_2d
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->val$toolBar:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showInfo(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void

    .line 72
    :cond_33
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->this$0:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    invoke-static {v0, p3}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->access$100(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel$1;->this$0:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    invoke-static {v1, p3}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->access$200(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;Linfo/flowersoft/theotown/ui/Selectable;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {v0, p3, p1, p2}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;->access$300(Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;Linfo/flowersoft/theotown/ui/Selectable;II)V

    :cond_44
    :goto_44
    return-void
.end method

.method public layout()V
    .registers 5

    .line 82
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_2f

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_2f

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 83
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2f

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2b

    goto :goto_2f

    .line 90
    :cond_2b
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void

    .line 84
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 85
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 86
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 87
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 88
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    .line 84
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public twoFingerClick()V
    .registers 1

    .line 0
    return-void
.end method
