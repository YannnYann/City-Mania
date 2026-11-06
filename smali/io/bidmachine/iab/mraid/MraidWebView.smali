###### Class io.bidmachine.iab.mraid.MraidWebView (io.bidmachine.iab.mraid.MraidWebView)
.class public final Lio/bidmachine/iab/mraid/MraidWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidWebView$Companion;,
        Lio/bidmachine/iab/mraid/MraidWebView$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/iab/mraid/MraidWebView$Companion;

.field public static final g:Lio/bidmachine/iab/mraid/MraidWebChromeClient;


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

.field public final b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

.field public c:Lio/bidmachine/iab/mraid/MraidWebViewListener;

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$6bhpuICiEUDjLO2FP4M0yUcj3jU(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->b(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SxB1rjQ-88f6J5F9GRavcNZYcio(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebView;->Companion:Lio/bidmachine/iab/mraid/MraidWebView$Companion;

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebChromeClient;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebChromeClient;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebView;->g:Lio/bidmachine/iab/mraid/MraidWebChromeClient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/WebViewGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    .line 4
    new-instance v0, Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->f:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    const/high16 p2, 0x2000000

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 27
    new-instance p2, Lio/bidmachine/iab/mraid/MraidWebView$a;

    invoke-direct {p2, p0}, Lio/bidmachine/iab/mraid/MraidWebView$a;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    sget-object p2, Lio/bidmachine/iab/mraid/MraidWebView;->g:Lio/bidmachine/iab/mraid/MraidWebChromeClient;

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 32
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 36
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static final a(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0()V

    return-void
.end method

.method public static final synthetic access$getWebViewGestureDetector$p(Lio/bidmachine/iab/mraid/MraidWebView;)Lio/bidmachine/iab/mraid/WebViewGestureDetector;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    return-object p0
.end method

.method public static final b(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0()V

    return-void
.end method

.method private final setAudioMuted(Z)V
    .registers 4

    .line 1
    const-string v0, "MraidWebView"

    :try_start_2
    const-string v1, "MUTE_AUDIO"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2
    invoke-static {p0, p1}, Landroidx/webkit/WebViewCompat;->setAudioMuted(Landroid/webkit/WebView;Z)V

    .line 3
    new-instance v1, Lio/bidmachine/iab/mraid/MraidWebView$e;

    invoke-direct {v1, p1}, Lio/bidmachine/iab/mraid/MraidWebView$e;-><init>(Z)V

    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_16
    move-exception p1

    goto :goto_1e

    .line 5
    :cond_18
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebView$f;->a:Lio/bidmachine/iab/mraid/MraidWebView$f;

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_16

    return-void

    .line 8
    :goto_1e
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 1

    .line 0
    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    .line 5
    :try_start_6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->reset()V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    goto :goto_16

    :catchall_10
    move-exception v0

    .line 9
    const-string v1, "MraidWebView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 12
    :goto_16
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public final doPause()V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidWebView$b;->a:Lio/bidmachine/iab/mraid/MraidWebView$b;

    const-string v1, "MraidWebView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 3
    :try_start_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    .line 5
    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_f
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebView;->setAudioMuted(Z)V

    return-void
.end method

.method public final doResume()V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidWebView$c;->a:Lio/bidmachine/iab/mraid/MraidWebView$c;

    const-string v1, "MraidWebView"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 3
    :try_start_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    .line 5
    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_f
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebView;->setAudioMuted(Z)V

    return-void
.end method

.method public final getClickPoint()Landroid/graphics/Point;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->getClickPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public final getClickTimeMs()J
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->getClickTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getController()Lio/bidmachine/iab/mraid/MraidWebViewController;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/mraid/MraidWebViewController;

    return-object v0
.end method

.method public final getMraidScreenMetrics()Lio/bidmachine/iab/mraid/MraidScreenMetrics;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    return-object v0
.end method

.method public final getMraidWebViewListener()Lio/bidmachine/iab/mraid/MraidWebViewListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->c:Lio/bidmachine/iab/mraid/MraidWebViewListener;

    return-object v0
.end method

.method public final isDestroyed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebView$d;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebView$d;-><init>(Landroid/content/res/Configuration;)V

    const-string p1, "MraidWebView"

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;)V

    invoke-static {p1}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPageFinished()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 3
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;)V

    invoke-static {p1}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onViewabilityChanged(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->doResume()V

    return-void

    .line 3
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->doPause()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->doResume()V

    return-void

    .line 8
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->doPause()V

    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 10

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final reset()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->doPause()V

    return-void
.end method

.method public final resetClicked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->resetClick()V

    return-void
.end method

.method public final setMraidWebViewListener(Lio/bidmachine/iab/mraid/MraidWebViewListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->c:Lio/bidmachine/iab/mraid/MraidWebViewListener;

    return-void
.end method

.method public final updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0()V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    if-eqz v0, :cond_a

    goto/16 :goto_88

    .line 5
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1e

    check-cast v1, Landroid/view/View;

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-nez v1, :cond_22

    move-object v1, p0

    .line 9
    :cond_22
    invoke-static {v0}, Lio/bidmachine/util/DeviceUtilsKt;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    .line 11
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 13
    invoke-virtual {v3, v4, v2}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->setScreenSize(II)Z

    move-result v2

    const/4 v3, 0x2

    .line 18
    new-array v3, v3, [I

    .line 19
    sget-object v4, Lio/bidmachine/iab/mraid/MraidUtils;->INSTANCE:Lio/bidmachine/iab/mraid/MraidUtils;

    invoke-virtual {v4, v0, v1}, Lio/bidmachine/iab/mraid/MraidUtils;->obtainRootView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 22
    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    const/4 v5, 0x0

    .line 23
    aget v6, v3, v5

    const/4 v7, 0x1

    .line 24
    aget v8, v3, v7

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 27
    invoke-virtual {v4, v6, v8, v9, v0}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)Z

    move-result v0

    or-int/2addr v0, v2

    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 35
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    .line 36
    aget v4, v3, v5

    .line 37
    aget v6, v3, v7

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 40
    invoke-virtual {v2, v4, v6, v8, v1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->setDefaultAdPosition(IIII)Z

    move-result v1

    or-int/2addr v0, v1

    .line 47
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    .line 49
    aget v2, v3, v5

    .line 50
    aget v3, v3, v7

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 53
    invoke-virtual {v1, v2, v3, v4, v5}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->setCurrentAdPosition(IIII)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_88

    .line 61
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->c:Lio/bidmachine/iab/mraid/MraidWebViewListener;

    if-eqz v0, :cond_88

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lio/bidmachine/iab/mraid/MraidScreenMetrics;

    invoke-interface {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewListener;->onMraidScreenMetricsChanged(Lio/bidmachine/iab/mraid/MraidScreenMetrics;)V

    :cond_88
    :goto_88
    return-void
.end method

.method public final wasClicked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/WebViewGestureDetector;->isClicked()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.Companion (io.bidmachine.iab.mraid.MraidWebView$Companion)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidWebView;
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
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.a (io.bidmachine.iab.mraid.MraidWebView$a)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidWebView;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$a;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView$a;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->access$getWebViewGestureDetector$p(Lio/bidmachine/iab/mraid/MraidWebView;)Lio/bidmachine/iab/mraid/WebViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    goto :goto_26

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_26

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 10
    :cond_26
    :goto_26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_37

    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$a;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebView;->getController()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object p1

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->onWebViewClicked()V

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.b (io.bidmachine.iab.mraid.MraidWebView$b)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebView;->doPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebView$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebView$b;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebView$b;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebView$b;->a:Lio/bidmachine/iab/mraid/MraidWebView$b;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "onPause"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.c (io.bidmachine.iab.mraid.MraidWebView$c)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebView;->doResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebView$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebView$c;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebView$c;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebView$c;->a:Lio/bidmachine/iab/mraid/MraidWebView$c;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "onResume"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.d (io.bidmachine.iab.mraid.MraidWebView$d)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$d;->a:Landroid/content/res/Configuration;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebView$d;->a:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->orientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.e (io.bidmachine.iab.mraid.MraidWebView$e)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebView;->setAudioMuted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$e;->a:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioMuted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidWebView$e;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView.f (io.bidmachine.iab.mraid.MraidWebView$f)
.class public final Lio/bidmachine/iab/mraid/MraidWebView$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebView;->setAudioMuted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebView$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebView$f;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebView$f;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebView$f;->a:Lio/bidmachine/iab/mraid/MraidWebView$f;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "setAudioMuted: not supported"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView$$ExternalSyntheticLambda0 (io.bidmachine.iab.mraid.MraidWebView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/iab/mraid/MraidWebView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/iab/mraid/MraidWebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->$r8$lambda$6bhpuICiEUDjLO2FP4M0yUcj3jU(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidWebView$$ExternalSyntheticLambda1 (io.bidmachine.iab.mraid.MraidWebView$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/iab/mraid/MraidWebView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/iab/mraid/MraidWebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->$r8$lambda$SxB1rjQ-88f6J5F9GRavcNZYcio(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return-void
.end method
