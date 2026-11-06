###### Class io.bidmachine.iab.mraid.MraidAdView (io.bidmachine.iab.mraid.MraidAdView)
.class public final Lio/bidmachine/iab/mraid/MraidAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidAdView$Companion;,
        Lio/bidmachine/iab/mraid/MraidAdView$Builder;,
        Lio/bidmachine/iab/mraid/MraidAdView$Listener;,
        Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;,
        Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;,
        Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;,
        Lio/bidmachine/iab/mraid/MraidAdView$GestureDetectorListener;,
        Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/iab/mraid/MraidAdView$Companion;


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

.field public final g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

.field public final h:Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;

.field public final i:Lio/bidmachine/iab/mraid/AdmDownloader;

.field public final j:J

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Landroid/view/GestureDetector;

.field public final r:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

.field public final s:Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;

.field public final t:Lio/bidmachine/iab/mraid/c;

.field public final u:Lio/bidmachine/iab/mraid/MraidWebViewController;

.field public final v:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

.field public w:Lio/bidmachine/iab/mraid/MraidWebViewController;

.field public x:Lio/bidmachine/iab/mraid/MraidViewState;

.field public y:Z

.field public z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;


# direct methods
.method public static synthetic $r8$lambda$fxFp6V-wRVmMkni_ljqI_CGugKM(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/MraidAdView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdView;->Companion:Lio/bidmachine/iab/mraid/MraidAdView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidAdView$Listener;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Lio/bidmachine/iab/mraid/AdmDownloader;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/iab/mraid/MraidPlacementType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;",
            "Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;",
            "Lio/bidmachine/iab/mraid/MraidAdView$Listener;",
            "Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;",
            "Lio/bidmachine/iab/mraid/AdmDownloader;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "listener"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 4
    iput-object p3, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->c:Ljava/lang/String;

    move-object/from16 p2, p6

    .line 7
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->d:Ljava/lang/String;

    move-object/from16 p2, p8

    .line 9
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->e:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->f:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    .line 11
    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    .line 12
    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->h:Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;

    move-object/from16 p2, p12

    .line 13
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->i:Lio/bidmachine/iab/mraid/AdmDownloader;

    if-eqz p7, :cond_33

    .line 16
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_31
    move-wide v4, p2

    goto :goto_36

    :cond_33
    const-wide/16 p2, 0x0

    goto :goto_31

    :goto_36
    iput-wide v4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->j:J

    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p4, Lio/bidmachine/iab/mraid/MraidAdView$GestureDetectorListener;

    invoke-direct {p4}, Lio/bidmachine/iab/mraid/MraidAdView$GestureDetectorListener;-><init>()V

    invoke-direct {p2, p1, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->q:Landroid/view/GestureDetector;

    .line 30
    new-instance p2, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-direct {p2, p1, p5}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    .line 32
    new-instance p4, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;

    invoke-direct {p4, p2}, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;-><init>(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)V

    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;

    .line 33
    new-instance p2, Lio/bidmachine/iab/mraid/c;

    invoke-direct {p2}, Lio/bidmachine/iab/mraid/c;-><init>()V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/c;

    .line 34
    new-instance v1, Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 36
    new-instance v3, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;

    invoke-direct {v3, p0}, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    if-eqz v2, :cond_94

    .line 38
    invoke-interface {v2, p1}, Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;->createHtmlMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    move-result-object p2

    :goto_91
    move-object v2, p1

    move-object v6, p2

    goto :goto_96

    :cond_94
    const/4 p2, 0x0

    goto :goto_91

    .line 39
    :goto_96
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/iab/mraid/MraidWebViewController;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;JLio/bidmachine/rendering/measurer/HtmlMeasurer;)V

    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 49
    sget-object p1, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 55
    new-instance v2, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    .line 56
    new-instance v3, Lio/bidmachine/iab/mraid/MraidAdView$1;

    invoke-direct {v3, p0}, Lio/bidmachine/iab/mraid/MraidAdView$1;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 59
    new-instance v4, Lio/bidmachine/iab/mraid/MraidAdView$2;

    invoke-direct {v4, p0}, Lio/bidmachine/iab/mraid/MraidAdView$2;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 62
    new-instance v5, Lio/bidmachine/iab/mraid/MraidAdView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lio/bidmachine/iab/mraid/MraidAdView$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 63
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Runnable;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    .line 80
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object p1

    .line 81
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p4, 0x11

    const/4 v2, -0x1

    .line 82
    invoke-direct {p2, v2, v2, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_dc

    .line 93
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "MraidAdView"

    const-string p3, "EngagedClick reporting enabled"

    invoke-static {p2, p3, p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object p1, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->o:Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b$a;->a(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    :cond_dc
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidAdView$Listener;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Lio/bidmachine/iab/mraid/AdmDownloader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit16 p14, p13, 0x100

    const/4 v0, 0x0

    if-eqz p14, :cond_6

    move-object p9, v0

    :cond_6
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_b

    move-object p11, v0

    :cond_b
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_1d

    move-object p13, v0

    :goto_10
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1f

    :cond_1d
    move-object p13, p12

    goto :goto_10

    .line 1
    :goto_1f
    invoke-direct/range {p1 .. p13}, Lio/bidmachine/iab/mraid/MraidAdView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidAdView$Listener;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Lio/bidmachine/iab/mraid/AdmDownloader;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_16

    .line 3
    :cond_10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;Landroid/graphics/Point;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static final synthetic access$getCurrentMraidWebViewController(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidWebViewController;
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->getCurrentMraidWebViewController()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    return-object p0
.end method

.method public static final synthetic access$getMraidNativeFeatureUrlFactory$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/c;

    return-object p0
.end method

.method public static final synthetic access$getPrimaryMraidWebViewController$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidWebViewController;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    return-object p0
.end method

.method public static final synthetic access$getScriptConfigs$p(Lio/bidmachine/iab/mraid/MraidAdView;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$handleClose(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->a()V

    return-void
.end method

.method public static final synthetic access$handleError(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static final synthetic access$handleMraidLoaded(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->b()V

    return-void
.end method

.method public static final synthetic access$handleOpen(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$handleOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleOpenUrl(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;Landroid/graphics/Point;)V

    return-void
.end method

.method public static final synthetic access$handlePageLoaded(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handlePartTwoLoaded(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->c()V

    return-void
.end method

.method public static final synthetic access$isExpandInProgress$p(Lio/bidmachine/iab/mraid/MraidAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$spotWebViewClick(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->g()V

    return-void
.end method

.method private final getCurrentMraidWebViewController()Lio/bidmachine/iab/mraid/MraidWebViewController;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    :cond_6
    return-object v0
.end method

.method public static synthetic getSecondaryMraidWebViewController$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 60
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidAdViewShowFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V

    return-void

    .line 9
    :cond_12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidAdViewExpired(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V

    return-void

    .line 12
    :cond_18
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidAdViewLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-static {p1}, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;->parseJson(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;

    move-result-object p1

    if-nez p1, :cond_e

    .line 26
    sget-object p1, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;->INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;

    const-string v0, "MraidAdView"

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 32
    :cond_e
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Point;)V
    .registers 4

    .line 23
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/graphics/Point;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->complete()V

    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureSchemeValidator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 21
    :cond_14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Ljava/lang/String;)V

    .line 22
    :cond_1b
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .registers 2

    .line 22
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidLoadedIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    if-eq v0, v1, :cond_7

    goto :goto_11

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    .line 8
    :cond_12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applySupportedServices(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyPlacement(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->y:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyViewable(Z)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    .line 12
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->h()V

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->e()V

    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    .line 19
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isUseCustomClose()Z

    move-result v2

    .line 21
    invoke-interface {v0, p0, p1, v1, v2}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidAdViewPageLoaded(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public final c()V
    .registers 3

    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_20

    .line 17
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applySupportedServices(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)V

    .line 18
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyPlacement(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    .line 19
    iget-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->y:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyViewable(Z)V

    .line 20
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 21
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->notifyReady()V

    .line 25
    :cond_20
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onExpand(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->f:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->isReclassifyByAdm()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 5
    sget-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->INSTANCE:Lio/bidmachine/rendering/utils/CreativeProfileClassifier;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->classifyByMarkup(Ljava/lang/String;)Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngagedClick: reclassified - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->getProfileSource()Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "MraidAdView"

    invoke-static {v2, v0, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-nez v0, :cond_3f

    goto :goto_42

    :cond_3f
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->a(Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public final close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    return-void
.end method

.method public final closeExpanded()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 3
    :goto_a
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 6
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->destroy()V

    .line 7
    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 10
    :cond_19
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v1

    .line 11
    invoke-static {p0, v1}, Lio/bidmachine/util/ViewUtilsKt;->contains(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x2

    .line 12
    invoke-static {p0, v1, v2, v3, v2}, Lio/bidmachine/util/ViewUtilsKt;->addSingleViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)V

    .line 15
    :cond_29
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {p0, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->h()V

    if-eqz v0, :cond_3a

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->g()V

    :cond_3a
    return-void
.end method

.method public final closeResized()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lio/bidmachine/util/ViewUtilsKt;->addSingleViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    return-void
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->complete()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->c()V

    .line 3
    :cond_c
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->destroy()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->destroy()V

    :cond_18
    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->notifyReady()V

    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->j()V

    .line 7
    :cond_12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidAdViewShown(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    if-ne v0, v1, :cond_7

    goto :goto_e

    .line 5
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->i()V

    :cond_e
    :goto_e
    return-void
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastOrientationProperties()Lio/bidmachine/iab/mraid/MraidOrientationProperties;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getLastOrientationProperties()Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    move-result-object v0

    return-object v0
.end method

.method public final getMraidViewState()Lio/bidmachine/iab/mraid/MraidViewState;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    return-object v0
.end method

.method public final getSecondaryMraidWebViewController()Lio/bidmachine/iab/mraid/MraidWebViewController;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    iget-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->y:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onViewabilityChanged(Z)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->y:Z

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->e()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->f()V

    :cond_17
    return-void
.end method

.method public final handleExpand$bidmachine_android_sdk_bb_3_8_0(Ljava/lang/String;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_c1

    .line 4
    :cond_8
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    if-eq v0, v1, :cond_14

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->RESIZED:Lio/bidmachine/iab/mraid/MraidViewState;

    if-eq v0, v1, :cond_14

    goto/16 :goto_c1

    .line 7
    :cond_14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_c1

    .line 12
    :cond_20
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->ignoreExpandUrl(Lio/bidmachine/iab/mraid/MraidAdView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_81

    .line 14
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_81

    :cond_30
    if-eqz v0, :cond_33

    goto :goto_81

    .line 18
    :cond_33
    :try_start_33
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_39} :catch_7b

    .line 26
    invoke-static {p1}, Lio/bidmachine/util/UtilsKt;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_50
    new-instance v3, Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    .line 31
    new-instance v5, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;

    invoke-direct {v5, p0}, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    move-object v8, v6

    .line 32
    iget-wide v6, p0, Lio/bidmachine/iab/mraid/MraidAdView;->j:J

    .line 33
    iget-object v9, p0, Lio/bidmachine/iab/mraid/MraidAdView;->h:Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;

    if-eqz v9, :cond_74

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;->createHtmlMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    move-result-object v8

    goto :goto_75

    :cond_74
    move-object v8, v1

    .line 34
    :goto_75
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/iab/mraid/MraidWebViewController;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;JLio/bidmachine/rendering/measurer/HtmlMeasurer;)V

    .line 40
    iput-object v3, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    goto :goto_83

    .line 41
    :catch_7b
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 42
    :cond_81
    :goto_81
    iget-object v3, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 65
    :goto_83
    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    .line 67
    invoke-virtual {v3}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v5

    .line 68
    invoke-virtual {v3}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getLastOrientationProperties()Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    move-result-object v6

    .line 69
    invoke-virtual {v3}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isUseCustomClose()Z

    move-result v7

    .line 70
    invoke-interface {v4, p0, v5, v6, v7}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onExpandIntention(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z

    move-result v4

    if-nez v4, :cond_9d

    .line 77
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_9d
    if-eqz p1, :cond_c2

    .line 81
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a6

    goto :goto_c2

    :cond_a6
    if-eqz v0, :cond_a9

    goto :goto_c2

    .line 84
    :cond_a9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onExpandLoadStart(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 85
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->i:Lio/bidmachine/iab/mraid/AdmDownloader;

    if-eqz v0, :cond_bc

    .line 87
    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;

    invoke-direct {v1, p0, v3}, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    .line 88
    invoke-interface {v0, p1, v1}, Lio/bidmachine/iab/mraid/AdmDownloader;->download(Ljava/lang/String;Lio/bidmachine/util/ResultCallback;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_bc
    if-nez v1, :cond_c1

    .line 91
    invoke-virtual {v3, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->load(Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return-void

    .line 92
    :cond_c2
    :goto_c2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    invoke-interface {p1, p0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onExpand(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public final handleExpanded()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->z:Lio/bidmachine/rendering/internal/detector/engagedclick/b;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/b;->h()V

    :cond_12
    return-void
.end method

.method public final handleRedirect(Lio/bidmachine/iab/utils/ClickAreaFactory;)V
    .registers 3

    const-string v0, "clickAreaFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdRedirectHandler;->handle(Lio/bidmachine/iab/utils/ClickAreaFactory;)V

    return-void
.end method

.method public final isInterstitial()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isOpenNotified()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isReceivedJsError()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isReceivedJsError()Z

    move-result v0

    return v0
.end method

.method public final isUseCustomClose()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isUseCustomClose()Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_11

    .line 1
    const-string p1, "Html data are null"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->noRequiredArguments(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    const-string v0, "noRequiredArguments(\"Html data are null\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->a(Lio/bidmachine/iab/IabError;)V

    return-void

    .line 5
    :cond_11
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 7
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->e:Ljava/util/List;

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->load(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final onAddedToContainer(Landroid/view/ViewGroup;)V
    .registers 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onAddedToContainer(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onAddedToContainer(Landroid/view/ViewGroup;)V

    :cond_11
    return-void
.end method

.method public final onClicked()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->getCurrentMraidWebViewController()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onClicked()V

    return-void
.end method

.method public final onShown()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onShown()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4
    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onViewabilityChanged(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->y:Z

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onViewabilityChanged(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-nez p1, :cond_12

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->h()V

    :cond_12
    return-void
.end method

.method public final openExpand()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    if-ne v0, v1, :cond_7

    goto :goto_26

    .line 8
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 9
    invoke-static {p0, v0}, Lio/bidmachine/util/ViewUtilsKt;->contains(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v0, v2, v1, v2}, Lio/bidmachine/util/ViewUtilsKt;->addSingleViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)V

    .line 13
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->handleExpanded()V

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onShown()V

    :cond_26
    :goto_26
    return-void
.end method

.method public final setSecondaryMraidWebViewController(Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    return-void
.end method

.method public final setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V
    .registers 3

    const-string v0, "mraidViewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->x:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->w:Lio/bidmachine/iab/mraid/MraidWebViewController;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    :cond_13
    return-void
.end method

.method public final show()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 5
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->e()V

    :cond_14
    :goto_14
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.AnonymousClass1 (io.bidmachine.iab.mraid.MraidAdView$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidAdView$Listener;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Lio/bidmachine/iab/mraid/AdmDownloader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/bidmachine/iab/mraid/MraidWebViewController;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$1;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/bidmachine/iab/mraid/MraidWebViewController;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$1;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getCurrentMraidWebViewController(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$1;->invoke()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.AnonymousClass2 (io.bidmachine.iab.mraid.MraidAdView$2)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidAdView$Listener;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Lio/bidmachine/iab/mraid/AdmDownloader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lio/bidmachine/rendering/model/ScriptConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getScriptConfigs$p(Lio/bidmachine/iab/mraid/MraidAdView;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.Builder (io.bidmachine.iab.mraid.MraidAdView$Builder)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public final c:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Long;

.field public i:Ljava/util/List;

.field public j:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Lio/bidmachine/iab/mraid/MraidAdView$Listener;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->b:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 4
    iput-object p3, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->c:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    .line 7
    const-string p1, "https://localhost"

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lio/bidmachine/iab/mraid/MraidAdView;
    .registers 16

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->a:Landroid/content/Context;

    .line 3
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->b:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 4
    iget-object v3, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->d:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->g:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->e:Ljava/util/List;

    .line 7
    iget-object v6, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->f:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->h:Ljava/lang/Long;

    .line 9
    iget-object v8, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->i:Ljava/util/List;

    .line 10
    iget-object v9, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->j:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    .line 11
    iget-object v10, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->c:Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    const/16 v13, 0xc00

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 12
    invoke-direct/range {v0 .. v14}, Lio/bidmachine/iab/mraid/MraidAdView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Lio/bidmachine/iab/mraid/MraidAdView$Listener;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Lio/bidmachine/iab/mraid/AdmDownloader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setAllowedNativeFeatures([Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 2
    :goto_d
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->e:Ljava/util/List;

    return-object p0
.end method

.method public final setBaseUrl(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->j:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    return-object p0
.end method

.method public final setPageFinishedScript(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.Companion (io.bidmachine.iab.mraid.MraidAdView$Companion)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.ExpandAdmDownloaderResultCallbackImpl (io.bidmachine.iab.mraid.MraidAdView$ExpandAdmDownloaderResultCallbackImpl)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExpandAdmDownloaderResultCallbackImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/ResultCallback<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidWebViewController;

.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/mraid/MraidWebViewController;",
            ")V"
        }
    .end annotation

    const-string v0, "mraidWebViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->onError(Lkotlin/Unit;)V

    return-void
.end method

.method public onError(Lkotlin/Unit;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$isExpandInProgress$p(Lio/bidmachine/iab/mraid/MraidAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-interface {p1, v0}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onExpandLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 6
    :cond_e
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    .line 7
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView$ExpandAdmDownloaderResultCallbackImpl;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v2}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getScriptConfigs$p(Lio/bidmachine/iab/mraid/MraidAdView;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->load(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.GestureDetectorListener (io.bidmachine.iab.mraid.MraidAdView$GestureDetectorListener)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$GestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GestureDetectorListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 0
    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.Listener (io.bidmachine.iab.mraid.MraidAdView$Listener)
.class public interface abstract Lio/bidmachine/iab/mraid/MraidAdView$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract ignoreExpandUrl(Lio/bidmachine/iab/mraid/MraidAdView;)Z
.end method

.method public abstract onCalendarEventIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
.end method

.method public abstract onChangeOrientationIntention(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
.end method

.method public abstract onCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onExpand(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onExpandIntention(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z
.end method

.method public abstract onExpandLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onExpandLoadStart(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onMraidAdViewExpired(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
.end method

.method public abstract onMraidAdViewLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
.end method

.method public abstract onMraidAdViewPageCommitVisible(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onMraidAdViewPageLoaded(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/webkit/WebView;Z)V
.end method

.method public abstract onMraidAdViewShowFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
.end method

.method public abstract onMraidAdViewShown(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onMraidLoadedIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V
.end method

.method public abstract onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
.end method

.method public abstract onOpenUrlIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V
.end method

.method public abstract onPlayVideoIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
.end method

.method public abstract onStorePictureIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
.end method

.method public abstract onSyncCustomCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;Z)V
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.MraidWebViewControllerCallback (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback)
.class public abstract Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MraidWebViewControllerCallback"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarEvent(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getMraidNativeFeatureUrlFactory$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_27

    .line 10
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;

    invoke-direct {v1, v0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    invoke-static {v0, p1, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleOpen(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onClose()V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;->INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleClose(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public onError(Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "iabError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onError$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onError$1;-><init>(Lio/bidmachine/iab/IabError;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleError(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onExpand(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onExpand$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onExpand$1;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->handleExpand$bidmachine_android_sdk_bb_3_8_0(Ljava/lang/String;)V

    return-void
.end method

.method public onLoaded()V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;->INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleMraidLoaded(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public onOpen(Ljava/lang/String;Landroid/graphics/Point;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpen$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpen$1;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleOpenUrl(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V

    return-void
.end method

.method public onOpenPrivacySheet(Ljava/lang/String;)V
    .registers 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    return-void
.end method

.method public onOrientation(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
    .registers 4

    const-string v0, "mraidOrientationProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOrientation$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOrientation$1;-><init>(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->getMraidViewState()Lio/bidmachine/iab/mraid/MraidViewState;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    if-ne v0, v1, :cond_22

    goto :goto_23

    :cond_22
    return-void

    .line 6
    :cond_23
    :goto_23
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onChangeOrientationIntention(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    return-void
.end method

.method public onPlayVideo(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_2e

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2e

    .line 9
    :cond_13
    :try_start_13
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "decode(url, \"UTF-8\")"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onPlayVideoIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    .line 11
    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onStorePicture(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$1;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidAdView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getMraidNativeFeatureUrlFactory$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_27

    .line 10
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;

    invoke-direct {v1, v0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    invoke-static {v0, p1, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handleOpen(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_27
    :goto_27
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onCalendarEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onCalendarEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onCalendarEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 4
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onCalendarEventIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onClose$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onClose$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;->INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onClose$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 2
    const-string v0, "Callback - onClose"

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onError$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onError$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onError(Lio/bidmachine/iab/IabError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/IabError;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onError$1;->a:Lio/bidmachine/iab/IabError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onError$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onError$1;->a:Lio/bidmachine/iab/IabError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onExpand$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onExpand$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onExpand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onExpand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onExpand$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onExpand$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onExpand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onExpand$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onLoaded$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onLoaded$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;->INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onLoaded$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 2
    const-string v0, "Callback - onLoaded"

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOpen$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOpen$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onOpen(Ljava/lang/String;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpen$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpen$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpen$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onOpenPrivacySheet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onOpenPrivacySheet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOrientation$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOrientation$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOrientation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onOrientation(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidOrientationProperties;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOrientation$1;->a:Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOrientation$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onOrientation$1;->a:Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onPlayVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onPlayVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onStorePicture$1 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onStorePicture$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onStorePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback - onStorePicture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onStorePicture$2 (io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onStorePicture$2)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onStorePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback$onStorePicture$2;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 4
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onStorePictureIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.PrimaryControllerCallback (io.bidmachine.iab.mraid.MraidAdView$PrimaryControllerCallback)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;
.super Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrimaryControllerCallback"
.end annotation


# instance fields
.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method


# virtual methods
.method public onPageCommitVisible()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-interface {v0, v1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onMraidAdViewPageCommitVisible(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handlePageLoaded(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getPrimaryMraidWebViewController$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isUseCustomClose()Z

    move-result v1

    .line 4
    invoke-interface {p1, v0, v1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onSyncCustomCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;Z)V

    return-void
.end method

.method public onWebViewClicked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$PrimaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$spotWebViewClick(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView.SecondaryControllerCallback (io.bidmachine.iab.mraid.MraidAdView$SecondaryControllerCallback)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;
.super Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecondaryControllerCallback"
.end annotation


# instance fields
.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method


# virtual methods
.method public onError(Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "iabError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$isExpandInProgress$p(Lio/bidmachine/iab/mraid/MraidAdView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$MraidWebViewControllerCallback;->onError(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onPageCommitVisible()V
    .registers 1

    .line 0
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->access$handlePartTwoLoaded(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->getSecondaryMraidWebViewController()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$SecondaryControllerCallback;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->isUseCustomClose()Z

    move-result p1

    .line 5
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onSyncCustomCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;Z)V

    return-void
.end method

.method public onWebViewClicked()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$$ExternalSyntheticLambda0 (io.bidmachine.iab.mraid.MraidAdView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/iab/mraid/MraidAdView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/iab/mraid/MraidAdView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->$r8$lambda$fxFp6V-wRVmMkni_ljqI_CGugKM(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$handleOpenPrivacySheet$1 (io.bidmachine.iab.mraid.MraidAdView$handleOpenPrivacySheet$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;->INSTANCE:Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenPrivacySheet$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 2
    const-string v0, "Callback - can\'t parse privacy sheet"

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidAdView$handleOpenUrl$1 (io.bidmachine.iab.mraid.MraidAdView$handleOpenUrl$1)
.class public final Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView;->a(Ljava/lang/String;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;

.field public final synthetic b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/graphics/Point;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;->b:Landroid/graphics/Point;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->access$getListener$p(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$Listener;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 5
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView$handleOpenUrl$1;->b:Landroid/graphics/Point;

    .line 6
    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/iab/mraid/MraidAdView$Listener;->onOpenUrlIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V

    return-void
.end method
