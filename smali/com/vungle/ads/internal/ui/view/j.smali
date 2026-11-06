###### Class com.vungle.ads.internal.ui.view.j (com.vungle.ads.internal.ui.view.j)
.class public final Lcom/vungle/ads/internal/ui/view/j;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/webkit/WebView;

.field public c:Lcom/vungle/ads/internal/ui/view/h;

.field public d:Lcom/vungle/ads/internal/ui/view/f;

.field public e:Lcom/vungle/ads/internal/ui/view/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/view/j;->a:Ljava/lang/String;

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-static {p1, p2}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-nez p1, :cond_1c

    goto :goto_1f

    .line 162
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :goto_1f
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-nez p1, :cond_24

    goto :goto_29

    :cond_24
    const-string p2, "VungleWebView"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    :goto_29
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/j;->a()V

    .line 166
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/j;->c()V

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/ui/view/j;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/j;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/j;->c:Lcom/vungle/ads/internal/ui/view/h;

    if-eqz p0, :cond_e

    invoke-interface {p0, p2}, Lcom/vungle/ads/internal/ui/view/h;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic b(Lcom/vungle/ads/internal/ui/view/j;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public static synthetic getCloseDelegate$vungle_ads_release$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getOnViewTouchListener$vungle_ads_release$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getOrientationDelegate$vungle_ads_release$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/vungle/ads/internal/ui/view/j$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/j$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/ui/view/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    return-void
.end method

.method public final a(J)V
    .registers 6

    .line 9
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_11

    :catchall_e
    move-exception v0

    goto :goto_1c

    :cond_10
    move-object v0, v2

    :goto_11
    if-eqz v0, :cond_18

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    :cond_18
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_e

    goto :goto_25

    :goto_1c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2e

    goto :goto_38

    :catchall_2e
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_38
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_47

    .line 22
    new-instance p1, Lcom/vungle/ads/internal/ui/view/g;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/view/g;-><init>(Lcom/vungle/ads/internal/ui/view/j;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/g;->run()V

    goto :goto_54

    .line 24
    :cond_47
    new-instance v0, Lcom/vungle/ads/internal/util/p;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/p;-><init>()V

    new-instance v1, Lcom/vungle/ads/internal/ui/view/g;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/g;-><init>(Lcom/vungle/ads/internal/ui/view/j;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/vungle/ads/internal/util/p;->a(Ljava/lang/Runnable;J)V

    :goto_54
    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/ui/x;Lcom/vungle/ads/internal/model/f0;)V
    .registers 4

    const-string v0, "vngWebViewClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    .line 5
    invoke-static {v0, p2}, Lcom/vungle/ads/internal/platform/g;->a(Landroid/webkit/WebView;Lcom/vungle/ads/internal/model/f0;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDAdWidget"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public final b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_7
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :goto_9
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_10
    return-void
.end method

.method public final getCloseDelegate$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->d:Lcom/vungle/ads/internal/ui/view/f;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnViewTouchListener$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->c:Lcom/vungle/ads/internal/ui/view/h;

    return-object v0
.end method

.method public final getOrientationDelegate$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/i;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->e:Lcom/vungle/ads/internal/ui/view/i;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    .line 3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    :cond_e
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 7
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1c
    return-void
.end method

.method public final setCloseDelegate(Lcom/vungle/ads/internal/ui/view/f;)V
    .registers 3

    const-string v0, "closeDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->d:Lcom/vungle/ads/internal/ui/view/f;

    return-void
.end method

.method public final setCloseDelegate$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->d:Lcom/vungle/ads/internal/ui/view/f;

    return-void
.end method

.method public final setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->c:Lcom/vungle/ads/internal/ui/view/h;

    return-void
.end method

.method public final setOnViewTouchListener$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->c:Lcom/vungle/ads/internal/ui/view/h;

    return-void
.end method

.method public final setOrientation(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j;->e:Lcom/vungle/ads/internal/ui/view/i;

    if-eqz v0, :cond_b

    check-cast v0, Lcom/vungle/ads/internal/ui/j;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/ui/j;->a:Lcom/vungle/ads/internal/ui/l;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/l;->setRequestedOrientation(I)V

    :cond_b
    return-void
.end method

.method public final setOrientationDelegate(Lcom/vungle/ads/internal/ui/view/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->e:Lcom/vungle/ads/internal/ui/view/i;

    return-void
.end method

.method public final setOrientationDelegate$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j;->e:Lcom/vungle/ads/internal/ui/view/i;

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.j$$ExternalSyntheticLambda0 (com.vungle.ads.internal.ui.view.j$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/j$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/j;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/j;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/j$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/j;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/j$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/j;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/ui/view/j;->a(Lcom/vungle/ads/internal/ui/view/j;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
