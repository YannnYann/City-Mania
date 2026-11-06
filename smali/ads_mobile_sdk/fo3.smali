###### Class ads_mobile_sdk.fo3 (ads_mobile_sdk.fo3)
.class public final Lads_mobile_sdk/fo3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/jf;

.field public final synthetic b:Lads_mobile_sdk/io3;

.field public final synthetic c:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jf;Lads_mobile_sdk/io3;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fo3;->a:Lads_mobile_sdk/jf;

    iput-object p2, p0, Lads_mobile_sdk/fo3;->b:Lads_mobile_sdk/io3;

    iput-object p3, p0, Lads_mobile_sdk/fo3;->c:Lkotlinx/coroutines/CancellableContinuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/fo3;

    iget-object v0, p0, Lads_mobile_sdk/fo3;->a:Lads_mobile_sdk/jf;

    iget-object v1, p0, Lads_mobile_sdk/fo3;->b:Lads_mobile_sdk/io3;

    iget-object v2, p0, Lads_mobile_sdk/fo3;->c:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/fo3;-><init>(Lads_mobile_sdk/jf;Lads_mobile_sdk/io3;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/fo3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/fo3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/fo3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 159
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 162
    :try_start_c
    iget-object v0, p0, Lads_mobile_sdk/fo3;->a:Lads_mobile_sdk/jf;

    .line 163
    instance-of v1, v0, Lads_mobile_sdk/qv1;

    if-eqz v1, :cond_27

    .line 164
    iget-object v1, p0, Lads_mobile_sdk/fo3;->b:Lads_mobile_sdk/io3;

    .line 165
    iget-object v2, v1, Lads_mobile_sdk/io3;->l:Lads_mobile_sdk/rf;

    .line 166
    iget-object v3, v1, Lads_mobile_sdk/n2;->h:Lads_mobile_sdk/ec3;

    .line 167
    iget-object v4, v1, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 168
    iget-object v5, p0, Lads_mobile_sdk/fo3;->c:Lkotlinx/coroutines/CancellableContinuation;

    .line 169
    new-instance v6, Lads_mobile_sdk/do3;

    invoke-direct {v6, v1, p1, v5}, Lads_mobile_sdk/do3;-><init>(Lads_mobile_sdk/io3;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 170
    invoke-interface {v2, v3, v4, v0, v6}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V

    goto :goto_92

    :catchall_25
    move-exception v0

    goto :goto_5f

    .line 176
    :cond_27
    instance-of v1, v0, Lads_mobile_sdk/u83;

    if-eqz v1, :cond_3e

    .line 177
    iget-object v1, p0, Lads_mobile_sdk/fo3;->b:Lads_mobile_sdk/io3;

    .line 178
    iget-object v2, v1, Lads_mobile_sdk/io3;->m:Lads_mobile_sdk/rf;

    .line 179
    iget-object v3, v1, Lads_mobile_sdk/n2;->h:Lads_mobile_sdk/ec3;

    .line 180
    iget-object v4, v1, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 181
    iget-object v5, p0, Lads_mobile_sdk/fo3;->c:Lkotlinx/coroutines/CancellableContinuation;

    .line 182
    new-instance v6, Lads_mobile_sdk/do3;

    invoke-direct {v6, v1, p1, v5}, Lads_mobile_sdk/do3;-><init>(Lads_mobile_sdk/io3;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 183
    invoke-interface {v2, v3, v4, v0, v6}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V

    goto :goto_92

    .line 189
    :cond_3e
    instance-of v0, v0, Lads_mobile_sdk/rc2;

    if-eqz v0, :cond_92

    .line 190
    iget-object v0, p0, Lads_mobile_sdk/fo3;->b:Lads_mobile_sdk/io3;

    .line 191
    iget-object v0, v0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    .line 192
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/rf;

    .line 194
    iget-object v1, p0, Lads_mobile_sdk/fo3;->b:Lads_mobile_sdk/io3;

    .line 195
    iget-object v2, v1, Lads_mobile_sdk/n2;->h:Lads_mobile_sdk/ec3;

    .line 196
    iget-object v3, v1, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 197
    iget-object v4, p0, Lads_mobile_sdk/fo3;->a:Lads_mobile_sdk/jf;

    .line 198
    iget-object v5, p0, Lads_mobile_sdk/fo3;->c:Lkotlinx/coroutines/CancellableContinuation;

    .line 199
    new-instance v6, Lads_mobile_sdk/do3;

    invoke-direct {v6, v1, p1, v5}, Lads_mobile_sdk/do3;-><init>(Lads_mobile_sdk/io3;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 200
    invoke-interface {v0, v2, v3, v4, v6}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    :try_end_5e
    .catchall {:try_start_c .. :try_end_5e} :catchall_25

    goto :goto_92

    :goto_5f
    const/4 v1, 0x1

    .line 208
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_69

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 210
    :cond_69
    iget-object p1, p0, Lads_mobile_sdk/fo3;->c:Lkotlinx/coroutines/CancellableContinuation;

    .line 211
    new-instance v1, Lads_mobile_sdk/l01;

    .line 212
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    .line 213
    sget-object v3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    invoke-virtual {v3}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result v3

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_83

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    :cond_83
    const-string v0, "com.google.android.libraries.ads.mobile.sdk"

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {v1, v2}, Lads_mobile_sdk/l01;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    .line 217
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 227
    :cond_92
    :goto_92
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
