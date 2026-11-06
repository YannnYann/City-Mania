###### Class ads_mobile_sdk.d41 (ads_mobile_sdk.d41)
.class public final Lads_mobile_sdk/d41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/oy1;

.field public final synthetic c:Lads_mobile_sdk/g41;

.field public final synthetic d:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/oy1;Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d41;->b:Lads_mobile_sdk/oy1;

    iput-object p2, p0, Lads_mobile_sdk/d41;->c:Lads_mobile_sdk/g41;

    iput-object p3, p0, Lads_mobile_sdk/d41;->d:Landroid/webkit/WebResourceRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/d41;

    iget-object v0, p0, Lads_mobile_sdk/d41;->b:Lads_mobile_sdk/oy1;

    iget-object v1, p0, Lads_mobile_sdk/d41;->c:Lads_mobile_sdk/g41;

    iget-object v2, p0, Lads_mobile_sdk/d41;->d:Landroid/webkit/WebResourceRequest;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/d41;-><init>(Lads_mobile_sdk/oy1;Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/d41;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/d41;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/d41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 351
    iget v1, p0, Lads_mobile_sdk/d41;->a:I

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

    iget-object p1, p0, Lads_mobile_sdk/d41;->b:Lads_mobile_sdk/oy1;

    iget-object v1, p0, Lads_mobile_sdk/d41;->c:Lads_mobile_sdk/g41;

    .line 352
    iget-object v1, v1, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    .line 353
    iget-object v3, p0, Lads_mobile_sdk/d41;->d:Landroid/webkit/WebResourceRequest;

    iput v2, p0, Lads_mobile_sdk/d41;->a:I

    check-cast p1, Lads_mobile_sdk/ry1;

    invoke-virtual {p1, v1, v3, p0}, Lads_mobile_sdk/ry1;->a(Lads_mobile_sdk/r31;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    return-object p1
.end method
