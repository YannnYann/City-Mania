###### Class com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener (com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
