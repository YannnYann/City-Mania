###### Class info.flowersoft.theotown.ui.toolbar.ToolBar (info.flowersoft.theotown.ui.toolbar.ToolBar)
.class public Linfo/flowersoft/theotown/ui/toolbar/ToolBar;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolBar.java"


# instance fields
.field public BAR_HEIGHT:I

.field public BREADCRUMB_HEIGHT:I

.field public HISTORY_LENGTH:I

.field public final PREF_NAME:Ljava/lang/String;

.field public ROW_HEIGHT:I

.field public SLIDE_TASK_VANISH_TIME_MINUTES:I

.field public TEXT_LINE_HEIGHT:I

.field public WIDTH_PER_ITEM:I

.field public animationTimer:Lio/blueflower/stapel2d/util/AnimationTimer;

.field public atBottom:Z

.field public cachedPath:Ljava/lang/String;

.field public cachedPathContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public final categoryHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final childrenSelectables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;>;"
        }
    .end annotation
.end field

.field public city:Linfo/flowersoft/theotown/city/City;

.field public final cmdDown:Lio/blueflower/stapel2d/gui/Button;

.field public final cmdUp:Lio/blueflower/stapel2d/gui/Button;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public current:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public currentActiveCount:I

.field public currentColumnCount:I

.field public currentRowCount:I

.field public dark:Z

.field public final flatSelectableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public final hiddenPanel:Lio/blueflower/stapel2d/gui/Panel;

.field public final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final historyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final hotkeyActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final hotkeyModifiers:Lio/blueflower/stapel2d/util/IntList;

.field public final hotkeys:Lio/blueflower/stapel2d/util/IntList;

.field public final idMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public inTutorial:Z

.field public final mainPanel:Lio/blueflower/stapel2d/gui/Panel;

.field public markedSelectables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public maxRowCount:I

.field public moveHistory:Lio/blueflower/stapel2d/util/IntList;

.field public moveX:F

.field public moveXSpeed:F

.field public moveY:F

.field public moveYSpeed:F

.field public final pluginCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

.field public final recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

.field public final root:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public searchTerm:Ljava/lang/String;

.field public final selectableToParentMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;",
            ">;"
        }
    .end annotation
.end field

.field public selectedIndex:I

.field public showName:Z

.field public showPrice:Z

.field public final slidePanel:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

.field public slideTask:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public slideTaskSelectable:Linfo/flowersoft/theotown/ui/Selectable;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;

.field public vertical:Z


