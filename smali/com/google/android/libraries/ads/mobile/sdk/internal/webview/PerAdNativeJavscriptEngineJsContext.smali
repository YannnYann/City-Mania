###### Class com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext (com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nr1;


# instance fields
.field public final a:Lads_mobile_sdk/nr1;

.field public final b:Ljava/lang/String;

.field public final c:Lkotlinx/coroutines/sync/Mutex;

.field private final perAdGmsgHandlers:Ljava/util/Set;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lads_mobile_sdk/r41;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "jsContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->perAdGmsgHandlers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 3
    instance-of v0, p3, Lads_mobile_sdk/kj2;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/kj2;

    iget v1, v0, Lads_mobile_sdk/kj2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kj2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/kj2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/kj2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/kj2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 234
    iget v2, v0, Lads_mobile_sdk/kj2;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_52

    if-eq v2, v5, :cond_46

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_cf

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    iget-object p1, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iget-object v2, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a8

    :cond_46
    iget-object p1, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iget-object v2, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_52
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    invoke-interface {p2}, Lads_mobile_sdk/r41;->k()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_87

    invoke-static {p3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_62

    goto :goto_87

    .line 236
    :cond_62
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 282
    iput-object p0, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object p1, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iput-object p3, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/kj2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_75

    goto :goto_ce

    :cond_75
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    .line 283
    :goto_78
    :try_start_78
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->perAdGmsgHandlers:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_82

    .line 333
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :goto_80
    move-object p1, v2

    goto :goto_bc

    :catchall_82
    move-exception p2

    .line 334
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    .line 335
    :cond_87
    :goto_87
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->b:Ljava/lang/String;

    if-eqz p3, :cond_bb

    invoke-static {p3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_92

    goto :goto_bb

    .line 336
    :cond_92
    iget-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 391
    iput-object p0, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object p1, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iput-object p3, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/kj2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a5

    goto :goto_ce

    :cond_a5
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    .line 392
    :goto_a8
    :try_start_a8
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->b:Ljava/lang/String;

    invoke-interface {p2, p3}, Lads_mobile_sdk/r41;->a(Ljava/lang/String;)V

    .line 393
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->perAdGmsgHandlers:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_b6

    .line 450
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_80

    :catchall_b6
    move-exception p2

    .line 451
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_bb
    :goto_bb
    move-object v4, p0

    .line 452
    :goto_bc
    iget-object p3, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->b:Ljava/lang/String;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->c:Lads_mobile_sdk/r41;

    iput-object v6, v0, Lads_mobile_sdk/kj2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/kj2;->g:I

    invoke-interface {p3, p1, p2, v0}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_cf

    :goto_ce
    return-object v1

    .line 453
    :cond_cf
    :goto_cf
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;->a:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
