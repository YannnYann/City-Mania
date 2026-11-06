###### Class ads_mobile_sdk.h0 (ads_mobile_sdk.h0)
.class public interface abstract Lads_mobile_sdk/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract a(Landroidx/activity/ComponentActivity;)V
.end method

.method public b()V
    .registers 1

    .line 0
    return-void
.end method

.method public c()V
    .registers 1

    .line 0
    return-void
.end method

.method public e()V
    .registers 1

    .line 0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onDestroy()V
.end method

.method public onPause()V
    .registers 1

    .line 0
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 0
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 0
    return-void
.end method
