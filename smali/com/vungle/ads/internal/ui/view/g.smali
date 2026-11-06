###### Class com.vungle.ads.internal.ui.view.g (com.vungle.ads.internal.ui.view.g)
.class public final Lcom/vungle/ads/internal/ui/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/vungle/ads/internal/ui/view/j;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/view/j;)V
    .registers 3

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/g;->a:Lcom/vungle/ads/internal/ui/view/j;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/g;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/g;->run()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/g;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/j;->a(Lcom/vungle/ads/internal/ui/view/j;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_139

    .line 3
    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vungle/ads/internal/ui/view/g$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/view/g$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/ui/view/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5
    :cond_2a
    :try_start_2a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_35

    goto :goto_3f

    :catchall_35
    move-exception v1

    :try_start_36
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_98

    .line 6
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_48

    goto :goto_52

    :catchall_48
    move-exception v1

    :try_start_49
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_98

    :goto_52
    const/4 v1, 0x0

    .line 8
    :try_start_53
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5c

    goto :goto_66

    :catchall_5c
    move-exception v2

    :try_start_5d
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_98

    .line 9
    :goto_66
    :try_start_66
    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_74

    goto :goto_7e

    :catchall_74
    move-exception v2

    :try_start_75
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_7e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_98

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_9b

    .line 11
    :try_start_84
    invoke-static {v0, v1}, Landroidx/webkit/internal/ApiHelperForQ$$ExternalSyntheticApiModelOutline2;->m(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcessClient;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_8d

    goto :goto_9b

    :catchall_8d
    move-exception v2

    :try_start_8e
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_98

    goto :goto_9b

    :catchall_98
    move-exception v0

    goto/16 :goto_121

    .line 14
    :cond_9b
    :goto_9b
    :try_start_9b
    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_a6

    goto :goto_b0

    :catchall_a6
    move-exception v2

    :try_start_a7
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_98

    .line 15
    :goto_b0
    :try_start_b0
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_b9

    goto :goto_c3

    :catchall_b9
    move-exception v2

    :try_start_ba
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_98

    .line 16
    :goto_c3
    :try_start_c3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_cc

    goto :goto_d6

    :catchall_cc
    move-exception v2

    :try_start_cd
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_98

    .line 17
    :goto_d6
    :try_start_d6
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/g;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_e1

    goto :goto_eb

    :catchall_e1
    move-exception v2

    :try_start_e2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_98

    .line 18
    :goto_eb
    :try_start_eb
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/g;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/ui/view/j;->getEventId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fb

    invoke-static {v2}, Lcom/vungle/ads/internal/presenter/f0;->a(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_fb

    :catchall_f9
    move-exception v1

    goto :goto_ff

    :cond_fb
    :goto_fb
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fe
    .catchall {:try_start_eb .. :try_end_fe} :catchall_f9

    goto :goto_108

    :goto_ff
    :try_start_ff
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_108
    .catchall {:try_start_ff .. :try_end_108} :catchall_98

    .line 19
    :goto_108
    :try_start_108
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_110
    .catchall {:try_start_108 .. :try_end_110} :catchall_111

    goto :goto_11b

    :catchall_111
    move-exception v0

    :try_start_112
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_11b
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/g;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/j;->b(Lcom/vungle/ads/internal/ui/view/j;)V
    :try_end_120
    .catchall {:try_start_112 .. :try_end_120} :catchall_98

    goto :goto_139

    .line 23
    :goto_121
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 24
    const-string v1, "Destroy webview: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDAdWidget"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_139
    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.g$$ExternalSyntheticLambda0 (com.vungle.ads.internal.ui.view.g$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/g;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/g;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/g$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/g$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/g;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/view/g;->a(Lcom/vungle/ads/internal/ui/view/g;)V

    return-void
.end method
