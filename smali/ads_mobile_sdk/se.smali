###### Class ads_mobile_sdk.se (ads_mobile_sdk.se)
.class public final Lads_mobile_sdk/se;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/hf;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lads_mobile_sdk/be;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/se;->b:Lads_mobile_sdk/hf;

    iput-object p2, p0, Lads_mobile_sdk/se;->c:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/se;->d:Lads_mobile_sdk/be;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/se;

    iget-object v1, p0, Lads_mobile_sdk/se;->b:Lads_mobile_sdk/hf;

    iget-object v2, p0, Lads_mobile_sdk/se;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/se;->d:Lads_mobile_sdk/be;

    invoke-direct {v0, v1, v2, v3, p1}, Lads_mobile_sdk/se;-><init>(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/se;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/se;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/se;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 359
    iget v1, p0, Lads_mobile_sdk/se;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 360
    iget-object p1, p0, Lads_mobile_sdk/se;->b:Lads_mobile_sdk/hf;

    iget-object v1, p0, Lads_mobile_sdk/se;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/se;->d:Lads_mobile_sdk/be;

    iput v2, p0, Lads_mobile_sdk/se;->a:I

    invoke-static {p1, v1, v3, p0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    return-object p1
.end method
