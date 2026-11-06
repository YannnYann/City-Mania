###### Class ads_mobile_sdk.yo (ads_mobile_sdk.yo)
.class public final Lads_mobile_sdk/yo;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/zo;

.field public final synthetic c:Lads_mobile_sdk/h41;

.field public final synthetic d:Lads_mobile_sdk/oo;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zo;Lads_mobile_sdk/h41;Lads_mobile_sdk/oo;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yo;->b:Lads_mobile_sdk/zo;

    iput-object p2, p0, Lads_mobile_sdk/yo;->c:Lads_mobile_sdk/h41;

    iput-object p3, p0, Lads_mobile_sdk/yo;->d:Lads_mobile_sdk/oo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/yo;

    iget-object v0, p0, Lads_mobile_sdk/yo;->b:Lads_mobile_sdk/zo;

    iget-object v1, p0, Lads_mobile_sdk/yo;->c:Lads_mobile_sdk/h41;

    iget-object v2, p0, Lads_mobile_sdk/yo;->d:Lads_mobile_sdk/oo;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/yo;-><init>(Lads_mobile_sdk/zo;Lads_mobile_sdk/h41;Lads_mobile_sdk/oo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/yo;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/yo;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/yo;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget v1, p0, Lads_mobile_sdk/yo;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_35

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lads_mobile_sdk/yo;->b:Lads_mobile_sdk/zo;

    .line 142
    iget-object v1, p0, Lads_mobile_sdk/yo;->c:Lads_mobile_sdk/h41;

    .line 143
    iget-object v3, p1, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 144
    iget-object v4, p0, Lads_mobile_sdk/yo;->d:Lads_mobile_sdk/oo;

    check-cast v4, Lads_mobile_sdk/be0;

    .line 145
    iget-object v4, v4, Lads_mobile_sdk/be0;->X:Lads_mobile_sdk/dw2;

    .line 146
    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/tk0;

    .line 147
    iput v2, p0, Lads_mobile_sdk/yo;->a:I

    .line 148
    invoke-static {p1, v1, v3, v4, p0}, Lads_mobile_sdk/at0;->a(Lads_mobile_sdk/at0;Lads_mobile_sdk/h41;Lads_mobile_sdk/i2;Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_35

    return-object v0

    .line 149
    :cond_35
    :goto_35
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
