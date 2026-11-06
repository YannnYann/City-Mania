###### Class ads_mobile_sdk.ri1 (ads_mobile_sdk.ri1)
.class public final Lads_mobile_sdk/ri1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/vi2;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/si1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/si1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ri1;->c:Lads_mobile_sdk/si1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/ri1;

    iget-object v0, p0, Lads_mobile_sdk/ri1;->c:Lads_mobile_sdk/si1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ri1;-><init>(Lads_mobile_sdk/si1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ri1;

    iget-object v0, p0, Lads_mobile_sdk/ri1;->c:Lads_mobile_sdk/si1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ri1;-><init>(Lads_mobile_sdk/si1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ri1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lads_mobile_sdk/ri1;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object v1, p0, Lads_mobile_sdk/ri1;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lads_mobile_sdk/ri1;->c:Lads_mobile_sdk/si1;

    .line 61
    iget-object v1, p1, Lads_mobile_sdk/si1;->g:Lads_mobile_sdk/vi2;

    .line 62
    iget-object p1, p1, Lads_mobile_sdk/si1;->f:Lads_mobile_sdk/nt3;

    .line 63
    iput-object v1, p0, Lads_mobile_sdk/ri1;->a:Lads_mobile_sdk/vi2;

    iput v3, p0, Lads_mobile_sdk/ri1;->b:I

    invoke-interface {p1, p0}, Lads_mobile_sdk/nt3;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    goto :goto_53

    .line 64
    :cond_34
    :goto_34
    check-cast p1, Lads_mobile_sdk/v01;

    .line 112
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_3d

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 113
    :cond_3d
    const-string v3, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 114
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 115
    check-cast p1, Lads_mobile_sdk/ec3;

    const/4 v3, 0x0

    .line 116
    iput-object v3, p0, Lads_mobile_sdk/ri1;->a:Lads_mobile_sdk/vi2;

    iput v2, p0, Lads_mobile_sdk/ri1;->b:I

    invoke-virtual {v1, p1, p0}, Lads_mobile_sdk/vi2;->a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_54

    :goto_53
    return-object v0

    :cond_54
    return-object p1
.end method
