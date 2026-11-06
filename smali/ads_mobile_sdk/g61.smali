###### Class ads_mobile_sdk.g61 (ads_mobile_sdk.g61)
.class public final Lads_mobile_sdk/g61;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:Lads_mobile_sdk/h61;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/h61;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    iput-object p2, p0, Lads_mobile_sdk/g61;->b:Lads_mobile_sdk/h61;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/g61;

    iget-object v0, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/g61;->b:Lads_mobile_sdk/h61;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/g61;-><init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/h61;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/g61;

    iget-object v0, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/g61;->b:Lads_mobile_sdk/h61;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/g61;-><init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/h61;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/g61;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lads_mobile_sdk/g61;->b:Lads_mobile_sdk/h61;

    .line 41
    iget-object p1, p1, Lads_mobile_sdk/h61;->b:Lads_mobile_sdk/f82;

    .line 42
    iget-object p1, p1, Lads_mobile_sdk/f82;->a:Ljava/lang/ref/WeakReference;

    .line 43
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 45
    iget-object v0, p0, Lads_mobile_sdk/g61;->b:Lads_mobile_sdk/h61;

    .line 46
    iget-object v0, v0, Lads_mobile_sdk/h61;->c:Lads_mobile_sdk/cw2;

    .line 47
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/j12;

    .line 48
    iget-object v0, v0, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/o32;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    check-cast v0, Lads_mobile_sdk/p32;

    invoke-virtual {v0}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    :goto_3c
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_43

    check-cast v0, Landroid/app/Activity;

    goto :goto_44

    :cond_43
    move-object v0, v1

    :goto_44
    if-eqz v0, :cond_4f

    .line 50
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_50

    :cond_4f
    move-object v0, v1

    .line 51
    :goto_50
    iget-object v2, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_67

    if-eqz p1, :cond_5f

    .line 52
    iget-object v1, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    invoke-interface {p1, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_5f
    if-eqz v0, :cond_6d

    .line 53
    iget-object p1, p0, Lads_mobile_sdk/g61;->a:Lads_mobile_sdk/r31;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_6d

    .line 55
    :cond_67
    const-string p1, "Failed to remove validator from WindowManager"

    const/4 v0, 0x6

    invoke-static {p1, v1, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 57
    :cond_6d
    :goto_6d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
