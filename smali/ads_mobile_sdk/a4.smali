###### Class ads_mobile_sdk.a4 (ads_mobile_sdk.a4)
.class public final Lads_mobile_sdk/a4;
.super Lads_mobile_sdk/ou;
.source "SourceFile"


# instance fields
.field public final l:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 14

    .line 2
    const-string v0, "backgroundScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    move-object v2, p5

    move-object v3, p6

    .line 37
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/ou;-><init>(Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;)V

    .line 38
    iput-object p1, v1, Lads_mobile_sdk/a4;->l:Lads_mobile_sdk/g30;

    return-void
.end method

.method public static a(Lads_mobile_sdk/a4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/y3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/y3;

    iget v1, v0, Lads_mobile_sdk/y3;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y3;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/y3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/y3;-><init>(Lads_mobile_sdk/a4;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/y3;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lads_mobile_sdk/y3;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_32

    if-ne v2, v3, :cond_2a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object v5, p0, Lads_mobile_sdk/ou;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 53
    new-instance p1, Lads_mobile_sdk/z3;

    invoke-direct {p1, p0, v4}, Lads_mobile_sdk/z3;-><init>(Lads_mobile_sdk/a4;Lkotlin/coroutines/Continuation;)V

    .line 54
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 55
    const-string p0, "<this>"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    new-instance v8, Lads_mobile_sdk/vs3;

    invoke-direct {v8, p1, v4}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    .line 304
    iput v3, v0, Lads_mobile_sdk/y3;->c:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    return-object v1

    .line 305
    :cond_62
    :goto_62
    check-cast p1, Lads_mobile_sdk/v01;

    if-eqz p1, :cond_74

    .line 352
    instance-of p0, p1, Lads_mobile_sdk/i01;

    if-eqz p0, :cond_6d

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 353
    :cond_6d
    check-cast p1, Lads_mobile_sdk/q01;

    .line 354
    iget-object p0, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 355
    move-object v4, p0

    check-cast v4, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 356
    :cond_74
    new-instance p0, Lads_mobile_sdk/q01;

    new-instance p1, Lads_mobile_sdk/x3;

    invoke-direct {p1, v4}, Lads_mobile_sdk/x3;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->d:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/a4;->a(Lads_mobile_sdk/a4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ou;->f:Lads_mobile_sdk/ex0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string v1, "key"

    const-string v2, "gads:ad_id_init_from_signal_source_enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22
    invoke-static {p0, p1}, Lads_mobile_sdk/ou;->c(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :cond_21
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
