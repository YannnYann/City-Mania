###### Class ads_mobile_sdk.ys1 (ads_mobile_sdk.ys1)
.class public final Lads_mobile_sdk/ys1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroid/view/WindowManager;

.field public final synthetic b:Lads_mobile_sdk/r31;

.field public final synthetic c:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Lads_mobile_sdk/r31;Landroid/view/WindowManager$LayoutParams;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ys1;->a:Landroid/view/WindowManager;

    iput-object p2, p0, Lads_mobile_sdk/ys1;->b:Lads_mobile_sdk/r31;

    iput-object p3, p0, Lads_mobile_sdk/ys1;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/ys1;

    iget-object v0, p0, Lads_mobile_sdk/ys1;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lads_mobile_sdk/ys1;->b:Lads_mobile_sdk/r31;

    iget-object v2, p0, Lads_mobile_sdk/ys1;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/ys1;-><init>(Landroid/view/WindowManager;Lads_mobile_sdk/r31;Landroid/view/WindowManager$LayoutParams;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ys1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ys1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ys1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/ys1;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lads_mobile_sdk/ys1;->b:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/ys1;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
