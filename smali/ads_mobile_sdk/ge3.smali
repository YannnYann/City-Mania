###### Class ads_mobile_sdk.ge3 (ads_mobile_sdk.ge3)
.class public final Lads_mobile_sdk/ge3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:Lads_mobile_sdk/j12;

.field public final c:Lads_mobile_sdk/j92;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/j12;Lads_mobile_sdk/j92;)V
    .registers 5

    .line 1
    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoViewabilityMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/ge3;->a:Lkotlin/coroutines/CoroutineContext;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/ge3;->b:Lads_mobile_sdk/j12;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/ge3;->c:Lads_mobile_sdk/j92;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 29
    iget-object p1, p0, Lads_mobile_sdk/ge3;->b:Lads_mobile_sdk/j12;

    .line 30
    iget-object p1, p1, Lads_mobile_sdk/j12;->d:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/r31;

    if-eqz p1, :cond_1f

    .line 32
    iget-object p2, p0, Lads_mobile_sdk/ge3;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lads_mobile_sdk/fe3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lads_mobile_sdk/fe3;-><init>(Lads_mobile_sdk/ge3;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1f

    return-object p1

    .line 37
    :cond_1f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->S:Lads_mobile_sdk/u11;

    return-object v0
.end method
