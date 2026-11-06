###### Class ads_mobile_sdk.av0 (ads_mobile_sdk.av0)
.class public final Lads_mobile_sdk/av0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/bv0;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bv0;Landroid/view/View;Ljava/lang/ref/WeakReference;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/av0;->b:Lads_mobile_sdk/bv0;

    iput-object p2, p0, Lads_mobile_sdk/av0;->c:Landroid/view/View;

    iput-object p3, p0, Lads_mobile_sdk/av0;->d:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/av0;

    iget-object v0, p0, Lads_mobile_sdk/av0;->b:Lads_mobile_sdk/bv0;

    iget-object v1, p0, Lads_mobile_sdk/av0;->c:Landroid/view/View;

    iget-object v2, p0, Lads_mobile_sdk/av0;->d:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/av0;-><init>(Lads_mobile_sdk/bv0;Landroid/view/View;Ljava/lang/ref/WeakReference;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/av0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/av0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/av0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 122
    iget v1, p0, Lads_mobile_sdk/av0;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_52

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lads_mobile_sdk/av0;->b:Lads_mobile_sdk/bv0;

    .line 124
    iget-object p1, p1, Lads_mobile_sdk/bv0;->r:Lads_mobile_sdk/vf2;

    .line 125
    iget-object v1, p0, Lads_mobile_sdk/av0;->c:Landroid/view/View;

    iput v3, p0, Lads_mobile_sdk/av0;->a:I

    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/vf2;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    goto :goto_51

    .line 126
    :cond_30
    :goto_30
    iget-object p1, p0, Lads_mobile_sdk/av0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/o32;

    if-eqz p1, :cond_52

    check-cast p1, Lads_mobile_sdk/p32;

    invoke-virtual {p1}, Lads_mobile_sdk/p32;->d()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_52

    iget-object v1, p0, Lads_mobile_sdk/av0;->b:Lads_mobile_sdk/bv0;

    .line 127
    iget-object v1, v1, Lads_mobile_sdk/bv0;->r:Lads_mobile_sdk/vf2;

    .line 128
    sget-object v3, Lads_mobile_sdk/tx0;->c:Lads_mobile_sdk/tx0;

    iput v2, p0, Lads_mobile_sdk/av0;->a:I

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, p1, v3, v2, p0}, Lads_mobile_sdk/vf2;->a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_52

    :goto_51
    return-object v0

    .line 130
    :cond_52
    :goto_52
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
