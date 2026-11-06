###### Class ads_mobile_sdk.a02 (ads_mobile_sdk.a02)
.class public final Lads_mobile_sdk/a02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic b:Lads_mobile_sdk/e02;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lads_mobile_sdk/e02;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a02;->a:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lads_mobile_sdk/a02;->b:Lads_mobile_sdk/e02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/zz1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/zz1;

    iget v1, v0, Lads_mobile_sdk/zz1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zz1;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zz1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/zz1;-><init>(Lads_mobile_sdk/a02;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/zz1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/zz1;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lads_mobile_sdk/a02;->a:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    check-cast p1, Lads_mobile_sdk/v01;

    .line 53
    instance-of v2, p1, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_4f

    new-instance v2, Lads_mobile_sdk/q01;

    iget-object v4, p0, Lads_mobile_sdk/a02;->b:Lads_mobile_sdk/e02;

    .line 54
    iget-object v4, v4, Lads_mobile_sdk/e02;->c:Lkotlin/jvm/functions/Function1;

    .line 55
    check-cast p1, Lads_mobile_sdk/q01;

    .line 56
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 57
    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_53

    .line 58
    :cond_4f
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_5f

    .line 59
    :goto_53
    iput v3, v0, Lads_mobile_sdk/zz1;->b:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5c

    return-object v1

    .line 60
    :cond_5c
    :goto_5c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 64
    :cond_5f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
