###### Class ads_mobile_sdk.c7 (ads_mobile_sdk.c7)
.class public final Lads_mobile_sdk/c7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/q7;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q7;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c7;->b:Lads_mobile_sdk/q7;

    iput-object p2, p0, Lads_mobile_sdk/c7;->c:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/c7;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/c7;

    iget-object v0, p0, Lads_mobile_sdk/c7;->b:Lads_mobile_sdk/q7;

    iget-object v1, p0, Lads_mobile_sdk/c7;->c:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/c7;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/c7;-><init>(Lads_mobile_sdk/q7;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/c7;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/c7;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/c7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget v1, p0, Lads_mobile_sdk/c7;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lads_mobile_sdk/c7;->b:Lads_mobile_sdk/q7;

    iget-object v1, p0, Lads_mobile_sdk/c7;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/c7;->d:Ljava/util/List;

    iput v2, p0, Lads_mobile_sdk/c7;->a:I

    invoke-static {p1, v1, v3, p0}, Lads_mobile_sdk/q7;->a(Lads_mobile_sdk/q7;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    .line 145
    :cond_29
    :goto_29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
