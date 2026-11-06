###### Class ads_mobile_sdk.az1 (ads_mobile_sdk.az1)
.class public final Lads_mobile_sdk/az1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/bz1;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Lads_mobile_sdk/n53;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bz1;Landroid/view/ViewGroup;Lads_mobile_sdk/n53;Landroid/app/Activity;Landroid/view/Window;Lkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/az1;->b:Lads_mobile_sdk/bz1;

    iput-object p2, p0, Lads_mobile_sdk/az1;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lads_mobile_sdk/az1;->d:Lads_mobile_sdk/n53;

    iput-object p4, p0, Lads_mobile_sdk/az1;->e:Landroid/app/Activity;

    iput-object p5, p0, Lads_mobile_sdk/az1;->f:Landroid/view/Window;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/az1;

    iget-object v1, p0, Lads_mobile_sdk/az1;->b:Lads_mobile_sdk/bz1;

    iget-object v2, p0, Lads_mobile_sdk/az1;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lads_mobile_sdk/az1;->d:Lads_mobile_sdk/n53;

    iget-object v4, p0, Lads_mobile_sdk/az1;->e:Landroid/app/Activity;

    iget-object v5, p0, Lads_mobile_sdk/az1;->f:Landroid/view/Window;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/az1;-><init>(Lads_mobile_sdk/bz1;Landroid/view/ViewGroup;Lads_mobile_sdk/n53;Landroid/app/Activity;Landroid/view/Window;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/az1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/az1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/az1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 136
    iget v1, p0, Lads_mobile_sdk/az1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lads_mobile_sdk/az1;->b:Lads_mobile_sdk/bz1;

    move p1, v2

    .line 138
    iget-object v2, p0, Lads_mobile_sdk/az1;->c:Landroid/view/ViewGroup;

    .line 139
    iget-object v3, p0, Lads_mobile_sdk/az1;->d:Lads_mobile_sdk/n53;

    .line 140
    iget-object v4, p0, Lads_mobile_sdk/az1;->e:Landroid/app/Activity;

    .line 141
    iget-object v5, p0, Lads_mobile_sdk/az1;->f:Landroid/view/Window;

    const-string v6, "$window"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lads_mobile_sdk/az1;->b:Lads_mobile_sdk/bz1;

    move-object v7, v6

    .line 143
    iget-object v6, v7, Lads_mobile_sdk/bz1;->h:Lads_mobile_sdk/r31;

    .line 144
    iget-object v7, v7, Lads_mobile_sdk/bz1;->g:Lads_mobile_sdk/h41;

    .line 145
    iput p1, p0, Lads_mobile_sdk/az1;->a:I

    move-object v8, p0

    .line 146
    invoke-virtual/range {v1 .. v8}, Lads_mobile_sdk/bz1;->a(Landroid/view/ViewGroup;Lads_mobile_sdk/n53;Landroid/app/Activity;Landroid/view/Window;Lads_mobile_sdk/r31;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3b

    return-object v0

    .line 147
    :cond_3b
    :goto_3b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
