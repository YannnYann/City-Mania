###### Class ads_mobile_sdk.ic0 (ads_mobile_sdk.ic0)
.class public final Lads_mobile_sdk/ic0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;ZLkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ic0;->a:Lads_mobile_sdk/r31;

    iput-boolean p2, p0, Lads_mobile_sdk/ic0;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/ic0;

    iget-object v0, p0, Lads_mobile_sdk/ic0;->a:Lads_mobile_sdk/r31;

    iget-boolean v1, p0, Lads_mobile_sdk/ic0;->b:Z

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ic0;-><init>(Lads_mobile_sdk/r31;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ic0;

    iget-object v0, p0, Lads_mobile_sdk/ic0;->a:Lads_mobile_sdk/r31;

    iget-boolean v1, p0, Lads_mobile_sdk/ic0;->b:Z

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ic0;-><init>(Lads_mobile_sdk/r31;ZLkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ic0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lads_mobile_sdk/ic0;->a:Lads_mobile_sdk/r31;

    .line 24
    iget-object p1, p1, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    if-eqz p1, :cond_37

    .line 25
    iget-boolean v0, p0, Lads_mobile_sdk/ic0;->b:Z

    check-cast p1, Lads_mobile_sdk/yy0;

    if-eqz v0, :cond_18

    .line 26
    invoke-virtual {p1}, Lads_mobile_sdk/yy0;->h()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_18
    invoke-virtual {p1}, Lads_mobile_sdk/yy0;->f()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 27
    :cond_1e
    iget-object v0, p1, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    if-nez v0, :cond_23

    goto :goto_28

    :cond_23
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_28
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p1, Lads_mobile_sdk/yy0;->u:Z

    goto :goto_37

    .line 30
    :cond_2c
    iget-object v0, p1, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    const/4 v1, 0x0

    if-nez v0, :cond_32

    goto :goto_35

    :cond_32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_35
    iput-boolean v1, p1, Lads_mobile_sdk/yy0;->u:Z

    .line 32
    :cond_37
    :goto_37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
