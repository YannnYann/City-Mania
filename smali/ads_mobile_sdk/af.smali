###### Class ads_mobile_sdk.af (ads_mobile_sdk.af)
.class public final Lads_mobile_sdk/af;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/jf;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lads_mobile_sdk/be;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jf;Landroid/content/Context;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/af;->b:Lads_mobile_sdk/jf;

    iput-object p2, p0, Lads_mobile_sdk/af;->c:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/af;->d:Lads_mobile_sdk/be;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/af;

    iget-object v0, p0, Lads_mobile_sdk/af;->b:Lads_mobile_sdk/jf;

    iget-object v1, p0, Lads_mobile_sdk/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/af;->d:Lads_mobile_sdk/be;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/af;-><init>(Lads_mobile_sdk/jf;Landroid/content/Context;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/af;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/af;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/af;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 452
    iget v1, p0, Lads_mobile_sdk/af;->a:I

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

    iget-object p1, p0, Lads_mobile_sdk/af;->b:Lads_mobile_sdk/jf;

    iget-object v1, p0, Lads_mobile_sdk/af;->c:Landroid/content/Context;

    iget-object v3, p0, Lads_mobile_sdk/af;->d:Lads_mobile_sdk/be;

    iput v2, p0, Lads_mobile_sdk/af;->a:I

    invoke-interface {p1, v1, v3, p0}, Lads_mobile_sdk/jf;->a(Landroid/content/Context;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    return-object p1
.end method
