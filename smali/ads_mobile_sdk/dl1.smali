###### Class ads_mobile_sdk.dl1 (ads_mobile_sdk.dl1)
.class public final Lads_mobile_sdk/dl1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/fl1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/dl1;->b:Lads_mobile_sdk/fl1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/dl1;

    iget-object v0, p0, Lads_mobile_sdk/dl1;->b:Lads_mobile_sdk/fl1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/dl1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/dl1;

    iget-object v0, p0, Lads_mobile_sdk/dl1;->b:Lads_mobile_sdk/fl1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/dl1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/dl1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lads_mobile_sdk/dl1;->a:I

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

    .line 66
    iget-object p1, p0, Lads_mobile_sdk/dl1;->b:Lads_mobile_sdk/fl1;

    .line 67
    iget-object p1, p1, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz p1, :cond_29

    .line 68
    iput v2, p0, Lads_mobile_sdk/dl1;->a:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/r31;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    .line 69
    :cond_29
    :goto_29
    iget-object p1, p0, Lads_mobile_sdk/dl1;->b:Lads_mobile_sdk/fl1;

    .line 70
    iget-object p1, p1, Lads_mobile_sdk/fl1;->e:Lads_mobile_sdk/ex0;

    .line 71
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->O()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 72
    iget-object p1, p0, Lads_mobile_sdk/dl1;->b:Lads_mobile_sdk/fl1;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p1, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    .line 74
    const-string p1, "WebView deallocated."

    .line 75
    invoke-static {p1, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_3d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
