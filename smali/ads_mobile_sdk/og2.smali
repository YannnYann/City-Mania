###### Class ads_mobile_sdk.og2 (ads_mobile_sdk.og2)
.class public final Lads_mobile_sdk/og2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroid/view/ViewParent;

.field public final synthetic b:Lads_mobile_sdk/pg2;


# direct methods
.method public constructor <init>(Landroid/view/ViewParent;Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/og2;->a:Landroid/view/ViewParent;

    iput-object p2, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/og2;

    iget-object v0, p0, Lads_mobile_sdk/og2;->a:Landroid/view/ViewParent;

    iget-object v1, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/og2;-><init>(Landroid/view/ViewParent;Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/og2;

    iget-object v0, p0, Lads_mobile_sdk/og2;->a:Landroid/view/ViewParent;

    iget-object v1, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/og2;-><init>(Landroid/view/ViewParent;Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/og2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lads_mobile_sdk/og2;->a:Landroid/view/ViewParent;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    invoke-virtual {v0}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    .line 123
    iget-object p1, p1, Lads_mobile_sdk/ez0;->P:Lads_mobile_sdk/f0;

    .line 124
    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1e

    goto :goto_22

    :cond_1e
    iget-object p1, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    .line 125
    iget-object p1, p1, Lads_mobile_sdk/yy0;->a:Landroid/content/Context;

    .line 126
    :goto_22
    iget-object v0, p0, Lads_mobile_sdk/og2;->b:Lads_mobile_sdk/pg2;

    .line 127
    invoke-virtual {v0, p1}, Lads_mobile_sdk/yy0;->a(Landroid/content/Context;)Z

    move-result p1

    .line 128
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
