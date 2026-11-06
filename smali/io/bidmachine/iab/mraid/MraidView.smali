###### Class io.bidmachine.iab.mraid.MraidView (io.bidmachine.iab.mraid.MraidView)
.class public Lio/bidmachine/iab/mraid/MraidView;
.super Lio/bidmachine/iab/view/CloseableLayout;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;
.implements Lio/bidmachine/iab/utils/IabClickCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidView$Builder;,
        Lio/bidmachine/iab/mraid/MraidView$e;
    }
.end annotation


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final B:Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

.field public final C:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final D:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final E:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final F:Lio/bidmachine/iab/utils/IabElementStyle;

.field public G:Z

.field public H:Lio/bidmachine/iab/utils/IabTimerHelper;

.field public I:Lio/bidmachine/iab/utils/IabProgressWrapper;

.field public J:Z

.field public K:Ljava/lang/Integer;

.field public final h:Landroid/content/MutableContextWrapper;

.field public final i:Lio/bidmachine/iab/mraid/MraidAdView;

.field public j:Lio/bidmachine/iab/view/CloseableLayout;

.field public k:Lio/bidmachine/iab/view/CloseableLayout;

.field public l:Lio/bidmachine/iab/utils/IabLoadingWrapper;

.field public m:Ljava/lang/ref/WeakReference;

.field public n:Ljava/lang/String;

.field public o:Lio/bidmachine/iab/mraid/MraidViewListener;

.field public final p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

.field public final q:Lio/bidmachine/iab/CacheControl;

.field public final r:F

.field public final s:F

