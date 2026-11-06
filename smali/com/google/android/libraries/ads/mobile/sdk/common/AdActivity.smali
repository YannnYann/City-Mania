###### Class com.google.android.libraries.ads.mobile.sdk.common.AdActivity (com.google.android.libraries.ads.mobile.sdk.common.AdActivity)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/h0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lads_mobile_sdk/h0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_f
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget-object p1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object p1, Lads_mobile_sdk/zz0;->b:Lads_mobile_sdk/js1;

    invoke-virtual {p1}, Lads_mobile_sdk/js1;->b()Z

    move-result p1

    if-nez p1, :cond_14

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_32

    const-string v0, "ad_activity_delegate_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_32

    const-string v0, "ad_activity_delegate"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_33

    :cond_32
    move-object p1, v1

    :goto_33
    if-nez p1, :cond_58

    .line 22
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p1

    .line 23
    check-cast p1, Lads_mobile_sdk/vf0;

    .line 24
    iget-object p1, p1, Lads_mobile_sdk/vf0;->F:Lads_mobile_sdk/ol0;

    .line 25
    invoke-virtual {p1}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ur3;

    .line 26
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "AdActivityMissingDelegateKey"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const-string p1, "Could not retrieve AdActivityDelegate key"

    .line 32
    invoke-static {p1, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 38
    :cond_58
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 39
    iget-object v0, v0, Lads_mobile_sdk/vf0;->S:Lads_mobile_sdk/dw2;

    .line 40
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/k0;

    .line 41
    iget-object v0, v0, Lads_mobile_sdk/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/i0;

    const/4 v0, 0x1

    if-eqz p1, :cond_78

    .line 43
    iget-object v2, p1, Lads_mobile_sdk/i0;->b:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_78

    .line 44
    invoke-static {v2, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_78
    if-eqz p1, :cond_7d

    .line 45
    iget-object p1, p1, Lads_mobile_sdk/i0;->a:Lads_mobile_sdk/h0;

    goto :goto_7e

    :cond_7d
    move-object p1, v1

    :goto_7e
    if-nez p1, :cond_a3

    .line 46
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p1

    .line 47
    check-cast p1, Lads_mobile_sdk/vf0;

    .line 48
    iget-object p1, p1, Lads_mobile_sdk/vf0;->F:Lads_mobile_sdk/ol0;

    .line 49
    invoke-virtual {p1}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ur3;

    .line 50
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "AdActivityMissingDelegate"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    const-string p1, "No AdActivityDelegate associated with key"

    .line 52
    invoke-static {p1, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 56
    :cond_a3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 64
    :try_start_a8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v2, "getDecorView(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b5} :catch_b9

    .line 82
    invoke-interface {p1, p0}, Lads_mobile_sdk/h0;->a(Landroidx/activity/ComponentActivity;)V

    return-void

    :catch_b9
    move-exception v0

    .line 83
    sget-object v2, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/vf0;

    .line 84
    iget-object v2, v2, Lads_mobile_sdk/vf0;->F:Lads_mobile_sdk/ol0;

    .line 85
    invoke-virtual {v2}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ur3;

    .line 86
    check-cast v2, Lads_mobile_sdk/as3;

    const-string v3, "AdActivityDecorViewWorkaround"

    invoke-virtual {v2, v3, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const-string v2, "Failed to get DecorView"

    invoke-static {v2, v0}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 91
    iget-object v0, v0, Lads_mobile_sdk/vf0;->u:Lads_mobile_sdk/ol0;

    .line 92
    invoke-virtual {v0}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 93
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/a;

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/a;-><init>(Lads_mobile_sdk/h0;Lkotlin/coroutines/Continuation;)V

    .line 94
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 95
    const-string p1, "<this>"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v0, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lads_mobile_sdk/h0;->onDestroy()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lads_mobile_sdk/h0;->onPause()V

    .line 2
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onRestart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lads_mobile_sdk/h0;->c()V

    :cond_a
    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lads_mobile_sdk/h0;->onResume()V

    :cond_a
    return-void
.end method

.method public final onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lads_mobile_sdk/h0;->a()V

    :cond_a
    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lads_mobile_sdk/h0;->onStop()V

    .line 2
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lads_mobile_sdk/h0;->b()V

    :cond_a
    return-void
.end method

.method public final setContentView(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lads_mobile_sdk/h0;->e()V

    :cond_a
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 2

    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lads_mobile_sdk/h0;->e()V

    :cond_a
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;->a:Lads_mobile_sdk/h0;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lads_mobile_sdk/h0;->e()V

    :cond_a
    return-void
.end method
