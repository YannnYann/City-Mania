###### Class ads_mobile_sdk.u31 (ads_mobile_sdk.u31)
.class public final Lads_mobile_sdk/u31;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g41;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/u31;->b:Lads_mobile_sdk/g41;

    iput-object p2, p0, Lads_mobile_sdk/u31;->c:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/u31;

    iget-object v0, p0, Lads_mobile_sdk/u31;->b:Lads_mobile_sdk/g41;

    iget-object v1, p0, Lads_mobile_sdk/u31;->c:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/u31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/u31;

    iget-object v0, p0, Lads_mobile_sdk/u31;->b:Lads_mobile_sdk/g41;

    iget-object v1, p0, Lads_mobile_sdk/u31;->c:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/u31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/u31;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 293
    iget v1, p0, Lads_mobile_sdk/u31;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lads_mobile_sdk/u31;->b:Lads_mobile_sdk/g41;

    .line 295
    iget-object p1, p1, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    if-eqz p1, :cond_3b

    .line 296
    iget-object v1, p0, Lads_mobile_sdk/u31;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "toString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, p0, Lads_mobile_sdk/u31;->a:I

    .line 297
    invoke-static {p1, v1, p0}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3b

    goto :goto_54

    .line 298
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lads_mobile_sdk/u31;->b:Lads_mobile_sdk/g41;

    .line 299
    iget-object v1, p1, Lads_mobile_sdk/g41;->p:Lads_mobile_sdk/tn3;

    .line 300
    sget-object v3, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, p1, v3}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ai1;

    if-eqz p1, :cond_55

    .line 301
    iput v2, p0, Lads_mobile_sdk/u31;->a:I

    invoke-interface {p1, p0}, Lads_mobile_sdk/ai1;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_55

    :goto_54
    return-object v0

    .line 302
    :cond_55
    :goto_55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
