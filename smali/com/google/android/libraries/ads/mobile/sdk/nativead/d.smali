###### Class com.google.android.libraries.ads.mobile.sdk.nativead.d (com.google.android.libraries.ads.mobile.sdk.nativead.d)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/tz2;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tz2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->a:Lads_mobile_sdk/tz2;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->a:Lads_mobile_sdk/tz2;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;-><init>(Lads_mobile_sdk/tz2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->a:Lads_mobile_sdk/tz2;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;-><init>(Lads_mobile_sdk/tz2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->a:Lads_mobile_sdk/tz2;

    new-instance v0, Lads_mobile_sdk/pm1;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/d;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-direct {v0, v1}, Lads_mobile_sdk/pm1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V

    invoke-virtual {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/ei1;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
