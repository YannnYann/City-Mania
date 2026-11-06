###### Class ads_mobile_sdk.c32 (ads_mobile_sdk.c32)
.class public final Lads_mobile_sdk/c32;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/d32;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/d32;JLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c32;->b:Lads_mobile_sdk/d32;

    iput-wide p2, p0, Lads_mobile_sdk/c32;->c:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/c32;

    iget-object v0, p0, Lads_mobile_sdk/c32;->b:Lads_mobile_sdk/d32;

    iget-wide v1, p0, Lads_mobile_sdk/c32;->c:J

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/c32;-><init>(Lads_mobile_sdk/d32;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/c32;

    iget-object v0, p0, Lads_mobile_sdk/c32;->b:Lads_mobile_sdk/d32;

    iget-wide v1, p0, Lads_mobile_sdk/c32;->c:J

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/c32;-><init>(Lads_mobile_sdk/d32;JLkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/c32;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lads_mobile_sdk/c32;->a:I

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

    .line 71
    iget-object p1, p0, Lads_mobile_sdk/c32;->b:Lads_mobile_sdk/d32;

    .line 72
    iget-object p1, p1, Lads_mobile_sdk/d32;->c:Lads_mobile_sdk/t22;

    .line 73
    iget-wide v3, p0, Lads_mobile_sdk/c32;->c:J

    iput v2, p0, Lads_mobile_sdk/c32;->a:I

    invoke-virtual {p1, v3, v4, p0}, Lads_mobile_sdk/t22;->e(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    .line 74
    :cond_29
    :goto_29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
