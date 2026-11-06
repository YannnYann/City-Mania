###### Class ads_mobile_sdk.mg2 (ads_mobile_sdk.mg2)
.class public final Lads_mobile_sdk/mg2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/pg2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mg2;->a:Lads_mobile_sdk/pg2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/mg2;

    iget-object v0, p0, Lads_mobile_sdk/mg2;->a:Lads_mobile_sdk/pg2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/mg2;-><init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/mg2;

    iget-object v0, p0, Lads_mobile_sdk/mg2;->a:Lads_mobile_sdk/pg2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/mg2;-><init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/mg2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lads_mobile_sdk/mg2;->a:Lads_mobile_sdk/pg2;

    .line 138
    iget-object v0, p1, Lads_mobile_sdk/pg2;->U:Lads_mobile_sdk/i04;

    if-eqz v0, :cond_38

    .line 139
    iget-object v1, p1, Lads_mobile_sdk/yx0;->J:Lkotlin/Lazy;

    .line 140
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/r31;

    .line 141
    iget-object v1, v1, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iget-object v1, v0, Lads_mobile_sdk/i04;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    goto :goto_35

    .line 169
    :cond_28
    iget-object v1, v0, Lads_mobile_sdk/i04;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object p1

    iget v2, v0, Lads_mobile_sdk/i04;->b:I

    iget-object v0, v0, Lads_mobile_sdk/i04;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_35
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method