# direct methods
.method public static synthetic $r8$lambda$1XtkoMOR3PsZXh8DHAhGhwvt7ww(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->search(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8849T97oc-3GmgZaZqSD0O3Rvk(Lio/blueflower/stapel2d/util/Tuple;Lio/blueflower/stapel2d/util/Tuple;)I
    .registers 2

    .line 524
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$YgowQjm5EdrC-V5ml2MmjPOLcEk(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Z-LtUFnRGs9654YZfZDBejzb4O0(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 985
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-nez v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slideTask:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-nez v0, :cond_1b

    .line 986
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slideTaskSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    :cond_1b
    return-void
.end method

.method public static synthetic $r8$lambda$ibcSczno5zlyPTFvA2ibDkZo7hQ(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/draft/CategoryDraft;)V
    .registers 4

    .line 609
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->root:Ljava/util/List;

    .line 609
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->findCategory(Ljava/util/List;Ljava/lang/String;I)Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 611
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->select(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 612
    iput v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    :cond_10
    return-void
.end method

.method public static synthetic $r8$lambda$saq9MuwR71vMcHfdEydp6j3kna4(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 977
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->registerForUse(Linfo/flowersoft/theotown/ui/Selectable;)V

    const/4 v0, 0x0

    .line 978
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 979
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->close()V

    const/4 p0, 0x0

    .line 980
    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;ZZZZZ",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/gui/Master;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    .line 142
    invoke-virtual/range {p9 .. p9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual/range {p9 .. p9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v0

    .line 75
    const-string v0, "info.flowersoft.theotown.theotown.toolbar"

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->PREF_NAME:Ljava/lang/String;

    const/16 v0, 0x50

    .line 77
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    const/16 v10, 0x14

    .line 78
    iput v10, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    .line 79
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    const/16 v0, 0xa

    .line 80
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    .line 81
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->HISTORY_LENGTH:I

    const/16 v0, 0x960

    .line 82
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->SLIDE_TASK_VANISH_TIME_MINUTES:I

    const/4 v11, 0x1

    .line 85
    iput-boolean v11, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showName:Z

    .line 86
    iput-boolean v11, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showPrice:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->categoryHistory:Ljava/util/List;

    .line 95
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveHistory:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x3

    .line 106
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->maxRowCount:I

    .line 107
    new-instance v0, Lio/blueflower/stapel2d/util/AnimationTimer;

    const-wide/16 v2, 0x3c

    invoke-direct {v0, v2, v3}, Lio/blueflower/stapel2d/util/AnimationTimer;-><init>(J)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->animationTimer:Lio/blueflower/stapel2d/util/AnimationTimer;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectableToParentMapping:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->flatSelectableList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->childrenSelectables:Ljava/util/Map;

    .line 114
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeys:Lio/blueflower/stapel2d/util/IntList;

    .line 115
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeyActions:Ljava/util/List;

    .line 121
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_TOOL_SLIDE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slideTask:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const/4 v0, -0x1

    .line 129
    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    move-object/from16 v12, p8

    .line 144
    iput-object v12, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 145
    invoke-virtual {v12}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 146
    iput-boolean v8, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->atBottom:Z

    move/from16 v13, p4

    .line 147
    iput-boolean v13, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    move/from16 v0, p6

    .line 148
    iput-boolean v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showName:Z

    move/from16 v0, p7

    .line 149
    iput-boolean v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showPrice:Z

    .line 150
    iput-boolean v9, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->dark:Z

    .line 151
    iput-object v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    .line 153
    const-string v0, "roottoolbar"

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 155
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "toolbar"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 157
    const-string v2, "bar height"

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    .line 158
    const-string v2, "text line height"

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->TEXT_LINE_HEIGHT:I

    .line 159
    const-string v2, "width per item"

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    .line 160
    const-string v2, "breadcrumb height"

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    .line 161
    const-string v2, "history length"

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->HISTORY_LENGTH:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->HISTORY_LENGTH:I

    .line 162
    const-string v2, "vanish slide task minutes"

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->SLIDE_TASK_VANISH_TIME_MINUTES:I

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->SLIDE_TASK_VANISH_TIME_MINUTES:I

    .line 164
    :cond_102
    iget v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    iget v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    .line 166
    iput-object v7, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->root:Ljava/util/List;

    .line 167
    iput-object v7, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    .line 169
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$1;

    const-string v2, "$cat_recent00"

    const-class v3, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v0, v1, v6, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$1;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 175
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->buildIdMapping()V

    .line 176
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->loadHistory()V

    const/4 v14, 0x0

    .line 177
    invoke-interface {v7, v14, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->addHotkey(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 180
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$2;

    const-string v2, "$cat_plugins00"

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v0, v1, v6, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$2;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->pluginCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 186
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->loadPlugins()V

    .line 187
    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->addHotkey(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 190
    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    if-eqz v8, :cond_153

    .line 193
    invoke-virtual/range {p9 .. p9}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    iget v2, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    sub-int/2addr v0, v2

    move v3, v0

    goto :goto_154

    :cond_153
    move v3, v14

    .line 194
    :goto_154
    new-instance v6, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget v5, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    const/4 v2, 0x0

    move-object v7, v6

    move-object/from16 v6, p0

    move-object v0, v7

    move v7, v8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;ZLio/blueflower/stapel2d/gui/Master;Z)V

    move-object v6, v0

    iput-object v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->mainPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 235
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v4, v2, -0x20

    iget v5, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;Z)V

    .line 263
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    iget v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    add-int/lit8 v4, v3, 0x1

    .line 264
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v5, v3, -0x21

    move-object v7, v6

    iget v6, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    move v3, v2

    move-object v2, v12

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v9, v3

    move-object v6, v7

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slidePanel:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    .line 266
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz p5, :cond_19c

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    :goto_19a
    move v12, v0

    goto :goto_19f

    :cond_19c
    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    goto :goto_19a

    .line 267
    :goto_19f
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz p5, :cond_1a7

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_1a5
    move v15, v0

    goto :goto_1aa

    :cond_1a7
    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    goto :goto_1a5

    .line 269
    :goto_1aa
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;

    const/16 v4, 0x1e

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v7, p5

    move v8, v13

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;ZZ)V

    .line 282
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 285
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;

    const/16 v5, 0x1e

    const/4 v2, 0x2

    const/16 v3, 0x20

    move-object/from16 v1, p0

    move v7, v12

    move v8, v15

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V

    .line 315
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V

    move v12, v2

    .line 348
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$8;

    const/16 v5, 0xa

    const/4 v3, 0x2

    move v2, v9

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$8;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 362
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;

    const/16 v5, 0x1e

    const/16 v3, 0x3e

    move v2, v12

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdUp:Lio/blueflower/stapel2d/gui/Button;

    .line 384
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;

    const/16 v3, 0x5d

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdDown:Lio/blueflower/stapel2d/gui/Button;

    .line 406
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual/range {p9 .. p9}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v3

    add-int/lit8 v4, v3, 0x1e

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v3, 0x0

    move/from16 v8, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;ZZ)V

    .line 419
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 422
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$12;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    sub-int/2addr v1, v10

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 p2, p0

    move-object/from16 p1, v0

    move/from16 p3, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move/from16 p4, v4

    move-object/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$12;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 441
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$13;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2d

    move-object/from16 p1, v0

    move/from16 p3, v1

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$13;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 458
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$14;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p0

    move-object/from16 p1, v0

    move/from16 p5, v1

    move/from16 p6, v2

    move/from16 p3, v3

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$14;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v1, p2

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hiddenPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 463
    invoke-virtual {v1, v14}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cachedPathContext:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cachedPathContext:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->categoryHistory:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cachedPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cachedPath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;
    .registers 1

    .line 73
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Z
    .registers 1

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markBackButton()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V
    .registers 1

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->top()V

    return-void
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V
    .registers 1

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showSearchDialog()V

    return-void
.end method


# virtual methods
.method public final addHotkey(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 8

    .line 598
    check-cast p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getDraft()Linfo/flowersoft/theotown/draft/CategoryDraft;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 599
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/CategoryDraft;->hotkey:Linfo/flowersoft/theotown/input/KeyAction;

    if-eqz v0, :cond_37

    .line 600
    invoke-virtual {v0}, Linfo/flowersoft/theotown/input/KeyAction;->getKeys()[I

    move-result-object v0

    .line 601
    iget-object v1, p1, Linfo/flowersoft/theotown/draft/CategoryDraft;->hotkey:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/input/KeyAction;->getModifiers()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 602
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_37

    .line 603
    aget v3, v0, v2

    .line 604
    aget v4, v1, v2

    if-lez v3, :cond_34

    .line 606
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 607
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 608
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeyActions:Ljava/util/List;

    new-instance v4, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    return-void
.end method

.method public back()V
    .registers 4

    .line 916
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 917
    iput v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 918
    iput v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    .line 919
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->close()V

    return-void

    .line 921
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    .line 922
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->categoryHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 923
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    .line 924
    iput v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 925
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->onChangeCurrent()V

    return-void
.end method

.method public final buildIdMapping()V
    .registers 11

    .line 621
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 622
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 624
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->root:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_96

    .line 628
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 629
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 630
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-ne v4, v5, :cond_2c

    const/4 v4, 0x0

    .line 632
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_14

    .line 633
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v4, :cond_3f

    .line 634
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectableToParentMapping:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_3f
    instance-of v6, v5, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-eqz v6, :cond_57

    .line 636
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->addHotkey(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 638
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-eq v5, v6, :cond_93

    .line 639
    check-cast v5, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 640
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-interface {v1, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 643
    :cond_57
    instance-of v6, v5, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;

    if-eqz v6, :cond_83

    .line 644
    move-object v6, v5

    check-cast v6, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;

    .line 645
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableToolGroupDraft;->getSelectables()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_66
    :goto_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    .line 646
    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_66

    .line 648
    iget-object v9, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->flatSelectableList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 653
    :cond_83
    invoke-interface {v5}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_93

    .line 655
    iget-object v7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->flatSelectableList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_93
    :goto_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 662
    :cond_96
    :goto_96
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->flatSelectableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f8

    .line 663
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->flatSelectableList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/Selectable;

    .line 665
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectableToParentMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    :goto_ae
    if-eqz v1, :cond_de

    if-eq v1, v0, :cond_de

    .line 666
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->markNewChildren()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 667
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->childrenSelectables:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_d2

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->childrenSelectables:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_d2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectableToParentMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    goto :goto_ae

    .line 676
    :cond_de
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 677
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;

    move-result-object v1

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/resources/NewContentManager;->register(Ljava/lang/String;)V

    :cond_f5
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 681
    :cond_f8
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/NewContentManager;->endRegister()V

    return-void
.end method

.method public final checkForTutorial()V
    .registers 4

    .line 863
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->resetMarks()V

    .line 864
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    .line 865
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v0

    const/4 v1, 0x0

    .line 866
    iput-boolean v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->inTutorial:Z

    .line 868
    instance-of v1, v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    if-eqz v1, :cond_49

    .line 869
    check-cast v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    .line 870
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->getClickableButtonIds()Ljava/util/Set;

    move-result-object v0

    .line 871
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 872
    const-string v2, "selectable:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v2, 0xb

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 874
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v1, :cond_1e

    .line 876
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markSelectable(Linfo/flowersoft/theotown/ui/Selectable;)V

    goto :goto_1e

    :cond_46
    const/4 v0, 0x1

    .line 880
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->inTutorial:Z

    :cond_49
    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 1068
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    return-void
.end method

.method public draw(II)V
    .registers 3

    .line 1080
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public final findCategory(Ljava/util/List;Ljava/lang/String;I)Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;"
        }
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-le p3, v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x0

    .line 581
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 582
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/Selectable;

    .line 583
    instance-of v3, v2, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-eqz v3, :cond_33

    .line 584
    check-cast v2, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 585
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getDraft()Linfo/flowersoft/theotown/draft/CategoryDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    return-object v2

    .line 588
    :cond_26
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->findCategory(Ljava/util/List;Ljava/lang/String;I)Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    move-result-object v2

    if-eqz v2, :cond_33

    return-object v2

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_36
    return-object v1
.end method

.method public getHistory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    return-object v0
.end method

.method public final getSearchScore(Linfo/flowersoft/theotown/ui/Selectable;Ljava/lang/String;)I
    .registers 12

    .line 534
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->unifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->unifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    instance-of v2, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    if-eqz v2, :cond_20

    move-object v3, p1

    check-cast v3, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->unifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_20
    const-string v3, ""

    :goto_22
    if-eqz v2, :cond_2c

    .line 538
    move-object v2, p1

    check-cast v2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    const/4 v4, 0x0

    if-eqz v2, :cond_35

    .line 540
    iget-boolean v5, v2, Linfo/flowersoft/theotown/draft/Draft;->searchable:Z

    if-nez v5, :cond_35

    return v4

    .line 542
    :cond_35
    const-string v5, "untouchable"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_70

    instance-of v5, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    if-eqz v5, :cond_70

    .line 543
    move-object v5, p1

    check-cast v5, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    .line 544
    new-instance v7, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v8

    invoke-virtual {v8, v5}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v5

    invoke-direct {v7, v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Building;

    .line 545
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v7

    if-eqz v7, :cond_5c

    move v5, v6

    goto :goto_71

    :cond_70
    move v5, v4

    .line 552
    :goto_71
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    add-int/lit8 v5, v5, 0x1

    .line 553
    :cond_79
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    add-int/lit8 v5, v5, 0x1

    .line 554
    :cond_81
    instance-of p1, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;

    if-nez p1, :cond_8d

    .line 555
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8d

    add-int/lit8 v5, v5, 0x1

    :cond_8d
    if-eqz v2, :cond_b7

    .line 557
    iget-object p1, v2, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz p1, :cond_b7

    .line 558
    const-string v0, "search tags"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 560
    :goto_9b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_b7

    .line 561
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 562
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->unifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b4

    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    :cond_b4
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    :cond_b7
    :goto_b7
    if-eqz v2, :cond_c8

    .line 570
    iget-object p1, v2, Linfo/flowersoft/theotown/draft/Draft;->author:Ljava/lang/String;

    if-eqz p1, :cond_c8

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->unifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c8

    add-int/2addr v5, v6

    :cond_c8
    return v5
.end method

.method public isBackAvailable()Z
    .registers 2

    .line 912
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDialogOpen()Z
    .registers 4

    .line 930
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    .line 931
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 932
    instance-of v1, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isDragable(Linfo/flowersoft/theotown/ui/Selectable;)Z
    .registers 3

    .line 1072
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-nez v0, :cond_1a

    .line 1074
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    if-eqz v0, :cond_18

    .line 1075
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public isMarked(Linfo/flowersoft/theotown/ui/Selectable;)Z
    .registers 3

    .line 1131
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public isNew(Linfo/flowersoft/theotown/ui/Selectable;)Z
    .registers 6

    .line 810
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 811
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    if-eqz v0, :cond_19

    .line 812
    move-object v0, p1

    check-cast v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 813
    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/Draft;->showNewMarker:Z

    if-nez v0, :cond_19

    return v1

    .line 815
    :cond_19
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-eqz v0, :cond_53

    .line 816
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->childrenSelectables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_60

    move v0, v1

    .line 818
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_60

    .line 819
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/Selectable;

    .line 820
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 821
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;

    move-result-object v3

    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/resources/NewContentManager;->isNew(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 p1, 0x1

    return p1

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 825
    :cond_53
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;

    move-result-object v0

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/resources/NewContentManager;->isNew(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_60
    return v1
.end method

.method public isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z
    .registers 3

    if-eqz p1, :cond_e

    .line 690
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of p1, p1, Linfo/flowersoft/theotown/ui/selectable/Separator;

    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final loadHistory()V
    .registers 7

    .line 765
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 768
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "info.flowersoft.theotown.theotown.toolbar"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 769
    const-string v1, "history"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 772
    :try_start_24
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 773
    :goto_2a
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_48

    .line 774
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 776
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_24 .. :try_end_3b} :catch_3c

    goto :goto_3e

    :catch_3c
    move-exception v1

    goto :goto_41

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 780
    :goto_41
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "History"

    invoke-interface {v3, v4, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 783
    :cond_48
    const-string v1, "search"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->searchTerm:Ljava/lang/String;

    .line 785
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    .line 787
    :goto_5a
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_91

    .line 788
    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->HISTORY_LENGTH:I

    if-lt v2, v0, :cond_6e

    .line 789
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_6b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8e

    .line 793
    :cond_6e
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8e

    .line 795
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v0, :cond_88

    .line 797
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    goto :goto_8e

    .line 799
    :cond_88
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6b

    :cond_8e
    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 805
    :cond_91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->saveHistory()V

    :cond_94
    return-void
.end method

.method public final loadPlugins()V
    .registers 12

    .line 695
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->pluginCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 697
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    .line 698
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 700
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    .line 701
    iget v4, v3, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v4, :cond_4f

    .line 702
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3f

    .line 704
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 705
    iget v5, v3, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {v0, v5, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_3f
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v3, :cond_1d

    .line 708
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 709
    :cond_4f
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz v4, :cond_1d

    .line 710
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_6d

    .line 712
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 713
    iget-object v5, v3, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_6d
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz v3, :cond_1d

    .line 716
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 720
    :cond_7d
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v2

    .line 721
    new-instance v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$16;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$16;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 728
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const-class v6, Linfo/flowersoft/theotown/draft/CategoryDraft;

    const-string v7, ":"

    if-eqz v4, :cond_101

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    .line 729
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isActive()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 730
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_93

    .line 731
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_93

    .line 732
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$lpf_cat_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getVersion()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-static {v4, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v4, :cond_93

    .line 735
    new-instance v6, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v6, v7, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 736
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->pluginCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 737
    :goto_ef
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_93

    .line 738
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ef

    .line 745
    :cond_101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_177

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 746
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v3

    if-eqz v3, :cond_105

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v3

    if-nez v3, :cond_105

    .line 747
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_105

    .line 748
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_105

    .line 749
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->pluginCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 750
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "$mpf_cat_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getRevisionId()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-static {v2, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v2, :cond_164

    .line 753
    new-instance v4, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v8, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    .line 754
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->pluginCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    :cond_164
    move v2, v5

    .line 756
    :goto_165
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_105

    .line 757
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_165

    :cond_177
    return-void
.end method

.method public final markBackButton()Z
    .registers 5

    .line 840
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move v0, v1

    .line 841
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 842
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    return v1
.end method

.method public final markSelectable(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 3

    .line 889
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    :cond_b
    :goto_b
    if-eqz p1, :cond_1b

    .line 892
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectableToParentMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/ui/Selectable;

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final onChangeCurrent()V
    .registers 7

    const/4 v0, 0x0

    .line 1036
    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    move v1, v0

    .line 1037
    :goto_4
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_23

    .line 1038
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isSelectableActive(Linfo/flowersoft/theotown/ui/Selectable;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    add-int/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1041
    :cond_23
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-eqz v1, :cond_63

    .line 1042
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slidePanel:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    .line 1043
    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    iget v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    mul-int/2addr v2, v4

    .line 1044
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    iget v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    sub-int/2addr v4, v5

    iget v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    add-int/2addr v4, v5

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->maxRowCount:I

    int-to-float v2, v2

    int-to-float v4, v1

    div-float/2addr v2, v4

    float-to-double v4, v2

    .line 1045
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->maxRowCount:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentRowCount:I

    .line 1046
    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->WIDTH_PER_ITEM:I

    div-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    goto :goto_6b

    .line 1048
    :cond_63
    iput v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentRowCount:I

    .line 1049
    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    iput v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    .line 1050
    iput v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->maxRowCount:I

    .line 1053
    :goto_6b
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->mainPanel:Lio/blueflower/stapel2d/gui/Panel;

    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BAR_HEIGHT:I

    iget v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentRowCount:I

    sub-int/2addr v4, v3

    iget v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 1054
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slidePanel:Linfo/flowersoft/theotown/ui/toolbar/SlidePanel;

    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    iget v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentRowCount:I

    mul-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 1056
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->vertical:Z

    if-eqz v1, :cond_bb

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentRowCount:I

    iget v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentActiveCount:I

    iget v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->currentColumnCount:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v2, v4

    if-ge v1, v2, :cond_bb

    .line 1057
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdUp:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 1058
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdDown:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 1059
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdUp:Lio/blueflower/stapel2d/gui/Button;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->mainPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x3f

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    .line 1060
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdDown:Lio/blueflower/stapel2d/gui/Button;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->mainPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    return-void

    .line 1062
    :cond_bb
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdUp:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 1063
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->cmdDown:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 1085
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    .line 1087
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eq v0, p0, :cond_25

    .line 1089
    instance-of v1, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1090
    :cond_20
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gui/Gadget;->pushChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1095
    :cond_25
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->inTutorial:Z

    if-eqz v0, :cond_3b

    .line 1096
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    .line 1097
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v0

    .line 1098
    instance-of v0, v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    .line 1099
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    :cond_3b
    return-void
.end method

.method public registerForUse(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 6

    .line 1000
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;

    move-result-object v0

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/NewContentManager;->markAsNotNew(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->recentCategory:Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 1003
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1004
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1005
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->HISTORY_LENGTH:I

    if-le v2, v3, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1006
    :cond_29
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 1008
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1009
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1010
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->HISTORY_LENGTH:I

    if-le p1, v0, :cond_4e

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1011
    :cond_4e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->saveHistory()V

    :cond_51
    return-void
.end method

.method public registerForUse(Ljava/lang/String;)V
    .registers 3

    .line 993
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->idMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/ui/Selectable;

    if-eqz p1, :cond_d

    .line 995
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->registerForUse(Linfo/flowersoft/theotown/ui/Selectable;)V

    :cond_d
    return-void
.end method

.method public final resetMarks()V
    .registers 2

    const/4 v0, 0x0

    .line 885
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->markedSelectables:Ljava/util/Set;

    return-void
.end method

.method public final saveHistory()V
    .registers 4

    .line 832
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "info.flowersoft.theotown.theotown.toolbar"

    invoke-static {v1}, Linfo/flowersoft/theotown/util/SSP;->migratePrefFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 833
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->historyIds:Ljava/util/List;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 834
    const-string v2, "history"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 835
    const-string v1, "search"

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->searchTerm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 836
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    return-void
.end method

.method public scrollDown()V
    .registers 3

    .line 471
    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    return-void
.end method

.method public scrollUp()V
    .registers 3

    .line 467
    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->ROW_HEIGHT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveY:F

    return-void
.end method

.method public final search(Ljava/lang/String;)V
    .registers 9

    .line 486
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->searchTerm:Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->saveHistory()V

    .line 488
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->unifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Toolbar"

    const-string v3, "Search"

    invoke-interface {v1, v2, v3, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->top()V

    .line 493
    :cond_1d
    new-instance v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/CategoryDraft;-><init>()V

    .line 494
    const-string v2, "$cat_search00"

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 495
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xbc3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 496
    new-instance v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$15;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, p0, v3, v1, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$15;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;Ljava/lang/String;)V

    .line 512
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 515
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->flatSelectableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/ui/Selectable;

    .line 516
    invoke-virtual {p0, v4, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->getSearchScore(Linfo/flowersoft/theotown/ui/Selectable;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4d

    .line 518
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 519
    new-instance v6, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 524
    :cond_75
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    .line 527
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/Selectable;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    goto :goto_81

    .line 530
    :cond_97
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->select(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void
.end method

.method public select(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 4

    .line 1020
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    if-eqz v0, :cond_2e

    .line 1021
    check-cast p1, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 1022
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    .line 1024
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->categoryHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveHistory:Lio/blueflower/stapel2d/util/IntList;

    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1026
    iput p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    const/4 p1, 0x0

    .line 1027
    iput p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    const/4 p1, -0x1

    .line 1028
    iput p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    .line 1029
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->onChangeCurrent()V

    return-void

    .line 1031
    :cond_2e
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectViaDragging(Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void
.end method

.method public selectViaDragging(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 5

    .line 1119
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slideTask:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->SLIDE_TASK_VANISH_TIME_MINUTES:I

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeForSeconds(J)V

    const/4 v0, 0x0

    .line 1120
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->slideTaskSelectable:Linfo/flowersoft/theotown/ui/Selectable;

    .line 1122
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hiddenPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 1123
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hiddenPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/ui/Selectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 1125
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->registerForUse(Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 1126
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->select()V

    .line 1127
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->close()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 853
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p1, :cond_19

    .line 854
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->animationTimer:Lio/blueflower/stapel2d/util/AnimationTimer;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/AnimationTimer;->reset()V

    .line 855
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->checkForTutorial()V

    const/4 v0, -0x1

    .line 856
    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->selectedIndex:I

    .line 857
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->onChangeCurrent()V

    .line 859
    :cond_19
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    return-void
.end method

.method public showInfo(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 12

    .line 936
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/selectable/Separator;

    if-eqz v0, :cond_5

    return-void

    .line 938
    :cond_5
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 939
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->getInstance()Linfo/flowersoft/theotown/resources/NewContentManager;

    move-result-object v0

    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/NewContentManager;->markAsNotNew(Ljava/lang/String;)V

    .line 942
    :cond_16
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 944
    :cond_1d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/blueflower/stapel2d/gui/Master;

    .line 945
    new-instance v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    .line 946
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x12c

    const/16 v7, 0xb9

    const-string v5, ""

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/ui/Selectable;)V

    .line 973
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    .line 975
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object p1

    invoke-interface {v9, p1}, Linfo/flowersoft/theotown/ui/Selectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 976
    new-instance p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v9, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;Linfo/flowersoft/theotown/ui/Dialog;)V

    invoke-interface {v9, p1}, Linfo/flowersoft/theotown/ui/Selectable;->setOnSelect(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 983
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 984
    new-instance v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v9}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    .line 989
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showSearchDialog()V
    .registers 6

    .line 475
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xa0d

    .line 476
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xc44

    .line 477
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setCancelText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda0;-><init>()V

    .line 478
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V

    .line 479
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x497

    .line 481
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x742

    .line 482
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->searchTerm:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 482
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final top()V
    .registers 3

    .line 898
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 899
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->close()V

    goto :goto_2e

    .line 901
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 902
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->categoryHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 903
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 904
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->root:Ljava/util/List;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    .line 905
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->onChangeCurrent()V

    :goto_2e
    const/4 v0, 0x0

    .line 907
    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveXSpeed:F

    .line 908
    iput v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    return-void
.end method

.method public final unifyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 575
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    .line 1106
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_43

    .line 1107
    :cond_7
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/4 v0, 0x0

    .line 1108
    :goto_b
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 1109
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(II)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 p1, 0x1

    .line 1110
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->setVisible(Z)V

    .line 1111
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->history:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->top()V

    .line 1112
    :cond_34
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->hotkeyActions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_43
    :goto_43
    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass1 (info.flowersoft.theotown.ui.toolbar.ToolBar$1)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$1;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$1;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .line 172
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass10 (info.flowersoft.theotown.ui.toolbar.ToolBar$10)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$buttonDefaultFrame:I

.field public final synthetic val$buttonDownFrame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V
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

    .line 384
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;->val$buttonDownFrame:I

    iput p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;->val$buttonDefaultFrame:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 387
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 389
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 390
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->getColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 392
    :cond_1c
    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;->val$buttonDownFrame:I

    :goto_26
    move v7, v1

    goto :goto_2b

    :cond_28
    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;->val$buttonDefaultFrame:I

    goto :goto_26

    :goto_2b
    move v6, v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 394
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 395
    iget-object p2, v2, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v1, v4

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, v2, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget v3, v2, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x2

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    add-int/2addr v3, v1

    int-to-float v6, v3

    iget v1, v2, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v7, v1

    int-to-float v8, v1

    const/high16 v10, 0x3f000000    # 0.5f

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWN:I

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, p2

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 397
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 402
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$10;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->scrollDown()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass11 (info.flowersoft.theotown.ui.toolbar.ToolBar$11)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$dark:Z

.field public final synthetic val$vertical:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;ZZ)V
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

    .line 406
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-boolean p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;->val$dark:Z

    iput-boolean p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;->val$vertical:Z

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 409
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 410
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;->val$dark:Z

    if-eqz v0, :cond_b

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_d

    :cond_b
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    :goto_d
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 411
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_MX:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 412
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 417
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$11;->val$vertical:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass12 (info.flowersoft.theotown.ui.toolbar.ToolBar$12)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$12;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 422
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$12;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 425
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 426
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 427
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 428
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 429
    :cond_1f
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_30

    const/4 p2, 0x2

    goto :goto_31

    :cond_30
    const/4 p2, 0x0

    :goto_31
    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v9, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 430
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 435
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 436
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$12;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->close()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass13 (info.flowersoft.theotown.ui.toolbar.ToolBar$13)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$13;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 441
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$13;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 444
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 445
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 446
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 447
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 448
    :cond_1f
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_30

    const/4 p2, 0x2

    goto :goto_31

    :cond_30
    const/4 p2, 0x0

    :goto_31
    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SEARCH_BUTTON:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 449
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 453
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 454
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$13;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$700(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass14 (info.flowersoft.theotown.ui.toolbar.ToolBar$14)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$14;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 458
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$14;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass15 (info.flowersoft.theotown.ui.toolbar.ToolBar$15)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$15;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$draftTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;Ljava/lang/String;)V
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

    .line 496
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$15;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$15;->val$draftTitle:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    return-void
.end method


# virtual methods
.method public getPreviewFrame()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 508
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 499
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$15;->val$draftTitle:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass16 (info.flowersoft.theotown.ui.toolbar.ToolBar$16)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$16;
.super Ljava/lang/Object;
.source "ToolBar.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->loadPlugins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/store/ManagedPluginFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 721
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$16;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/store/ManagedPluginFile;Linfo/flowersoft/theotown/store/ManagedPluginFile;)I
    .registers 5

    .line 724
    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 721
    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    check-cast p2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$16;->compare(Linfo/flowersoft/theotown/store/ManagedPluginFile;Linfo/flowersoft/theotown/store/ManagedPluginFile;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass17 (info.flowersoft.theotown.ui.toolbar.ToolBar$17)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->showInfo(Linfo/flowersoft/theotown/ui/Selectable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/Selectable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 949
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;->val$selectable:Linfo/flowersoft/theotown/ui/Selectable;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    return-void
.end method


# virtual methods
.method public addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;
    .registers 12

    .line 952
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 953
    new-instance v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v5

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v6

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v8

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v9

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;-><init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, v3, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    .line 970
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass17.AnonymousClass1 (info.flowersoft.theotown.ui.toolbar.ToolBar$17$1)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 953
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;->this$1:Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 9

    .line 956
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 957
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;->this$1:Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;->val$selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {v1}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    .line 958
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;->this$1:Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;->val$selectable:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->getPreviewHeight()I

    move-result v2

    int-to-float v2, v2

    .line 959
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v3, v3

    div-float v3, v1, v3

    .line 960
    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 961
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v3, v4, v3

    mul-float/2addr v1, v3

    mul-float/2addr v2, v3

    .line 963
    invoke-virtual {v0, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 964
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17$1;->this$1:Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$17;->val$selectable:Linfo/flowersoft/theotown/ui/Selectable;

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr p1, v5

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v1

    float-to-int v1, v5

    add-int/2addr p2, v1

    invoke-interface {v3, v0, p1, p2}, Linfo/flowersoft/theotown/ui/Selectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 967
    invoke-virtual {v0, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass2 (info.flowersoft.theotown.ui.toolbar.ToolBar$2)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$2;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 180
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$2;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .line 183
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass3 (info.flowersoft.theotown.ui.toolbar.ToolBar$3)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$atBottom:Z

.field public final synthetic val$dark:Z

.field public final synthetic val$gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;ZLio/blueflower/stapel2d/gui/Master;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-boolean p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$atBottom:Z

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    iput-boolean p9, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$dark:Z

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 16

    .line 203
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->animationTimer:Lio/blueflower/stapel2d/util/AnimationTimer;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/AnimationTimer;->getProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$atBottom:Z

    if-eqz v2, :cond_16

    const/4 v2, -0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x1

    :goto_17
    mul-int/2addr v1, v2

    sub-int v6, p2, v1

    .line 204
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 206
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    .line 208
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    .line 209
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 210
    iget-boolean v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$atBottom:Z

    if-nez v4, :cond_53

    .line 212
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    sub-int v4, v6, v4

    .line 213
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, -0x14

    add-int/lit8 v2, v2, 0x14

    move v12, v4

    move v4, v2

    move v2, v12

    goto :goto_55

    :cond_53
    move v4, v2

    move v2, v6

    .line 219
    :goto_55
    iget-boolean v5, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$3;->val$dark:Z

    if-eqz v5, :cond_6e

    .line 220
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v5, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    const/16 v5, 0xc8

    .line 221
    invoke-virtual {v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 222
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v5, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    goto :goto_9a

    :cond_6e
    move v8, v1

    move v10, v2

    move v9, v3

    move v11, v4

    const/16 v1, 0xe6

    .line 224
    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v1, p1, -0x9

    add-int/lit8 v2, v6, -0x9

    .line 226
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v5, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 227
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    move v1, v8

    move v3, v9

    move v2, v10

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    :goto_9a
    const/16 v1, 0xff

    .line 229
    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 231
    invoke-virtual {p0, p1, v6}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public getCursor()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 198
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass4 (info.flowersoft.theotown.ui.toolbar.ToolBar$4)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$dark:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-boolean p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->val$dark:Z

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->BREADCRUMB_HEIGHT:I

    if-nez v1, :cond_7

    return-void

    .line 239
    :cond_7
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 241
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$000(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    if-eq v0, v3, :cond_73

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$100(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v3, 0xb1a

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 243
    :goto_25
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$200(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_63

    .line 244
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$200(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;

    .line 245
    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v4, :cond_60

    .line 248
    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getDraft()Linfo/flowersoft/theotown/draft/CategoryDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 253
    :cond_63
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$302(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->current:Ljava/util/List;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$002(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Ljava/util/List;)Ljava/util/List;

    .line 257
    :cond_73
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 258
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->val$dark:Z

    if-eqz v1, :cond_7e

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_80

    :cond_7e
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_80
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$4;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$300(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v6, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v8, p1

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 260
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass5 (info.flowersoft.theotown.ui.toolbar.ToolBar$5)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$dark:Z

.field public final synthetic val$vertical:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;ZZ)V
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

    .line 269
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-boolean p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;->val$dark:Z

    iput-boolean p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;->val$vertical:Z

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 272
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 273
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;->val$dark:Z

    if-eqz v0, :cond_b

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_d

    :cond_b
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    :goto_d
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 274
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_X:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 275
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 280
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$5;->val$vertical:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass6 (info.flowersoft.theotown.ui.toolbar.ToolBar$6)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$buttonDefaultFrame:I

.field public final synthetic val$buttonDownFrame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V
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

    .line 285
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->val$buttonDownFrame:I

    iput p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->val$buttonDefaultFrame:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 288
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 290
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 291
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->getColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 293
    :cond_1c
    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->val$buttonDownFrame:I

    :goto_26
    move v7, v1

    goto :goto_2b

    :cond_28
    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->val$buttonDefaultFrame:I

    goto :goto_26

    :goto_2b
    move v6, v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 295
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 296
    iget-object p1, v2, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, v2, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, v3

    int-to-float v5, v0

    iget v0, v2, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_4c

    const/4 p2, 0x2

    goto :goto_4d

    :cond_4c
    const/4 p2, 0x0

    :goto_4d
    add-int/2addr v0, p2

    int-to-float v6, v0

    iget p2, v2, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v7, p2

    int-to-float v8, p2

    .line 297
    iget-object p2, v2, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {p2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$400(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_63

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    :goto_61
    move v11, p2

    goto :goto_66

    :cond_63
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    goto :goto_61

    :goto_66
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v3, p1

    .line 296
    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 310
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isBackAvailable()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isBackAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 303
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$6;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->back()V

    :cond_10
    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass7 (info.flowersoft.theotown.ui.toolbar.ToolBar$7)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$buttonDefaultFrame:I

.field public final synthetic val$buttonDownFrame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V
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

    .line 315
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->val$buttonDownFrame:I

    iput p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->val$buttonDefaultFrame:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 17

    .line 318
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 320
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 321
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->getColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 323
    :cond_1c
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->val$buttonDownFrame:I

    :goto_26
    move v5, v0

    goto :goto_2b

    :cond_28
    iget v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->val$buttonDefaultFrame:I

    goto :goto_26

    :goto_2b
    move v4, v3

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 325
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 326
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v6, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v7

    const/4 v13, 0x2

    if-eqz v7, :cond_4e

    move v7, v13

    goto :goto_4f

    :cond_4e
    const/4 v7, 0x0

    :goto_4f
    add-int/2addr v3, v7

    int-to-float v7, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v8, v3

    int-to-float v9, v3

    .line 327
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$400(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget v3, v3, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->moveX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v10

    if-gez v3, :cond_73

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    :goto_71
    move v12, v3

    goto :goto_76

    :cond_73
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    goto :goto_71

    :goto_76
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    .line 326
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 329
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$500(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 330
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->NP_TUTORIAL_MARK:I

    invoke-virtual {p0, p1, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 331
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p0, v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_91
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 343
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$400(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 337
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$7;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$600(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass8 (info.flowersoft.theotown.ui.toolbar.ToolBar$8)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$8;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 348
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$8;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

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
    .registers 2

    .line 355
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$8;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->isBackAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 356
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$8;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->access$600(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V

    :cond_10
    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar.AnonymousClass9 (info.flowersoft.theotown.ui.toolbar.ToolBar$9)
.class Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/toolbar/ToolBar;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;ZZZZZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic val$buttonDefaultFrame:I

.field public final synthetic val$buttonDownFrame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;IIIILio/blueflower/stapel2d/gui/Gadget;II)V
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

    .line 362
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput p7, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;->val$buttonDownFrame:I

    iput p8, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;->val$buttonDefaultFrame:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 365
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 367
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 368
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->getColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 370
    :cond_1c
    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;->val$buttonDownFrame:I

    :goto_26
    move v7, v1

    goto :goto_2b

    :cond_28
    iget v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;->val$buttonDefaultFrame:I

    goto :goto_26

    :goto_2b
    move v6, v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 372
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 373
    iget-object p2, v2, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v1, v4

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, v2, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget v3, v2, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x2

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    add-int/2addr v3, v1

    int-to-float v6, v3

    iget v1, v2, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v7, v1

    int-to-float v8, v1

    const/high16 v10, 0x3f000000    # 0.5f

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_UP:I

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, p2

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 376
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 381
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$9;->this$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->scrollUp()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->$r8$lambda$YgowQjm5EdrC-V5ml2MmjPOLcEk(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->$r8$lambda$1XtkoMOR3PsZXh8DHAhGhwvt7ww(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/Selectable;

.field public final synthetic f$2:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/ui/Selectable;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/ui/Selectable;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->$r8$lambda$saq9MuwR71vMcHfdEydp6j3kna4(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda3 (info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/Selectable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/ui/Selectable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/ui/Selectable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->$r8$lambda$Z-LtUFnRGs9654YZfZDBejzb4O0(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/ui/Selectable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda4 (info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/CategoryDraft;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/draft/CategoryDraft;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/draft/CategoryDraft;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->$r8$lambda$ibcSczno5zlyPTFvA2ibDkZo7hQ(Linfo/flowersoft/theotown/ui/toolbar/ToolBar;Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda5 (info.flowersoft.theotown.ui.toolbar.ToolBar$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/ui/toolbar/ToolBar$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    check-cast p2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->$r8$lambda$S8849T97oc-3GmgZaZqSD0O3Rvk(Lio/blueflower/stapel2d/util/Tuple;Lio/blueflower/stapel2d/util/Tuple;)I

    move-result p1

    return p1
.end method
