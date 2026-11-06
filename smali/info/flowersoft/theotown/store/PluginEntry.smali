###### Class info.flowersoft.theotown.store.PluginEntry (info.flowersoft.theotown.store.PluginEntry)
.class public Linfo/flowersoft/theotown/store/PluginEntry;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "PluginEntry.java"


# instance fields
.field public final ACTIVE_FRAME:I

.field public final DOWNLOAD_FRAME:I

.field public final IMAGE_FADE_IN_MS:I

.field public final INACTIVE_FRAME:I

.field public final REPORT_FRAME:I

.field public _text:Ljava/lang/String;

.field public _title:Ljava/lang/String;

.field public final childIndex:I

.field public cmdAcquire:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdActivate:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdComments:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdDeactivate:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdDelete:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdDownload:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdError:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdReport:Linfo/flowersoft/theotown/ui/IconButton;

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public expandable:Z

.field public expanded:Z

.field public expandedHeight:I

.field public initiated:Z

.field public lastNoImageMs:J

.field public lblAuthor:Lio/blueflower/stapel2d/gui/Label;

.field public lblDownloaded:Lio/blueflower/stapel2d/gui/Label;

.field public lblStatus:Lio/blueflower/stapel2d/gui/Label;

.field public lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public lblTitle:Lio/blueflower/stapel2d/gui/Label;

.field public final minRatings:I

.field public final plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

.field public progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

