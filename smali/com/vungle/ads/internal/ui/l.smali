###### Class com.vungle.ads.internal.ui.l (com.vungle.ads.internal.ui.l)
.class public abstract Lcom/vungle/ads/internal/ui/l;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static volatile i:Lcom/vungle/ads/internal/u0;

.field public static volatile j:Lcom/vungle/ads/internal/presenter/a;


# instance fields
.field public a:Lcom/vungle/ads/internal/presenter/r;

.field public b:Lcom/vungle/ads/internal/model/s3;

.field public c:Lcom/vungle/ads/internal/u0;

.field public d:Ljava/lang/Object;

.field public final e:Lcom/vungle/ads/internal/util/x;

.field public f:Lcom/vungle/ads/internal/util/t;

.field public final g:Lcom/vungle/ads/internal/ui/b;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/ui/a;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/ui/a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/util/x;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/x;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/l;->e:Lcom/vungle/ads/internal/util/x;

    .line 6
    new-instance v0, Lcom/vungle/ads/internal/ui/b;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/b;-><init>(Lcom/vungle/ads/internal/ui/l;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/l;->g:Lcom/vungle/ads/internal/ui/b;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/l;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_34

    .line 6
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p0

    .line 7
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    or-int/2addr p0, v0

    .line 8
    invoke-virtual {p2, p0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    const-string v0, "insets.getInsets(\n      \u2026t()\n                    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    .line 14
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    .line 15
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    .line 16
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 251
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_34
    return-object p2
.end method

.method public static final a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/j;
    .registers 1

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/signals/j;

    return-object p0
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/ui/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final b(Lcom/vungle/ads/internal/ui/l;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->d()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 252
    new-instance v0, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/ui/l;)V

    .line 253
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/l;->d:Ljava/lang/Object;

    .line 254
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Lcom/vungle/ads/internal/ui/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/vungle/ads/internal/ui/c;-><init>(IILandroid/content/Intent;)V

    const-string p3, "AdActivity"

    invoke-static {p3, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_46

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz p1, :cond_46

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResultCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance p3, Lcom/vungle/ads/internal/j2;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INLINE_INSTALL_STATUS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p3, v0}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v0, 0x3

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 9
    iput-object v0, p3, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 10
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object p1

    invoke-virtual {v0, p3, p1, p2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/r;->d()V

    :cond_7
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string v0, "AdActivity"

    const-string v1, "newConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_19

    .line 5
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "landscape"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_17
    move-exception p1

    goto :goto_2b

    :cond_19
    const/4 v1, 0x1

    if-ne p1, v1, :cond_23

    .line 7
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "portrait"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/r;->g()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_17

    return-void

    .line 11
    :goto_2b
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 12
    const-string v1, "onConfigurationChanged: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 9
    sget-object p1, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 10
    sget-object v1, Lcom/vungle/ads/internal/ui/l;->j:Lcom/vungle/ads/internal/presenter/a;

    const-string v0, "intent"

    if-nez p1, :cond_55

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/ui/a;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_27

    const-string p1, ""

    :cond_27
    if-eqz v1, :cond_51

    .line 14
    new-instance v0, Lcom/vungle/ads/AdNotLoadedCantPlay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not play fullscreen ad. placement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pendingData is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vungle/ads/AdNotLoadedCantPlay;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v0, p1}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 20
    :cond_51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 24
    :cond_55
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/l;->c:Lcom/vungle/ads/internal/u0;

    .line 26
    invoke-virtual {p1}, Lcom/vungle/ads/internal/u0;->a()Lcom/vungle/ads/internal/model/i0;

    move-result-object v4

    .line 27
    invoke-virtual {p1}, Lcom/vungle/ads/internal/u0;->b()Lcom/vungle/ads/internal/model/j3;

    move-result-object v5

    .line 28
    invoke-virtual {p1}, Lcom/vungle/ads/internal/u0;->c()Lcom/vungle/ads/internal/presenter/z;

    move-result-object p1

    .line 30
    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/i0;->q()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    .line 34
    :try_start_69
    new-instance v3, Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/vungle/ads/internal/ui/view/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/InstantiationException; {:try_start_69 .. :try_end_72} :catch_222

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v7, "ad_invisible_logged"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_89

    const-wide/16 v6, 0x3

    goto :goto_8b

    :cond_89
    const-wide/16 v6, 0x2

    .line 50
    :goto_8b
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 51
    new-instance v8, Lcom/vungle/ads/internal/j2;

    sget-object v9, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v8, v9}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vungle/ads/internal/j2;->a(Ljava/lang/Long;)V

    .line 52
    iget-object v9, p0, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    const/4 v10, 0x4

    .line 53
    invoke-static {v2, v8, v9, v10}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 57
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Log metric AD_VISIBILITY: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AdActivity"

    invoke-static {v6, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/vungle/ads/internal/ui/d;

    invoke-direct {v6, p0}, Lcom/vungle/ads/internal/ui/d;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v6}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vungle/ads/internal/ui/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_d8

    new-instance v7, Lcom/vungle/ads/internal/model/s3;

    invoke-direct {v7, v0}, Lcom/vungle/ads/internal/model/s3;-><init>(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d8
    move-object v7, v10

    :goto_d9
    iput-object v7, p0, Lcom/vungle/ads/internal/ui/l;->b:Lcom/vungle/ads/internal/model/s3;

    if-eqz v7, :cond_e6

    .line 60
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/signals/j;

    .line 61
    invoke-virtual {v0, v7}, Lcom/vungle/ads/internal/signals/j;->a(Lcom/vungle/ads/internal/model/s3;)V

    .line 64
    :cond_e6
    new-instance v0, Lcom/vungle/ads/internal/ui/h;

    invoke-direct {v0, p0, v6}, Lcom/vungle/ads/internal/ui/h;-><init>(Lcom/vungle/ads/internal/ui/l;Lkotlin/Lazy;)V

    invoke-virtual {v3, v0}, Lcom/vungle/ads/internal/ui/view/j;->setCloseDelegate(Lcom/vungle/ads/internal/ui/view/f;)V

    .line 78
    new-instance v0, Lcom/vungle/ads/internal/ui/i;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/i;-><init>(Lcom/vungle/ads/internal/ui/l;)V

    invoke-virtual {v3, v0}, Lcom/vungle/ads/internal/ui/view/j;->setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/h;)V

    .line 85
    new-instance v0, Lcom/vungle/ads/internal/ui/j;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/j;-><init>(Lcom/vungle/ads/internal/ui/l;)V

    invoke-virtual {v3, v0}, Lcom/vungle/ads/internal/ui/view/j;->setOrientationDelegate(Lcom/vungle/ads/internal/ui/view/i;)V

    .line 86
    new-instance v0, Lcom/vungle/ads/internal/ui/e;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/e;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 87
    new-instance v6, Lcom/vungle/ads/internal/ui/f;

    invoke-direct {v6, p0}, Lcom/vungle/ads/internal/ui/f;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v6}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    .line 88
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/ads/internal/executor/a;

    .line 89
    check-cast v7, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v7}, Lcom/vungle/ads/internal/executor/d;->f()Lcom/vungle/ads/internal/executor/j;

    move-result-object v7

    .line 90
    sget-object v8, Lcom/vungle/ads/internal/presenter/f0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/ads/internal/platform/f;

    .line 92
    invoke-static {v4, v5, v7, v8}, Lcom/vungle/ads/internal/presenter/f0;->a(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/platform/f;)Lcom/vungle/ads/internal/ui/x;

    move-result-object v7

    .line 93
    new-instance v8, Lcom/vungle/ads/internal/ui/g;

    invoke-direct {v8, p0}, Lcom/vungle/ads/internal/ui/g;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v8}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/omsdk/d;

    .line 95
    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/i0;->z()Z

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vungle/ads/internal/omsdk/d;->a(Z)Lcom/vungle/ads/internal/omsdk/e;

    move-result-object v8

    .line 96
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 97
    check-cast v0, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/executor/d;->d()Lcom/vungle/ads/internal/executor/j;

    move-result-object v0

    .line 100
    invoke-virtual {v7, v8}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/omsdk/e;)V

    .line 102
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/l;->e:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v2, v7}, Lcom/vungle/ads/internal/util/x;->a(Lcom/vungle/ads/internal/util/w;)V

    .line 105
    new-instance v2, Lcom/vungle/ads/internal/presenter/r;

    .line 106
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/vungle/ads/internal/platform/f;

    move-object v6, v7

    move-object v7, v0

    .line 107
    invoke-direct/range {v2 .. v9}, Lcom/vungle/ads/internal/presenter/r;-><init>(Lcom/vungle/ads/internal/ui/view/j;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/ui/x;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/omsdk/e;Lcom/vungle/ads/internal/platform/f;)V

    .line 108
    invoke-virtual {v2, v1}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/presenter/a;)V

    .line 109
    invoke-virtual {v2, p1}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/presenter/z;)V

    .line 110
    new-instance p1, Lcom/vungle/ads/internal/ui/k;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/k;-><init>(Lcom/vungle/ads/internal/ui/l;)V

    invoke-virtual {v2, p1}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/ui/k;)V

    .line 127
    invoke-virtual {v2}, Lcom/vungle/ads/internal/presenter/r;->h()V

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :try_start_17c
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_190
    .catchall {:try_start_17c .. :try_end_190} :catchall_191

    goto :goto_19c

    :catchall_191
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_19c
    new-instance p1, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda2;-><init>(Lcom/vungle/ads/internal/ui/l;)V

    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    const-string v0, "getInsetsController(window, window.decorView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 140
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 141
    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/i0;->j()Lcom/vungle/ads/AdConfig;

    move-result-object p1

    if-eqz p1, :cond_1f3

    invoke-virtual {p1}, Lcom/vungle/ads/AdConfig;->getWatermark$vungle_ads_release()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f3

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1e6

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e6

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/FrameLayout;

    :cond_1e6
    if-eqz v10, :cond_1f3

    .line 144
    new-instance v0, Lcom/vungle/ads/internal/ui/y;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/ui/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 151
    :cond_1f3
    iput-object v2, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    .line 152
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1fe

    .line 153
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/l;->a()V

    .line 155
    :cond_1fe
    sget-object p1, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    iget-object p1, p0, Lcom/vungle/ads/internal/ui/l;->g:Lcom/vungle/ads/internal/ui/b;

    invoke-static {p1}, Lcom/vungle/ads/internal/util/a;->a(Lcom/vungle/ads/internal/util/b;)V

    .line 157
    :try_start_205
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->e:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_215
    .catchall {:try_start_205 .. :try_end_215} :catchall_216

    goto :goto_221

    :catchall_216
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_221
    return-void

    :catch_222
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_240

    .line 160
    new-instance v0, Lcom/vungle/ads/AdCantPlayWithoutWebView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/AdCantPlayWithoutWebView;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    .line 162
    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v1, p1, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 168
    :cond_240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_20

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->d:Ljava/lang/Object;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v2

    :goto_15
    if-eqz v0, :cond_1e

    .line 3
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    .line 5
    :cond_1e
    iput-object v2, p0, Lcom/vungle/ads/internal/ui/l;->d:Ljava/lang/Object;

    .line 6
    :cond_20
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_2d

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/presenter/r;->a(I)V

    .line 12
    :cond_2d
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_34

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/ui/k;)V

    .line 14
    :cond_34
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->g:Lcom/vungle/ads/internal/ui/b;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/a;->b(Lcom/vungle/ads/internal/util/b;)V

    .line 15
    :try_start_3b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->e:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_48

    goto :goto_52

    :catchall_48
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_52
    iput-object v2, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    .line 25
    sget-object v0, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/l;->c:Lcom/vungle/ads/internal/u0;

    if-ne v0, v1, :cond_5e

    .line 26
    sput-object v2, Lcom/vungle/ads/internal/ui/l;->j:Lcom/vungle/ads/internal/presenter/a;

    .line 27
    sput-object v2, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 30
    :cond_5e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .registers 10

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "getIntent()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/a;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/vungle/ads/internal/ui/a;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vungle/ads/internal/ui/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/vungle/ads/internal/ui/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_53

    if-eqz v0, :cond_53

    .line 6
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    :cond_53
    if-eqz v1, :cond_d0

    if-eqz p1, :cond_d0

    .line 7
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d0

    .line 9
    :cond_5d
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to play another placement "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while playing "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string v1, "AdActivity"

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p1, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 14
    sget-object v4, Lcom/vungle/ads/internal/ui/l;->j:Lcom/vungle/ads/internal/presenter/a;

    .line 16
    new-instance v5, Lcom/vungle/ads/ConcurrentPlaybackUnsupported;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to show "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already showing"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/vungle/ads/ConcurrentPlaybackUnsupported;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {v5, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v2

    if-eqz v4, :cond_b3

    .line 18
    invoke-virtual {v4, v2, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 22
    :cond_b3
    sget-object v0, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    if-ne v0, p1, :cond_bb

    .line 23
    sput-object v3, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 24
    sput-object v3, Lcom/vungle/ads/internal/ui/l;->j:Lcom/vungle/ads/internal/presenter/a;

    .line 25
    :cond_bb
    const-string p1, "onConcurrentPlaybackError: "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 26
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_d0
    sput-object v3, Lcom/vungle/ads/internal/ui/l;->i:Lcom/vungle/ads/internal/u0;

    .line 28
    sput-object v3, Lcom/vungle/ads/internal/ui/l;->j:Lcom/vungle/ads/internal/presenter/a;

    return-void
.end method

.method public final onPause()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_1b

    .line 3
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "MRAIDPresenter"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, v0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/j;->b()V

    .line 5
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    .line 6
    :cond_1b
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_3c

    .line 8
    iget-object v1, v0, Lcom/vungle/ads/internal/presenter/r;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 9
    iget-object v1, v0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v1, :cond_3c

    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 10
    iget-object v0, v0, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 145
    const-string v2, "end"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public final onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_1b

    .line 3
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "MRAIDPresenter"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, v0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/j;->d()V

    .line 5
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    :cond_1b
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_25

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    const-string v0, "getInsetsController(window, window.decorView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 7
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_25
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.l$$ExternalSyntheticLambda1 (com.vungle.ads.internal.ui.l$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/l;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/l;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/l;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/l;

    invoke-static {v0}, Lcom/vungle/ads/internal/ui/l;->b(Lcom/vungle/ads/internal/ui/l;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.l$$ExternalSyntheticLambda2 (com.vungle.ads.internal.ui.l$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/l;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/l;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/ui/l;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/l$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/ui/l;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/ui/l;->a(Lcom/vungle/ads/internal/ui/l;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
