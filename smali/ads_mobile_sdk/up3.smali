###### Class ads_mobile_sdk.up3 (ads_mobile_sdk.up3)
.class public final Lads_mobile_sdk/up3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lads_mobile_sdk/vp3;


# direct methods
.method public constructor <init>(Landroid/view/View;Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/up3;->a:Landroid/view/View;

    iput-object p2, p0, Lads_mobile_sdk/up3;->b:Lads_mobile_sdk/vp3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/up3;

    iget-object v0, p0, Lads_mobile_sdk/up3;->a:Landroid/view/View;

    iget-object v1, p0, Lads_mobile_sdk/up3;->b:Lads_mobile_sdk/vp3;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/up3;-><init>(Landroid/view/View;Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/up3;

    iget-object v0, p0, Lads_mobile_sdk/up3;->a:Landroid/view/View;

    iget-object v1, p0, Lads_mobile_sdk/up3;->b:Lads_mobile_sdk/vp3;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/up3;-><init>(Landroid/view/View;Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/up3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/up3;->a:Landroid/view/View;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lads_mobile_sdk/up3;->b:Lads_mobile_sdk/vp3;

    .line 89
    iget-object v0, v0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    .line 90
    invoke-interface {v0, p1}, Lads_mobile_sdk/p12;->b(Landroid/view/View;)V

    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
