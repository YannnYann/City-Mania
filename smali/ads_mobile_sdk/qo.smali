###### Class ads_mobile_sdk.qo (ads_mobile_sdk.qo)
.class public final Lads_mobile_sdk/qo;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/cz2;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Landroid/view/ViewGroup;ZLkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qo;->a:Lads_mobile_sdk/cz2;

    iput-object p2, p0, Lads_mobile_sdk/qo;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    iput-object p3, p0, Lads_mobile_sdk/qo;->c:Landroid/view/ViewGroup;

    iput-boolean p4, p0, Lads_mobile_sdk/qo;->d:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/qo;

    iget-object v1, p0, Lads_mobile_sdk/qo;->a:Lads_mobile_sdk/cz2;

    iget-object v2, p0, Lads_mobile_sdk/qo;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    iget-object v3, p0, Lads_mobile_sdk/qo;->c:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lads_mobile_sdk/qo;->d:Z

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/qo;-><init>(Lads_mobile_sdk/cz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Landroid/view/ViewGroup;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/qo;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qo;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/qo;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lads_mobile_sdk/qo;->a:Lads_mobile_sdk/cz2;

    .line 79
    invoke-interface {p1}, Lads_mobile_sdk/cz2;->a()Lads_mobile_sdk/wy2;

    move-result-object p1

    .line 81
    new-instance v0, Lads_mobile_sdk/ek1;

    iget-object v1, p0, Lads_mobile_sdk/qo;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    .line 82
    new-instance v2, Lads_mobile_sdk/po;

    iget-object v3, p0, Lads_mobile_sdk/qo;->a:Lads_mobile_sdk/cz2;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lads_mobile_sdk/po;-><init>(Lads_mobile_sdk/cz2;Lkotlin/coroutines/Continuation;)V

    .line 83
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/ek1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/jvm/functions/Function2;)V

    .line 90
    iget-object v1, p0, Lads_mobile_sdk/qo;->c:Landroid/view/ViewGroup;

    .line 91
    iget-boolean v2, p0, Lads_mobile_sdk/qo;->d:Z

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    const-string v3, "internalAdLoadCallback"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object v1, p1, Lads_mobile_sdk/wy2;->B:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2d

    .line 231
    iput-object v0, p1, Lads_mobile_sdk/wy2;->y:Lads_mobile_sdk/ei1;

    .line 233
    :cond_2d
    invoke-virtual {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/ei1;)V

    .line 234
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