.field public final t:F

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$Builder;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/view/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->G:Z

    .line 23
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->J:Z

    .line 31
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    .line 32
    iget-object v0, p2, Lio/bidmachine/iab/mraid/MraidView$Builder;->listener:Lio/bidmachine/iab/mraid/MraidViewListener;

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    .line 33
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->a(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    .line 34
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->b(Lio/bidmachine/iab/mraid/MraidView$Builder;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView;->r:F

    .line 35
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->l(Lio/bidmachine/iab/mraid/MraidView$Builder;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    .line 36
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->m(Lio/bidmachine/iab/mraid/MraidView$Builder;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView;->t:F

    .line 37
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->n(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->u:Z

    .line 38
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->o(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    .line 39
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->p(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->w:Z

    .line 40
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->q(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->x:Z

    .line 41
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->r(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->y:Z

    .line 43
    iget-object v1, p2, Lio/bidmachine/iab/mraid/MraidView$Builder;->mraidAdMeasurer:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 45
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->s(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->C:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 46
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->c(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->D:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 47
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->d(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->E:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 48
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->e(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->F:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 50
    new-instance v3, Lio/bidmachine/iab/mraid/MraidAdView$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 51
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->k(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/mraid/MraidPlacementType;

    move-result-object v5

    new-instance v6, Lio/bidmachine/iab/mraid/MraidView$e;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lio/bidmachine/iab/mraid/MraidView$e;-><init>(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/mraid/MraidView$a;)V

    invoke-direct {v3, v4, v5, v6}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Lio/bidmachine/iab/mraid/MraidAdView$Listener;)V

    .line 53
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->j(Lio/bidmachine/iab/mraid/MraidView$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->setBaseUrl(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;

    move-result-object v3

    .line 54
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->i(Lio/bidmachine/iab/mraid/MraidView$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;

    move-result-object v3

    .line 55
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->h(Lio/bidmachine/iab/mraid/MraidView$Builder;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->setAllowedNativeFeatures([Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;

    move-result-object v3

    .line 56
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->g(Lio/bidmachine/iab/mraid/MraidView$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->setPageFinishedScript(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;

    move-result-object v3

    .line 57
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$Builder;->f(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    move-result-object p2

    invoke-virtual {v3, p2}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidAdView$Builder;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lio/bidmachine/iab/mraid/MraidAdView$Builder;->build()Lio/bidmachine/iab/mraid/MraidAdView;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 59
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x11

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_dd

    .line 65
    new-instance v3, Lio/bidmachine/iab/utils/IabProgressWrapper;

    invoke-direct {v3, v7}, Lio/bidmachine/iab/utils/IabProgressWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lio/bidmachine/iab/mraid/MraidView;->I:Lio/bidmachine/iab/utils/IabProgressWrapper;

    .line 66
    invoke-virtual {v3, p1, p0, v2}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 67
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$a;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidView$a;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 87
    new-instance v2, Lio/bidmachine/iab/utils/IabTimerHelper;

    invoke-direct {v2, p0, p1}, Lio/bidmachine/iab/utils/IabTimerHelper;-><init>(Landroid/view/View;Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;)V

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->H:Lio/bidmachine/iab/utils/IabTimerHelper;

    .line 88
    invoke-virtual {v2, v0}, Lio/bidmachine/iab/utils/IabTimerHelper;->setTime(F)V

    .line 91
    :cond_dd
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$b;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidView$b;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->B:Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    .line 104
    invoke-virtual {p0, p0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;)V

    if-eqz v1, :cond_f3

    .line 107
    invoke-interface {v1, p0}, Lio/bidmachine/iab/measurer/AdMeasurer;->registerAdContainer(Landroid/view/ViewGroup;)V

    .line 108
    invoke-virtual {p2}, Lio/bidmachine/iab/mraid/MraidAdView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->registerAdView(Landroid/view/View;)V

    :cond_f3
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$Builder;Lio/bidmachine/iab/mraid/MraidView$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$Builder;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/utils/IabProgressWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView;->I:Lio/bidmachine/iab/utils/IabProgressWrapper;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->c(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Landroid/webkit/WebView;Z)V
    .registers 4

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/mraid/MraidView;->a(Ljava/lang/String;Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z
    .registers 4

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView;Z)Z
    .registers 2

    .line 8
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView;->G:Z

    return p1
.end method

.method public static synthetic b(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/iab/mraid/MraidView;Z)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->a(Z)V

    return-void
.end method

.method public static synthetic c(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static synthetic c(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lio/bidmachine/iab/mraid/MraidView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView;->x:Z

    return p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/mraid/MraidView;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView;->t:F

    return p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->g()V

    return-void
.end method

.method public static synthetic f(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->j()V

    return-void
.end method

.method public static synthetic g(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->e()V

    return-void
.end method

.method public static synthetic h(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->d()V

    return-void
.end method

.method public static synthetic i(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->m()V

    return-void
.end method

.method public static synthetic j(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->l()V

    return-void
.end method

.method public static synthetic k(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->k()V

    return-void
.end method

.method public static synthetic l(Lio/bidmachine/iab/mraid/MraidView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    return p0
.end method

.method public static synthetic m(Lio/bidmachine/iab/mraid/MraidView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView;->G:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .line 21
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->y:Z

    if-nez v0, :cond_5

    goto :goto_1c

    .line 24
    :cond_5
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->J:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lio/bidmachine/util/ViewUtils;->isViewVisible(I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 25
    :goto_12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_1c
    return-void

    .line 28
    :cond_1d
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->onViewabilityChanged(Z)V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->K:Ljava/lang/Integer;

    :cond_e
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 17
    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 18
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    :cond_d
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_7

    .line 11
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->onError(Lio/bidmachine/iab/IabError;)V

    .line 13
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_e

    .line 14
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidViewListener;->onExpired(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    :cond_e
    return-void
.end method

.method public final a(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 121
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "applyOrientation: %s"

    const-string v3, "MraidView"

    invoke-static {v3, v2, v1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1d

    const/4 p1, 0x0

    .line 124
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "no any interacted activities"

    invoke-static {v3, v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_1d
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->b(Landroid/app/Activity;)V

    .line 128
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->obtainTargetActivityOrientation(Landroid/content/Context;)I

    move-result p1

    .line 129
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/view/CloseableLayout;Z)V
    .registers 4

    .line 85
    invoke-virtual {p0, p0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;)V

    .line 86
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->C:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 87
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->D:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 88
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(Z)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-nez v0, :cond_5

    return-void

    .line 45
    :cond_5
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidViewListener;->onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_7

    .line 16
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidViewListener;->onPlayVideo(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/webkit/WebView;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 30
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {p0, p0, p3}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    .line 33
    :cond_d
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz p3, :cond_14

    .line 34
    invoke-interface {p3, p2}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdViewReady(Landroid/view/View;)V

    .line 36
    :cond_14
    iget-object p2, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    sget-object p3, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    if-ne p2, p3, :cond_29

    iget-boolean p2, p0, Lio/bidmachine/iab/mraid/MraidView;->u:Z

    if-nez p2, :cond_29

    .line 39
    const-string p2, "data:text/html,<html></html>"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->l()V

    :cond_29
    return-void
.end method

.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_9

    .line 89
    iget-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    .line 90
    :goto_a
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    if-eqz v0, :cond_14

    .line 91
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    return-void

    .line 92
    :cond_14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    if-eqz v0, :cond_1e

    .line 93
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    return-void

    .line 94
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 96
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->G:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2c

    .line 98
    :cond_2a
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    .line 99
    :goto_2c
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    :cond_2f
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z
    .registers 7

    .line 68
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_36

    .line 69
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->peekContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lio/bidmachine/iab/mraid/MraidUtils;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 70
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_21

    const/4 p1, 0x0

    .line 71
    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "MraidView"

    const-string v0, "Can\'t add expanded view because can\'t find required parent"

    invoke-static {p3, v0, p2}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 74
    :cond_21
    new-instance v1, Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/iab/view/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    .line 75
    invoke-virtual {v1, p0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;)V

    .line 76
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_36
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0, p1, p3}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    .line 84
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 2

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->K:Ljava/lang/Integer;

    return-void
.end method

.method public final b(Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->onError(Lio/bidmachine/iab/IabError;)V

    .line 8
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_e

    .line 9
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidViewListener;->onLoadFailed(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    :cond_e
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 17
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_10

    .line 18
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    .line 21
    :cond_10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    invoke-interface {v0, p0, p1, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onCalendarEvent(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public final c(Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->onError(Lio/bidmachine/iab/IabError;)V

    .line 7
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_e

    .line 8
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidViewListener;->onShowFailed(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    :cond_e
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    invoke-interface {v0, p0, p1, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onOpenUrl(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public canBeClosed()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->getOnScreenTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_c

    return v1

    .line 4
    :cond_c
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isReceivedJsError()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 7
    :cond_15
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isUseCustomClose()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    return v0

    .line 10
    :cond_23
    invoke-super {p0}, Lio/bidmachine/iab/view/CloseableLayout;->canBeClosed()Z

    move-result v0

    return v0
.end method

.method public clickHandled()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public clickVerified()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    :cond_7
    return-void
.end method

.method public final d()V
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 8
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/app/Activity;)V

    .line 11
    :cond_11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->closeExpanded()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_10

    .line 19
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    .line 22
    :cond_10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    invoke-interface {v0, p0, p1, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onStorePicture(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    .line 2
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->m:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/app/Activity;)V

    .line 8
    :cond_e
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->destroy()V

    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->H:Lio/bidmachine/iab/utils/IabTimerHelper;

    if-eqz v0, :cond_24

    .line 14
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabTimerHelper;->detach()V

    :cond_24
    return-void
.end method

.method public final e()V
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->closeResized()V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->load(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isOpenNotified()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->w:Z

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->g()V

    return-void

    .line 6
    :cond_10
    new-instance v0, Lio/bidmachine/iab/mraid/MraidView$c;

    invoke-direct {v0, p0}, Lio/bidmachine/iab/mraid/MraidView$c;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->C:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-static {v0, v1}, Lio/bidmachine/iab/utils/Assets;->resolveDefCloseStyle(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    new-instance v2, Lio/bidmachine/iab/utils/ClickAreaFactory;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/iab/utils/ClickAreaFactory;-><init>(II)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/mraid/MraidAdView;->handleRedirect(Lio/bidmachine/iab/utils/ClickAreaFactory;)V

    return-void
.end method

.method public h()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isInterstitial()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onClose(Lio/bidmachine/iab/mraid/MraidView;)V

    :cond_7
    return-void
.end method

.method public final k()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onExpand(Lio/bidmachine/iab/mraid/MraidView;)V

    :cond_7
    return-void
.end method

.method public final l()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_11

    .line 5
    :cond_a
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_11

    .line 6
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onLoaded(Lio/bidmachine/iab/mraid/MraidView;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "htmlData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 2
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/MraidAdMeasurer;->prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_a
    sget-object v0, Lio/bidmachine/iab/mraid/MraidView$d;->a:[I

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    return-void

    .line 13
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->l()V

    .line 14
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->e(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_25
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->n:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->l()V

    return-void

    .line 17
    :cond_2b
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdShown()V

    .line 5
    :cond_7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_e

    .line 6
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidViewListener;->onShown(Lio/bidmachine/iab/mraid/MraidView;)V

    :cond_e
    return-void
.end method

.method public final n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->B:Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;)V

    .line 2
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidView;->r:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->J:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(I)V

    return-void
.end method

.method public onCloseClick()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->f()V

    return-void
.end method

.method public onCountDownFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isOpenNotified()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->x:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lio/bidmachine/iab/mraid/MraidView;->t:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->g()V

    :cond_16
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->J:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(I)V

    return-void
.end method

.method public onViewabilityChanged(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isViewable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->onViewabilityChanged(Z)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/bidmachine/iab/view/CloseableLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(I)V

    return-void
.end method

.method public peekActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public peekContext()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public setLastInteractedActivity(Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->m:Ljava/lang/ref/WeakReference;

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

.method public setLoadingVisible(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    if-eqz p1, :cond_23

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    if-nez p1, :cond_17

    .line 2
    new-instance p1, Lio/bidmachine/iab/utils/IabLoadingWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/bidmachine/iab/utils/IabLoadingWrapper;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->E:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {p1, v0, p0, v1}, Lio/bidmachine/iab/utils/IabElementWrapper;->attach(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 5
    :cond_17
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementWrapper;->bringToFront()V

    return-void

    .line 7
    :cond_23
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lio/bidmachine/iab/utils/IabLoadingWrapper;

    if-eqz p1, :cond_2c

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidView$d;->a:[I

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_55

    .line 15
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->i()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 17
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isUseCustomClose()Z

    move-result v0

    invoke-virtual {p0, p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    goto :goto_55

    .line 20
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->n()V

    goto :goto_55

    .line 22
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 23
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->n()V

    .line 25
    :cond_3d
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->n:Ljava/lang/String;

    goto :goto_55

    .line 27
    :cond_46
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isUseCustomClose()Z

    move-result v0

    invoke-virtual {p0, p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    .line 50
    :cond_55
    :goto_55
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->show()V

    .line 51
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->setLastInteractedActivity(Landroid/app/Activity;)V

    .line 52
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->getLastOrientationProperties()Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidView.Builder (io.bidmachine.iab.mraid.MraidView$Builder)
.class public Lio/bidmachine/iab/mraid/MraidView$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public b:Lio/bidmachine/iab/CacheControl;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Lio/bidmachine/iab/utils/IabElementStyle;

.field public h:Lio/bidmachine/iab/utils/IabElementStyle;

.field public i:Lio/bidmachine/iab/utils/IabElementStyle;

.field public j:Lio/bidmachine/iab/utils/IabElementStyle;

.field public k:F

.field public l:F

.field public listener:Lio/bidmachine/iab/mraid/MraidViewListener;

.field public m:F

.field public mraidAdMeasurer:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView$Builder;-><init>(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidPlacementType;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->f:[Ljava/lang/String;

    const/high16 v0, 0x40400000    # 3.0f

    .line 14
    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->k:F

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->l:F

    .line 16
    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->m:F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->r:Z

    .line 31
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 32
    sget-object p1, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->b:Lio/bidmachine/iab/CacheControl;

    .line 33
    const-string p1, "https://localhost"

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/CacheControl;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->b:Lio/bidmachine/iab/CacheControl;

    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/iab/mraid/MraidView$Builder;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->k:F

    return p0
.end method

.method public static synthetic c(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->s:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/iab/mraid/MraidView$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lio/bidmachine/iab/mraid/MraidView$Builder;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lio/bidmachine/iab/mraid/MraidView$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lio/bidmachine/iab/mraid/MraidView$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/mraid/MraidPlacementType;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    return-object p0
.end method

.method public static synthetic l(Lio/bidmachine/iab/mraid/MraidView$Builder;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->l:F

    return p0
.end method

.method public static synthetic m(Lio/bidmachine/iab/mraid/MraidView$Builder;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->m:F

    return p0
.end method

.method public static synthetic n(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->n:Z

    return p0
.end method

.method public static synthetic o(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->o:Z

    return p0
.end method

.method public static synthetic p(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->p:Z

    return p0
.end method

.method public static synthetic q(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->q:Z

    return p0
.end method

.method public static synthetic r(Lio/bidmachine/iab/mraid/MraidView$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->r:Z

    return p0
.end method

.method public static synthetic s(Lio/bidmachine/iab/mraid/MraidView$Builder;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidView;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$Builder;Lio/bidmachine/iab/mraid/MraidView$a;)V

    return-object v0
.end method

.method public forceUseNativeCloseButton(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUseNativeCloseButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->o:Z

    return-object p0
.end method

.method public setAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mraidAdMeasurer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->mraidAdMeasurer:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    return-object p0
.end method

.method public setAutoViewabilityCheck(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAutoViewabilityCheck"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->r:Z

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheControl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->b:Lio/bidmachine/iab/CacheControl;

    return-object p0
.end method

.method public setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeStyle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public setCloseTimeSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeTimeSec"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->l:F

    return-object p0
.end method

.method public setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countDownStyle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->h:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public setDurationSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "durationSec"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->m:F

    return-object p0
.end method

.method public setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engagedClickParams"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->s:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    return-object p0
.end method

.method public setIsTag(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTag"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->n:Z

    return-object p0
.end method

.method public setListener(Lio/bidmachine/iab/mraid/MraidViewListener;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->listener:Lio/bidmachine/iab/mraid/MraidViewListener;

    return-object p0
.end method

.method public setLoadingStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingStyle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->i:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderTimeoutSec"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->k:F

    return-object p0
.end method

.method public setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productLink"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setProgressStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressStyle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->j:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public setR1(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r1"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->p:Z

    return-object p0
.end method

.method public setR2(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r2"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView$Builder;->q:Z

    return-object p0
.end method

###### Class io.bidmachine.iab.mraid.MraidView.a (io.bidmachine.iab.mraid.MraidView$a)
.class public Lio/bidmachine/iab/mraid/MraidView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/IabTimerHelper$TimerHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/utils/IabProgressWrapper;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/utils/IabProgressWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementWrapper;->detach()V

    .line 4
    :cond_11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->isOpenNotified()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->c(Lio/bidmachine/iab/mraid/MraidView;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->d(Lio/bidmachine/iab/mraid/MraidView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->e(Lio/bidmachine/iab/mraid/MraidView;)V

    :cond_35
    return-void
.end method

.method public onTimerTick(FJJ)V
    .registers 8

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p4, v0

    long-to-int p4, p4

    .line 2
    div-long/2addr p2, v0

    long-to-int p2, p2

    .line 3
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p3}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/utils/IabProgressWrapper;

    move-result-object p3

    if-eqz p3, :cond_17

    .line 4
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidView$a;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p3}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/utils/IabProgressWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lio/bidmachine/iab/utils/IabProgressWrapper;->changePercentage(FII)V

    :cond_17
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidView.b (io.bidmachine.iab.mraid.MraidView$b)
.class public Lio/bidmachine/iab/mraid/MraidView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/view/CloseableLayout$OnCloseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    const-string v1, "Close button clicked"

    invoke-static {v1}, Lio/bidmachine/iab/IabError;->placeholder(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->f(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void
.end method

.method public onCountDownFinish()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidView.c (io.bidmachine.iab.mraid.MraidView$c)
.class public Lio/bidmachine/iab/mraid/MraidView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->getMraidViewState()Lio/bidmachine/iab/mraid/MraidViewState;

    move-result-object v0

    .line 2
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->RESIZED:Lio/bidmachine/iab/mraid/MraidViewState;

    if-ne v0, v1, :cond_14

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->g(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void

    .line 5
    :cond_14
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    if-ne v0, v1, :cond_1e

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->h(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void

    .line 9
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->h()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->close()V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->f(Lio/bidmachine/iab/mraid/MraidView;)V

    :cond_34
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidView.d (io.bidmachine.iab.mraid.MraidView$d)
.class public abstract synthetic Lio/bidmachine/iab/mraid/MraidView$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/iab/CacheControl;->values()[Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/iab/mraid/MraidView$d;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/iab/mraid/MraidView$d;->a:[I

    sget-object v1, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/iab/mraid/MraidView$d;->a:[I

    sget-object v1, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidView.e (io.bidmachine.iab.mraid.MraidView$e)
.class public Lio/bidmachine/iab/mraid/MraidView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidAdView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/mraid/MraidView$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView$e;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public ignoreExpandUrl(Lio/bidmachine/iab/mraid/MraidAdView;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public onCalendarEventIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->c(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public onChangeOrientationIntention(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    return-void
.end method

.method public onCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidView;->f()V

    return-void
.end method

.method public onExpand(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->handleExpanded()V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidView;->k(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void
.end method

.method public onExpandIntention(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z

    move-result p1

    return p1
.end method

.method public onExpandLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onExpandLoadStart(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMraidAdViewExpired(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->c(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onMraidAdViewLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onMraidAdViewPageCommitVisible(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMraidAdViewPageLoaded(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/webkit/WebView;Z)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public onMraidAdViewShowFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onMraidAdViewShown(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidView;->i(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void
.end method

.method public onMraidLoadedIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidView;->j(Lio/bidmachine/iab/mraid/MraidView;)V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public onOpenUrlIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayVideoIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public onStorePictureIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->d(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public onSyncCustomCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidView;->l(Lio/bidmachine/iab/mraid/MraidView;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_19

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidView;->m(Lio/bidmachine/iab/mraid/MraidView;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidView;->a(Lio/bidmachine/iab/mraid/MraidView;Z)Z

    .line 7
    :cond_19
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$e;->a:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidView;->b(Lio/bidmachine/iab/mraid/MraidView;Z)V

    return-void
.end method
