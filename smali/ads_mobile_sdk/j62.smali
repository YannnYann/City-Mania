###### Class ads_mobile_sdk.j62 (ads_mobile_sdk.j62)
.class public final Lads_mobile_sdk/j62;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/iz3;

.field public final d:Lads_mobile_sdk/n62;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/iz3;Lads_mobile_sdk/n62;Lads_mobile_sdk/ex0;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)V
    .registers 8

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaWebViewConfigurator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lads_mobile_sdk/j62;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lads_mobile_sdk/j62;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 45
    iput-object p3, p0, Lads_mobile_sdk/j62;->c:Lads_mobile_sdk/iz3;

    .line 46
    iput-object p4, p0, Lads_mobile_sdk/j62;->d:Lads_mobile_sdk/n62;

    .line 47
    iput-object p5, p0, Lads_mobile_sdk/j62;->e:Lads_mobile_sdk/ex0;

    .line 48
    iput-object p6, p0, Lads_mobile_sdk/j62;->f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/j62;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    instance-of v0, p2, Lads_mobile_sdk/i62;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/i62;

    iget v1, v0, Lads_mobile_sdk/i62;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i62;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/i62;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/i62;-><init>(Lads_mobile_sdk/j62;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/i62;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 523
    iget v2, v0, Lads_mobile_sdk/i62;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object p0, v0, Lads_mobile_sdk/i62;->a:Lads_mobile_sdk/r31;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object p2

    if-eqz p2, :cond_52

    .line 525
    iget-object p0, p0, Lads_mobile_sdk/j62;->f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 526
    iput-object p1, v0, Lads_mobile_sdk/i62;->a:Lads_mobile_sdk/r31;

    iput v3, v0, Lads_mobile_sdk/i62;->d:I

    invoke-virtual {p2, p0, v0}, Lads_mobile_sdk/q41;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_52

    return-object v1

    :cond_52
    return-object p1
.end method

.method public static final a(Lads_mobile_sdk/j62;Lads_mobile_sdk/v14;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v0, p3, Lads_mobile_sdk/b62;

    if-eqz v0, :cond_17

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/b62;

    iget v1, v0, Lads_mobile_sdk/b62;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_17

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/b62;->f:I

    :goto_15
    move-object v7, v0

    goto :goto_1d

    :cond_17
    new-instance v0, Lads_mobile_sdk/b62;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/b62;-><init>(Lads_mobile_sdk/j62;Lkotlin/coroutines/Continuation;)V

    goto :goto_15

    :goto_1d
    iget-object p3, v7, Lads_mobile_sdk/b62;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget v1, v7, Lads_mobile_sdk/b62;->f:I

    const/4 v9, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_4e

    if-eq v1, v2, :cond_3e

    if-ne v1, v9, :cond_36

    iget-object p0, v7, Lads_mobile_sdk/b62;->a:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/r31;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b1

    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    iget-object p0, v7, Lads_mobile_sdk/b62;->c:Lads_mobile_sdk/rr3;

    iget-object p1, v7, Lads_mobile_sdk/b62;->b:Lads_mobile_sdk/rr3;

    iget-object p2, v7, Lads_mobile_sdk/b62;->a:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/j62;

    :try_start_46
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_79

    :catchall_4a
    move-exception v0

    move-object p2, v0

    goto/16 :goto_bc

    :cond_4e
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    sget-object p3, Lads_mobile_sdk/s11;->P:Lads_mobile_sdk/s11;

    .line 218
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {p3, v1, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p3

    .line 219
    :try_start_5d
    iget-object v1, p0, Lads_mobile_sdk/j62;->c:Lads_mobile_sdk/iz3;

    iput-object p0, v7, Lads_mobile_sdk/b62;->a:Ljava/lang/Object;

    iput-object p3, v7, Lads_mobile_sdk/b62;->b:Lads_mobile_sdk/rr3;

    iput-object p3, v7, Lads_mobile_sdk/b62;->c:Lads_mobile_sdk/rr3;

    iput v2, v7, Lads_mobile_sdk/b62;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v8}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/iz3;Lads_mobile_sdk/v14;Lads_mobile_sdk/ar1;ZLads_mobile_sdk/eo2;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_72
    .catchall {:try_start_5d .. :try_end_72} :catchall_b7

    if-ne p1, v0, :cond_75

    goto :goto_b0

    :cond_75
    move-object p2, p0

    move-object p0, p3

    move-object p3, p1

    move-object p1, p0

    :goto_79
    :try_start_79
    check-cast p3, Lads_mobile_sdk/v01;

    .line 245
    instance-of v1, p3, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_86

    .line 246
    move-object v1, p3

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 247
    invoke-static {v1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_4a

    :cond_86
    const/4 p1, 0x0

    .line 248
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 281
    instance-of p0, p3, Lads_mobile_sdk/i01;

    if-eqz p0, :cond_91

    check-cast p3, Lads_mobile_sdk/i01;

    return-object p3

    .line 282
    :cond_91
    const-string p0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lads_mobile_sdk/q01;

    .line 283
    iget-object p0, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 284
    check-cast p0, Lads_mobile_sdk/r31;

    .line 288
    iget-object p2, p2, Lads_mobile_sdk/j62;->d:Lads_mobile_sdk/n62;

    invoke-virtual {p0}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object p3

    iput-object p0, v7, Lads_mobile_sdk/b62;->a:Ljava/lang/Object;

    iput-object p1, v7, Lads_mobile_sdk/b62;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v7, Lads_mobile_sdk/b62;->c:Lads_mobile_sdk/rr3;

    iput v9, v7, Lads_mobile_sdk/b62;->f:I

    invoke-virtual {p2, p3, v7}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b1

    :goto_b0
    return-object v0

    .line 289
    :cond_b1
    :goto_b1
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    :catchall_b7
    move-exception v0

    move-object p0, v0

    move-object p2, p0

    move-object p0, p3

    move-object p1, p0

    .line 315
    :goto_bc
    :try_start_bc
    invoke-virtual {p1, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 319
    instance-of p3, p2, Lads_mobile_sdk/v24;

    if-nez p3, :cond_f5

    .line 321
    instance-of p3, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p3, :cond_d2

    instance-of p3, p2, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_d2

    .line 327
    invoke-virtual {p1, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_d2

    :catchall_cf
    move-exception v0

    move-object p1, v0

    goto :goto_f6

    .line 333
    :cond_d2
    :goto_d2
    instance-of p1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_ed

    .line 334
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_e5

    .line 335
    instance-of p1, p2, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_df

    throw p2

    .line 336
    :cond_df
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 337
    :cond_e5
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 338
    :cond_ed
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 339
    :cond_f5
    throw p2
    :try_end_f6
    .catchall {:try_start_bc .. :try_end_f6} :catchall_cf

    .line 340
    :goto_f6
    :try_start_f6
    throw p1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f7

    :catchall_f7
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
