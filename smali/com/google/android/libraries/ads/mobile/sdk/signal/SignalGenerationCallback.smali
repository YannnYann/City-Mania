###### Class com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback (com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onFailure(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;)V
    .registers 3

    .line 0
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V
    .registers 3

    .line 0
    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