.field public final ratingConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final ratingPercentages:[F

.field public shortText:Ljava/lang/String;

.field public final stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final updateRunner:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$7n7eHS9GS4qGlmNc9eIg5853NXE(Ljava/lang/Runnable;)V
    .registers 2

    .line 633
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_STORE_PLUGIN_QUALITY_WARNING:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 634
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$D9nC-kAFFDjY_iLaXjYqCW-l4Vc(Linfo/flowersoft/theotown/store/PluginEntry;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    .line 696
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 696
    invoke-interface {v0, p1, p2, p3}, Linfo/flowersoft/theotown/store/PluginWrapper;->report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    .line 697
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->issueUpdate()V

    return-void
.end method

.method public static synthetic $r8$lambda$JAalMzTIMGs6LoklSx9Qqor2vUs(Linfo/flowersoft/theotown/store/PluginEntry;)Ljava/lang/Boolean;
    .registers 4

    .line 650
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->acquireAndDownload()V

    .line 651
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p0

    const/4 v0, 0x2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 652
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$LFp8xXWpokT7sSD8KFIuJCJ1TAo(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->showPurchaseDialogRaw()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/PluginWrapper;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Linfo/flowersoft/theotown/store/PluginWrapper;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    const/4 v1, 0x4

    add-int/lit8 v5, v0, -0x4

    invoke-static {p1}, Linfo/flowersoft/theotown/store/PluginEntry;->getDefaultHeight(Lio/blueflower/stapel2d/gui/Gadget;)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 50
    const-string p1, "$anim_store_download00"

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, v3

    iput p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->DOWNLOAD_FRAME:I

    .line 51
    const-string p1, "$anim_store_active00"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, v3

    iput p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->ACTIVE_FRAME:I

    .line 52
    const-string p1, "$anim_store_inactive00"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, v3

    iput p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->INACTIVE_FRAME:I

    .line 53
    const-string p1, "$anim_store_report00"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, v3

    iput p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->REPORT_FRAME:I

    const/16 p1, 0xc8

    .line 55
    iput p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->IMAGE_FADE_IN_MS:I

    .line 57
    const-string p1, "store"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    iput-object p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 58
    const-string v0, "ratings"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/JSONUtil;->optObject(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    iput-object p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->ratingConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 59
    const-string v0, "min ratings"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Linfo/flowersoft/theotown/store/PluginEntry;->minRatings:I

    .line 62
    const-string v0, "percentages"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 63
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v1, :cond_9f

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, v2, Linfo/flowersoft/theotown/store/PluginEntry;->ratingPercentages:[F

    move v0, v3

    .line 65
    :goto_8c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_a6

    .line 66
    iget-object v1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->ratingPercentages:[F

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v0

    add-int/2addr v0, v4

    goto :goto_8c

    .line 69
    :cond_9f
    new-array p1, v1, [F

    fill-array-data p1, :array_c4

    iput-object p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->ratingPercentages:[F

    .line 101
    :cond_a6
    iput-boolean v3, v2, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, v2, Linfo/flowersoft/theotown/store/PluginEntry;->lastNoImageMs:J

    .line 112
    iput-object p2, v2, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 113
    iput-object p3, v2, Linfo/flowersoft/theotown/store/PluginEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 114
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 115
    iput-object p4, v2, Linfo/flowersoft/theotown/store/PluginEntry;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 116
    iput-object p5, v2, Linfo/flowersoft/theotown/store/PluginEntry;->updateRunner:Ljava/lang/Runnable;

    .line 118
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result p1

    iput p1, v2, Linfo/flowersoft/theotown/store/PluginEntry;->childIndex:I

    .line 120
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->updateVisibility()V

    return-void

    :array_c4
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/store/PluginEntry;)J
    .registers 3

    .line 48
    iget-wide v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lastNoImageMs:J

    return-wide v0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->downloadOnly()V

    return-void
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/store/PluginEntry;J)J
    .registers 3

    .line 48
    iput-wide p1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lastNoImageMs:J

    return-wide p1
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->showError()V

    return-void
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/store/PluginEntry;)I
    .registers 1

    .line 48
    iget p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->REPORT_FRAME:I

    return p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->askForReport()V

    return-void
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/util/Setter;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/store/PluginEntry;)I
    .registers 1

    .line 48
    iget p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->minRatings:I

    return p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/store/PluginEntry;)[F
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->ratingPercentages:[F

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/store/PluginEntry;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expandable:Z

    return p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/store/PluginEntry;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    return p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/store/PluginEntry;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    return p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->acquireAndDownload()V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->showPurchaseDialog()V

    return-void
.end method

.method private build()V
    .registers 27

    .line 164
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$1;

    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v8, p0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$1;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v9, v0

    const/4 v0, 0x5

    .line 170
    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 172
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->isNarrow(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result v10

    if-eqz v10, :cond_26

    const/16 v0, 0x41

    :goto_24
    move v4, v0

    goto :goto_29

    :cond_26
    const/16 v0, 0x64

    goto :goto_24

    .line 174
    :goto_29
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$2;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/PluginEntry$2;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v11, v4

    .line 233
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$3;

    .line 234
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/LineLayout;->getSpace()I

    move-result v2

    sub-int v6, v1, v2

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/store/PluginEntry$3;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/ElementLine;)V

    move-object v8, v0

    move-object v12, v9

    .line 241
    new-instance v6, Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v18

    const/16 v19, 0xc

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v20

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v20}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 242
    new-instance v13, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v18

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v19

    const/4 v15, 0x0

    invoke-direct/range {v13 .. v19}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v13, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    .line 244
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getCategory()Linfo/flowersoft/theotown/store/StoreCategory;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreCategory;->getCategoryId()I

    move-result v0

    sget-object v2, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Scenarios:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    iget v2, v2, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->id:I

    if-ne v0, v2, :cond_d6

    .line 245
    new-instance v13, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getCategory()Linfo/flowersoft/theotown/store/StoreCategory;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreCategory;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v18

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 246
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    const/16 v0, 0x20

    const/16 v2, 0xff

    const/16 v3, 0xda

    const/16 v4, 0xa5

    .line 247
    invoke-static {v3, v4, v0, v2}, Lio/blueflower/stapel2d/drawing/Colors;->getRepr(IIII)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 248
    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 251
    :cond_d6
    new-instance v14, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x94f

    .line 252
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getAuthor()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 253
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v19

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v20}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v14, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblAuthor:Lio/blueflower/stapel2d/gui/Label;

    .line 254
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 255
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblAuthor:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 256
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblAuthor:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 258
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isQualityPluginCertifiedAuthor()Z

    move-result v0

    const/high16 v13, 0x3f000000    # 0.5f

    if-eqz v0, :cond_144

    .line 259
    new-instance v14, Lio/blueflower/stapel2d/gui/Icon;

    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_HEART:I

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v19

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-direct/range {v14 .. v20}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 260
    invoke-virtual {v14, v13}, Lio/blueflower/stapel2d/gui/Icon;->setScale(F)V

    .line 261
    invoke-virtual {v14, v13, v13}, Lio/blueflower/stapel2d/gui/Icon;->setAlignment(FF)V

    .line 264
    :cond_144
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->canVisitAuthor()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_159

    .line 265
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/PluginEntry$4;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 275
    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    :cond_159
    if-eqz v10, :cond_173

    .line 280
    new-instance v15, Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v20

    const/16 v21, 0xc

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v22

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v22}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v15

    .line 282
    :cond_173
    new-instance v15, Lio/blueflower/stapel2d/gui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloads()I

    move-result v2

    const-string v3, ""

    if-ltz v2, :cond_1b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x9d9

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v5}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloads()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b1

    :cond_1b0
    move-object v2, v3

    :goto_1b1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v4, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 283
    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getSize()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeFileSize(Lio/blueflower/stapel2d/gamestack/Translator;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 284
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v20

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 285
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v15, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 286
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v15, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 287
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Label;->getFont()Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v0

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v15, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 288
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 291
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v2, v0, -0x2a

    if-eqz v10, :cond_203

    add-int/lit8 v2, v0, -0x3a

    :cond_203
    move v6, v2

    if-eqz v10, :cond_20a

    const/16 v0, 0x3c

    :goto_208
    move v15, v0

    goto :goto_20d

    :cond_20a
    const/16 v0, 0x50

    goto :goto_208

    .line 295
    :goto_20d
    invoke-direct {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->getText()Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$5;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    sub-int v5, v4, v15

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v7

    move-object v4, v3

    const/4 v3, 0x0

    move-object v9, v4

    const/4 v4, 0x0

    move/from16 v25, v10

    move-object v10, v9

    move/from16 v9, v25

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/store/PluginEntry$5;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/ElementLine;Z)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/4 v7, 0x0

    .line 303
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 304
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, v7, v3, v7, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 305
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/gui/ListBox;->setShowSlider(Z)V

    .line 306
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 307
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setAlignment(FF)V

    .line 308
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->expandedHeight:I

    .line 309
    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->getDefaultHeight(Lio/blueflower/stapel2d/gui/Gadget;)I

    move-result v3

    if-le v0, v3, :cond_26f

    move v0, v14

    goto :goto_270

    :cond_26f
    move v0, v7

    :goto_270
    iput-boolean v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->expandable:Z

    .line 310
    iput-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    .line 312
    :goto_274
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v0

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    const-string v4, "..."

    if-le v0, v3, :cond_2f8

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f8

    .line 313
    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v14

    iget-object v6, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    iget-object v13, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v13

    mul-int/2addr v6, v13

    div-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    .line 314
    :goto_2af
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2de

    .line 315
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2d0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2d0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2de

    .line 317
    :cond_2d0
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    goto :goto_2af

    .line 322
    :cond_2de
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    const/high16 v13, 0x3f000000    # 0.5f

    goto/16 :goto_274

    .line 324
    :cond_2f8
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_313

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    .line 325
    :cond_313
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    .line 329
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$6;

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    iget-object v4, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v6, v8

    move v4, v15

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/PluginEntry$6;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 456
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$7;

    const/4 v5, 0x0

    iget-object v6, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/PluginEntry$7;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 467
    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 474
    new-instance v17, Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v22

    const/16 v23, 0x1e

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v24

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v24}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v13, v17

    if-eqz v9, :cond_382

    neg-int v0, v11

    .line 476
    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/LineLayout;->getSpace()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setX(I)V

    .line 477
    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/LineLayout;->getSpace()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 480
    :cond_382
    new-instance v17, Linfo/flowersoft/theotown/ui/ProgressBar;

    const/16 v21, 0xa

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v22

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x64

    invoke-direct/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/ProgressBar;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v0, v17

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

    .line 481
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 483
    new-instance v17, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xcfc

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x1e

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v23

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x64

    invoke-direct/range {v17 .. v23}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v0, v17

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblDownloaded:Lio/blueflower/stapel2d/gui/Label;

    .line 484
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 485
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblDownloaded:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 486
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblDownloaded:Lio/blueflower/stapel2d/gui/Label;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 488
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$8;

    iget v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->DOWNLOAD_FRAME:I

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6f1

    .line 490
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    .line 491
    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$8;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdAcquire:Linfo/flowersoft/theotown/ui/IconButton;

    .line 504
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$9;

    iget v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->DOWNLOAD_FRAME:I

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x7da

    .line 505
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$9;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDownload:Linfo/flowersoft/theotown/ui/IconButton;

    .line 514
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$10;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc93

    .line 515
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$10;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdError:Linfo/flowersoft/theotown/ui/IconButton;

    .line 523
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$11;

    iget v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->INACTIVE_FRAME:I

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xba0

    .line 524
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/16 v6, 0x50

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$11;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdActivate:Linfo/flowersoft/theotown/ui/IconButton;

    .line 533
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$12;

    iget v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->ACTIVE_FRAME:I

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x84c

    .line 534
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$12;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDeactivate:Linfo/flowersoft/theotown/ui/IconButton;

    .line 548
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$13;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$13;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDelete:Linfo/flowersoft/theotown/ui/IconButton;

    .line 567
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    .line 568
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 569
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 571
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$14;

    iget v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->REPORT_FRAME:I

    const/16 v7, 0x1e

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$14;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdReport:Linfo/flowersoft/theotown/ui/IconButton;

    .line 591
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$15;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getComments()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/PluginEntry$15;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdComments:Linfo/flowersoft/theotown/ui/IconButton;

    .line 599
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdActivate:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDeactivate:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 600
    iget-object v0, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDeactivate:Linfo/flowersoft/theotown/ui/IconButton;

    iget-object v2, v1, Linfo/flowersoft/theotown/store/PluginEntry;->cmdActivate:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 604
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->onUpdate()V

    return-void
.end method

.method public static getDefaultHeight(Lio/blueflower/stapel2d/gui/Gadget;)I
    .registers 1

    .line 144
    invoke-static {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->isNarrow(Lio/blueflower/stapel2d/gui/Gadget;)Z

    const/16 p0, 0x6e

    return p0
.end method

.method private getText()Ljava/lang/String;
    .registers 4

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->_text:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 133
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->_text:Ljava/lang/String;

    .line 136
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public static isNarrow(Lio/blueflower/stapel2d/gui/Gadget;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 140
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p0

    const/16 v0, 0x190

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final acquireAndDownload()V
    .registers 9

    .line 702
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->acquireAndDownload()V

    .line 703
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->onUpdate()V

    .line 704
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "plugin_download"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 705
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const-string v3, "!_acquiredplugincount"

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->add(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    .line 706
    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    .line 707
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    long-to-int v0, v0

    const/16 v1, 0x64

    const-string v3, "plugin_addict"

    invoke-interface {v2, v3, v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;II)Z

    :cond_31
    return-void
.end method

.method public final askForReport()V
    .registers 5

    .line 692
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 693
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x8b1

    .line 694
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;)V

    .line 692
    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

.method public final downloadOnly()V
    .registers 2

    .line 712
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->downloadOnly()V

    .line 713
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->onUpdate()V

    return-void
.end method

.method public draw(II)V
    .registers 4

    .line 719
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->initiated:Z

    if-nez v0, :cond_d

    .line 720
    invoke-direct {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->build()V

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->initiated:Z

    .line 722
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->onUpdate()V

    .line 724
    :cond_d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 725
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    :cond_16
    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 4

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->_title:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 125
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->_title:Ljava/lang/String;

    .line 128
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public final issueUpdate()V
    .registers 2

    .line 672
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->updateRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onUpdate()V
    .registers 16

    .line 731
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->initiated:Z

    if-nez v0, :cond_6

    goto/16 :goto_281

    .line 732
    :cond_6
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 734
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isDownloaded()Z

    move-result v0

    .line 735
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->isActive()Z

    move-result v1

    .line 737
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->updateVisibility()V

    .line 738
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_281

    .line 740
    :cond_20
    iget-boolean v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    if-eqz v2, :cond_30

    .line 741
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expandedHeight:I

    if-eq v2, v3, :cond_3f

    invoke-virtual {p0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    goto :goto_3f

    .line 743
    :cond_30
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-static {v2}, Linfo/flowersoft/theotown/store/PluginEntry;->getDefaultHeight(Lio/blueflower/stapel2d/gui/Gadget;)I

    move-result v2

    .line 744
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_3f

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 747
    :cond_3f
    :goto_3f
    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->isAvailableInStore()Z

    move-result v2

    .line 748
    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v3}, Linfo/flowersoft/theotown/store/PluginWrapper;->isDownloading()Z

    move-result v3

    .line 749
    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->isLoaded()Z

    .line 750
    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloadError()Ljava/lang/String;

    move-result-object v4

    .line 751
    iget-object v5, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v5}, Linfo/flowersoft/theotown/store/PluginWrapper;->isAcquired()Z

    move-result v5

    .line 752
    iget-object v6, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v6}, Linfo/flowersoft/theotown/store/PluginWrapper;->requiresRestart()Z

    move-result v6

    .line 753
    iget-object v7, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v7}, Linfo/flowersoft/theotown/store/PluginWrapper;->hasNewVersion()Z

    move-result v7

    if-eqz v0, :cond_71

    .line 754
    iget-object v8, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v8}, Linfo/flowersoft/theotown/store/PluginWrapper;->getError()Ljava/lang/String;

    move-result-object v8

    goto :goto_72

    :cond_71
    const/4 v8, 0x0

    :goto_72
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_78

    move v8, v9

    goto :goto_79

    :cond_78
    move v8, v10

    .line 756
    :goto_79
    iget-object v11, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v11}, Linfo/flowersoft/theotown/store/PluginWrapper;->getComments()I

    move-result v11

    .line 759
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Label;->getFont()Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v13

    iget-object v14, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 760
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-boolean v13, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    if-eqz v13, :cond_9e

    invoke-direct {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->getText()Ljava/lang/String;

    move-result-object v13

    goto :goto_a0

    :cond_9e
    iget-object v13, p0, Linfo/flowersoft/theotown/store/PluginEntry;->shortText:Ljava/lang/String;

    :goto_a0
    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    .line 762
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblDownloaded:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v12, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 763
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

    invoke-virtual {v12, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    if-eqz v3, :cond_ba

    .line 766
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

    iget-object v13, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v13}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloadProgress()F

    move-result v13

    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/ui/ProgressBar;->setProgress(F)V

    .line 769
    :cond_ba
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdAcquire:Linfo/flowersoft/theotown/ui/IconButton;

    if-nez v5, :cond_c2

    if-eqz v2, :cond_c2

    move v13, v9

    goto :goto_c3

    :cond_c2
    move v13, v10

    :goto_c3
    invoke-virtual {v12, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 770
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDownload:Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v0, :cond_cc

    if-eqz v7, :cond_d4

    :cond_cc
    if-nez v3, :cond_d4

    if-eqz v5, :cond_d4

    if-eqz v2, :cond_d4

    move v13, v9

    goto :goto_d5

    :cond_d4
    move v13, v10

    :goto_d5
    invoke-virtual {v12, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 771
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdError:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v12, v8}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 773
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdActivate:Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v0, :cond_e5

    if-nez v1, :cond_e5

    move v13, v9

    goto :goto_e6

    :cond_e5
    move v13, v10

    :goto_e6
    invoke-virtual {v12, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 774
    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDeactivate:Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    move v1, v9

    goto :goto_f2

    :cond_f1
    move v1, v10

    :goto_f2
    invoke-virtual {v12, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 775
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdDelete:Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v0, :cond_105

    if-nez v3, :cond_105

    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v12}, Linfo/flowersoft/theotown/store/PluginWrapper;->canDelete()Z

    move-result v12

    if-eqz v12, :cond_105

    move v12, v9

    goto :goto_106

    :cond_105
    move v12, v10

    :goto_106
    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 776
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdReport:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 777
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdComments:Linfo/flowersoft/theotown/ui/IconButton;

    if-ltz v11, :cond_11d

    iget-object v12, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v12}, Linfo/flowersoft/theotown/store/PluginWrapper;->supportsComments()Z

    move-result v12

    if-eqz v12, :cond_11d

    if-eqz v2, :cond_11d

    goto :goto_11e

    :cond_11d
    move v9, v10

    :goto_11e
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    if-ltz v11, :cond_136

    .line 779
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->cmdComments:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%,d"

    invoke-static {v10, v9}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 782
    :cond_136
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 784
    const-string v1, " - "

    if-nez v2, :cond_154

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->isStorePlugin()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 785
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x3e

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto/16 :goto_231

    :cond_154
    if-eqz v3, :cond_188

    .line 787
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xafb

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 788
    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloadProgress()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto/16 :goto_231

    :cond_188
    if-eqz v4, :cond_1a8

    .line 790
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x69

    invoke-interface {v5, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto/16 :goto_231

    :cond_1a8
    if-nez v0, :cond_1c9

    if-eqz v5, :cond_1bb

    .line 793
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x5cf

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto/16 :goto_231

    .line 795
    :cond_1bb
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x364

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto :goto_231

    .line 798
    :cond_1c9
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isNewlyInstalledAndWaiting()Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 799
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x5d6

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto :goto_231

    .line 801
    :cond_1df
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1f7

    if-nez v8, :cond_1f7

    .line 802
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x190

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    goto :goto_204

    .line 804
    :cond_1f7
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa5e

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 806
    :goto_204
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->newVersionIsDownloadedAndWaiting()Z

    move-result v0

    if-eqz v0, :cond_231

    .line 807
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x79d

    .line 808
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    :cond_231
    :goto_231
    if-eqz v7, :cond_25a

    if-nez v3, :cond_25a

    .line 814
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x70c

    .line 815
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    :cond_25a
    if-eqz v6, :cond_281

    .line 818
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->lblStatus:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x9c9

    .line 819
    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    :cond_281
    :goto_281
    return-void
.end method

.method public parentHasToLayout()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setSelected(Z)V
    .registers 3

    .line 824
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->expanded:Z

    :cond_9
    return-void
.end method

.method public final shouldShowUnknownQualityWarning()Z
    .registers 5

    .line 608
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isQualityPluginCertifiedAuthor()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 609
    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getPrice()I

    move-result v0

    if-lez v0, :cond_42

    .line 610
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_STORE_PLUGIN_QUALITY_WARNING:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 611
    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloads()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "unknown quality downloads"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v0, v1, :cond_40

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 612
    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "unknown quality ratings"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_42

    :cond_40
    const/4 v0, 0x1

    return v0

    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method public final showError()V
    .registers 8

    .line 659
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 661
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x5b8

    .line 662
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x993

    .line 663
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v1, v2, v3, v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 666
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x98f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v0, 0x1

    .line 667
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_4a
    return-void
.end method

.method public final showNotManyDownloadsDialog(Ljava/lang/Runnable;)V
    .registers 9

    .line 624
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5e3

    .line 626
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x925

    .line 627
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x104

    const/16 v5, 0x8c

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 632
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION_NO:I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x693

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 636
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x496

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 v1, 0x1

    .line 637
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v2, 0x42

    .line 638
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 639
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 640
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showPurchaseDialog()V
    .registers 2

    .line 616
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->shouldShowUnknownQualityWarning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 617
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/PluginEntry;->showNotManyDownloadsDialog(Ljava/lang/Runnable;)V

    return-void

    .line 619
    :cond_f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->showPurchaseDialogRaw()V

    return-void
.end method

.method public final showPurchaseDialogRaw()V
    .registers 14

    .line 644
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iget v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->DOWNLOAD_FRAME:I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x1a7

    .line 646
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/store/PluginEntry;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb3d

    .line 647
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    iget-object v5, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 649
    invoke-interface {v5}, Linfo/flowersoft/theotown/store/PluginWrapper;->getPrice()I

    move-result v5

    int-to-long v5, v5

    new-instance v7, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/store/PluginEntry;)V

    iget-object v8, p0, Linfo/flowersoft/theotown/store/PluginEntry;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v9, p0, Linfo/flowersoft/theotown/store/PluginEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v11, "get plugin"

    const/4 v12, 0x0

    const-string v10, "getplugin"

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 654
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "download ad cap"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "download ad cap seconds"

    const/16 v5, 0x3c

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "get plugin"

    invoke-static {v4, v1, v2}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->configureCap(Ljava/lang/String;II)V

    .line 655
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final updateVisibility()V
    .registers 4

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isReported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "hide reported plugins"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry;->plugin:Linfo/flowersoft/theotown/store/PluginWrapper;

    .line 153
    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 154
    :cond_23
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    :cond_26
    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass1 (info.flowersoft.theotown.store.PluginEntry$1)
.class public Linfo/flowersoft/theotown/store/PluginEntry$1;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$1;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$1;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass10 (info.flowersoft.theotown.store.PluginEntry$10)
.class public Linfo/flowersoft/theotown/store/PluginEntry$10;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 515
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$10;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 518
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 519
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$10;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$1100(Linfo/flowersoft/theotown/store/PluginEntry;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass11 (info.flowersoft.theotown.store.PluginEntry$11)
.class public Linfo/flowersoft/theotown/store/PluginEntry$11;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 525
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$11;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 528
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 529
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$11;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->setActive(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass12 (info.flowersoft.theotown.store.PluginEntry$12)
.class public Linfo/flowersoft/theotown/store/PluginEntry$12;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 535
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$12;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 538
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 539
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$12;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->setActive(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass13 (info.flowersoft.theotown.store.PluginEntry$13)
.class public Linfo/flowersoft/theotown/store/PluginEntry$13;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 548
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$13;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 551
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 552
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 553
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float v4, p1

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 554
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 558
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 563
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$13;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->delete()V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass14 (info.flowersoft.theotown.store.PluginEntry$14)
.class public Linfo/flowersoft/theotown/store/PluginEntry$14;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 571
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$14;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 574
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 575
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 576
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$14;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {p1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$1200(Linfo/flowersoft/theotown/store/PluginEntry;)I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 577
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 587
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$14;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->canReport()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$14;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getDownloads()I

    move-result v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 581
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 582
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$14;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$1300(Linfo/flowersoft/theotown/store/PluginEntry;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass15 (info.flowersoft.theotown.store.PluginEntry$15)
.class public Linfo/flowersoft/theotown/store/PluginEntry$15;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 591
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$15;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 594
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 595
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$15;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$1400(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$15;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v1

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->getCommentsStage()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass2 (info.flowersoft.theotown.store.PluginEntry$2)
.class public Linfo/flowersoft/theotown/store/PluginEntry$2;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 174
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 21

    move-object/from16 v0, p0

    .line 177
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, p1, v1

    .line 178
    iget v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v2, p2, v2

    .line 179
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 180
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v3

    invoke-interface {v3}, Linfo/flowersoft/theotown/store/PluginWrapper;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v3

    .line 181
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    if-eqz v3, :cond_70

    .line 185
    iget-object v7, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v7}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v7

    invoke-interface {v7}, Linfo/flowersoft/theotown/store/PluginWrapper;->getFrame()I

    move-result v11

    .line 187
    iget-object v7, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    .line 188
    invoke-static {v7}, Linfo/flowersoft/theotown/store/PluginEntry;->access$100(Linfo/flowersoft/theotown/store/PluginEntry;)J

    move-result-wide v7

    sub-long v12, v5, v7

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0xc8

    invoke-static/range {v12 .. v17}, Lcom/badlogic/gdx/math/MathUtils;->clamp(JJJ)J

    move-result-wide v5

    long-to-int v5, v5

    mul-int/lit16 v5, v5, 0xff

    div-int/lit16 v5, v5, 0xc8

    .line 187
    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 191
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v1, -0x5

    int-to-float v6, v6

    add-int/lit8 v7, v2, -0x5

    int-to-float v7, v7

    iget v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v10, v10, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 193
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v5

    int-to-float v7, v1

    int-to-float v8, v2

    iget v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v9, v6

    iget v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v10, v6

    const/high16 v12, 0x40800000    # 4.0f

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v3

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawRoundedFit(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFFFIF)V

    move-object v4, v5

    goto :goto_e3

    .line 197
    :cond_70
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3, v5, v6}, Linfo/flowersoft/theotown/store/PluginEntry;->access$102(Linfo/flowersoft/theotown/store/PluginEntry;J)J

    .line 200
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 201
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v3, v1, -0x1

    int-to-float v6, v3

    add-int/lit8 v3, v2, -0x1

    int-to-float v7, v3

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v9, v3

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v10, v3, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 204
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v3

    invoke-interface {v3}, Linfo/flowersoft/theotown/store/PluginWrapper;->isStorePlugin()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 206
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 207
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    rem-long/2addr v5, v7

    long-to-float v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float v9, v3, v6

    const v3, 0x3fc90fdb

    add-float v10, v9, v3

    move-object v13, v4

    .line 209
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    int-to-float v3, v1

    iget v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v3, v6

    int-to-float v6, v2

    iget v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41c80000    # 25.0f

    move v5, v3

    invoke-virtual/range {v4 .. v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v4, v13

    .line 217
    :cond_de
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :goto_e3
    const/high16 v3, 0x3f000000    # 0.5f

    .line 219
    invoke-virtual {v4, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 220
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v5, v3, -0xd

    .line 221
    iget-object v6, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v6}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v6

    invoke-interface {v6}, Linfo/flowersoft/theotown/store/PluginWrapper;->isPermanent()Z

    move-result v6

    if-eqz v6, :cond_104

    .line 222
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v7, v2

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    invoke-virtual {v4, v6, v5, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v5, v3, -0x1a

    .line 225
    :cond_104
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$2;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v3

    invoke-interface {v3}, Linfo/flowersoft/theotown/store/PluginWrapper;->isFeatured()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 226
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v2, v2

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    invoke-virtual {v4, v3, v1, v2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_11a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 229
    invoke-virtual {v4, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass3 (info.flowersoft.theotown.store.PluginEntry$3)
.class public Linfo/flowersoft/theotown/store/PluginEntry$3;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;

.field public final synthetic val$hline:Lio/blueflower/stapel2d/gui/ElementLine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/ElementLine;)V
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

    .line 234
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$3;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    iput-object p9, p0, Linfo/flowersoft/theotown/store/PluginEntry$3;->val$hline:Lio/blueflower/stapel2d/gui/ElementLine;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$3;->val$hline:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass4 (info.flowersoft.theotown.store.PluginEntry$4)
.class public Linfo/flowersoft/theotown/store/PluginEntry$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 265
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$4;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

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

    .line 268
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$4;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->visitAuthor()V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass5 (info.flowersoft.theotown.store.PluginEntry$5)
.class public Linfo/flowersoft/theotown/store/PluginEntry$5;
.super Linfo/flowersoft/theotown/ui/ScrollableTextFrame;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;

.field public final synthetic val$narrow:Z

.field public final synthetic val$vline:Lio/blueflower/stapel2d/gui/ElementLine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/ElementLine;Z)V
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

    .line 296
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$5;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    iput-object p8, p0, Linfo/flowersoft/theotown/store/PluginEntry$5;->val$vline:Lio/blueflower/stapel2d/gui/ElementLine;

    iput-boolean p9, p0, Linfo/flowersoft/theotown/store/PluginEntry$5;->val$narrow:Z

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .line 299
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$5;->val$vline:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v1, v0, -0x2a

    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 300
    iget-boolean v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$5;->val$narrow:Z

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, -0x3a

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    :cond_12
    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass6 (info.flowersoft.theotown.store.PluginEntry$6)
.class public Linfo/flowersoft/theotown/store/PluginEntry$6;
.super Lio/blueflower/stapel2d/gui/Button;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final lblCount:Lio/blueflower/stapel2d/gui/Label;

.field public final lblRating:Lio/blueflower/stapel2d/gui/Label;

.field public final lblTitle:Lio/blueflower/stapel2d/gui/Label;

.field public final semiNegative:Lio/blueflower/stapel2d/drawing/Color;

.field public final semiPositive:Lio/blueflower/stapel2d/drawing/Color;

.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 14
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

    .line 329
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v0

    .line 332
    iget-object p2, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p3, p2, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    const p4, 0x3ecccccd    # 0.4f

    invoke-static {p4, p3, p2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    iput-object p2, v6, Linfo/flowersoft/theotown/store/PluginEntry$6;->semiPositive:Lio/blueflower/stapel2d/drawing/Color;

    .line 333
    iget-object p2, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p3, p2, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p4, p3, p2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    iput-object p2, v6, Linfo/flowersoft/theotown/store/PluginEntry$6;->semiNegative:Lio/blueflower/stapel2d/drawing/Color;

    .line 338
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-static {p1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 p2, 0x112

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v6, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    .line 340
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 341
    iget-object p1, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 342
    iget-object p1, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const p1, 0x3dcccccd    # 0.1f

    const/high16 p2, 0x3f000000    # 0.5f

    .line 343
    invoke-virtual {v0, p2, p1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 345
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    const-string v1, ""

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v6, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblRating:Lio/blueflower/stapel2d/gui/Label;

    .line 347
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 348
    iget-object p1, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 349
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const p1, 0x3f266666    # 0.65f

    .line 350
    invoke-virtual {v0, p2, p1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 352
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    const-string v1, ""

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v6, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblCount:Lio/blueflower/stapel2d/gui/Label;

    .line 354
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 355
    iget-object p1, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 356
    iget-object p1, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 357
    invoke-virtual {v0, p2, p1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 358
    invoke-virtual {v0, p2, p2}, Lio/blueflower/stapel2d/gui/Label;->setScale(FF)V

    .line 360
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry$6;->updateText()V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 20

    move-object/from16 v0, p0

    .line 368
    iget-object v1, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v1

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->getUserRating()I

    move-result v1

    .line 369
    iget-object v2, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v2}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v2

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->canRate()Z

    move-result v2

    .line 370
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v3

    invoke-interface {v3}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingSum()I

    move-result v3

    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v4

    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v4

    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 374
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v4

    invoke-interface {v4}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v5}, Linfo/flowersoft/theotown/store/PluginEntry;->access$300(Linfo/flowersoft/theotown/store/PluginEntry;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_60

    .line 375
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x8b

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 376
    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    goto/16 :goto_e3

    .line 377
    :cond_60
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$400(Linfo/flowersoft/theotown/store/PluginEntry;)[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_7e

    .line 378
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0xccc

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 379
    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_e3

    .line 380
    :cond_7e
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$400(Linfo/flowersoft/theotown/store/PluginEntry;)[F

    move-result-object v4

    aget v4, v4, v6

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_99

    .line 381
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x404

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->semiNegative:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_e3

    .line 383
    :cond_99
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$400(Linfo/flowersoft/theotown/store/PluginEntry;)[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_b7

    .line 384
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x23f

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_e3

    .line 386
    :cond_b7
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v4}, Linfo/flowersoft/theotown/store/PluginEntry;->access$400(Linfo/flowersoft/theotown/store/PluginEntry;)[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_d3

    .line 387
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x160

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->semiPositive:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_e3

    .line 390
    :cond_d3
    iget-object v3, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v3}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x8fb

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 391
    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    .line 394
    :goto_e3
    iget-object v5, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblRating:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 395
    iget-object v4, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblRating:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 397
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v3, v3, p1

    .line 398
    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v4, p2

    .line 399
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v14, v5, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 408
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 409
    invoke-super/range {p0 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 411
    iget-object v5, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v5}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v5

    invoke-interface {v5}, Linfo/flowersoft/theotown/store/PluginWrapper;->isAcquired()Z

    move-result v5

    if-eqz v5, :cond_194

    iget-object v5, v0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v5}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v5

    invoke-interface {v5}, Linfo/flowersoft/theotown/store/PluginWrapper;->isAvailableInStore()Z

    move-result v5

    if-eqz v5, :cond_194

    if-eqz v2, :cond_120

    if-eq v1, v6, :cond_120

    const/16 v7, 0xff

    goto :goto_122

    :cond_120
    const/16 v7, 0x32

    .line 412
    :goto_122
    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 413
    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v15, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    .line 414
    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v8, -0x1

    if-ne v1, v8, :cond_130

    move-object v9, v15

    goto :goto_131

    :cond_130
    move-object v9, v7

    .line 415
    :goto_131
    invoke-virtual {v14, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v9, v3, 0xc

    .line 418
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v4

    add-int/lit8 v11, v10, -0x3

    move-object v12, v7

    .line 419
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v7

    int-to-float v9, v9

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-int/lit8 v13, v3, 0x7

    int-to-float v13, v13

    int-to-float v11, v11

    add-int/lit8 v5, v3, 0x11

    int-to-float v5, v5

    move/from16 v16, v8

    move v8, v9

    move v9, v10

    move v10, v13

    move v13, v11

    move-object v6, v12

    move v12, v5

    move-object v5, v6

    move/from16 v6, v16

    invoke-virtual/range {v7 .. v14}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    if-eqz v2, :cond_164

    if-eq v1, v6, :cond_164

    const/16 v2, 0xff

    goto :goto_166

    :cond_164
    const/16 v2, 0x64

    .line 421
    :goto_166
    invoke-virtual {v14, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16d

    goto :goto_16e

    :cond_16d
    move-object v15, v5

    .line 422
    :goto_16e
    invoke-virtual {v14, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 424
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v1, v3, -0xc

    .line 425
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, 0x3

    .line 426
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v7

    int-to-float v8, v1

    add-int/lit8 v4, v4, -0x2

    int-to-float v9, v4

    add-int/lit8 v1, v3, -0x7

    int-to-float v10, v1

    int-to-float v11, v2

    add-int/lit8 v3, v3, -0x11

    int-to-float v12, v3

    move v13, v11

    invoke-virtual/range {v7 .. v14}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    :cond_194
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 431
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->supportsRating()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 435
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isAvailableInStore()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_78

    .line 436
    :cond_d
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 437
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->isAcquired()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 438
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->canRate()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 439
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getUserRating()I

    move-result v0

    if-nez v0, :cond_5f

    .line 441
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_54

    const/4 v0, 0x1

    goto :goto_55

    :cond_54
    const/4 v0, -0x1

    .line 442
    :goto_55
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->rate(I)V

    goto :goto_69

    .line 444
    :cond_5f
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->rate(I)V

    .line 446
    :goto_69
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/PluginEntry$6;->updateText()V

    return-void

    .line 448
    :cond_6d
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$500(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->showConnectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public final updateText()V
    .registers 4

    .line 363
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblRating:Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v1

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "?"

    goto :goto_47

    :cond_11
    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v1

    invoke-interface {v1}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingSum()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v2}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v2

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v2}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v2

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d%%"

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->lblCount:Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$200(Linfo/flowersoft/theotown/store/PluginEntry;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x647

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/store/PluginEntry$6;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v2}, Linfo/flowersoft/theotown/store/PluginEntry;->access$000(Linfo/flowersoft/theotown/store/PluginEntry;)Linfo/flowersoft/theotown/store/PluginWrapper;

    move-result-object v2

    invoke-interface {v2}, Linfo/flowersoft/theotown/store/PluginWrapper;->getRatingCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass7 (info.flowersoft.theotown.store.PluginEntry$7)
.class public Linfo/flowersoft/theotown/store/PluginEntry$7;
.super Lio/blueflower/stapel2d/gui/Button;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 456
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$7;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

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
    .registers 3

    .line 462
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 463
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$7;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$600(Linfo/flowersoft/theotown/store/PluginEntry;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$7;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$700(Linfo/flowersoft/theotown/store/PluginEntry;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 464
    :cond_15
    :goto_15
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$7;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$700(Linfo/flowersoft/theotown/store/PluginEntry;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/PluginEntry;->access$702(Linfo/flowersoft/theotown/store/PluginEntry;Z)Z

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass8 (info.flowersoft.theotown.store.PluginEntry$8)
.class public Linfo/flowersoft/theotown/store/PluginEntry$8;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 491
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$8;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 494
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 495
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_17

    .line 496
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$8;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$800(Linfo/flowersoft/theotown/store/PluginEntry;)V

    .line 497
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    return-void

    .line 499
    :cond_17
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$8;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$900(Linfo/flowersoft/theotown/store/PluginEntry;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry.AnonymousClass9 (info.flowersoft.theotown.store.PluginEntry$9)
.class public Linfo/flowersoft/theotown/store/PluginEntry$9;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/PluginEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            null
        }
    .end annotation

    .line 506
    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$9;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 509
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 510
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$9;->this$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->access$1000(Linfo/flowersoft/theotown/store/PluginEntry;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda0 (info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/store/PluginEntry;

    return-void
.end method


# virtual methods
.method public final report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0, p1, p2, p3}, Linfo/flowersoft/theotown/store/PluginEntry;->$r8$lambda$D9nC-kAFFDjY_iLaXjYqCW-l4Vc(Linfo/flowersoft/theotown/store/PluginEntry;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda1 (info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/store/PluginEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->$r8$lambda$LFp8xXWpokT7sSD8KFIuJCJ1TAo(Linfo/flowersoft/theotown/store/PluginEntry;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda2 (info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->$r8$lambda$7n7eHS9GS4qGlmNc9eIg5853NXE(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda3 (info.flowersoft.theotown.store.PluginEntry$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/store/PluginEntry;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/PluginEntry$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/PluginEntry;->$r8$lambda$JAalMzTIMGs6LoklSx9Qqor2vUs(Linfo/flowersoft/theotown/store/PluginEntry;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
