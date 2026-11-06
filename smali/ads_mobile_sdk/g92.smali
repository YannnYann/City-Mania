###### Class ads_mobile_sdk.g92 (ads_mobile_sdk.g92)
.class public final Lads_mobile_sdk/g92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/b24;


# instance fields
.field public final a:Lads_mobile_sdk/ix1;

.field public final b:Ljava/util/Optional;

.field public final c:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ix1;Ljava/util/Optional;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 5

    .line 1
    const-string v0, "mraidAfmaDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalWebView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/g92;->a:Lads_mobile_sdk/ix1;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/g92;->b:Ljava/util/Optional;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/g92;->c:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final b(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 26
    iget-object p2, p0, Lads_mobile_sdk/g92;->b:Ljava/util/Optional;

    invoke-static {p2}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/r31;

    if-nez p2, :cond_d

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 36
    :cond_d
    iget-object p1, p1, Lads_mobile_sdk/ey3;->a:Lads_mobile_sdk/gy3;

    sget-object v0, Lads_mobile_sdk/gy3;->a:Lads_mobile_sdk/gy3;

    if-eq p1, v0, :cond_17

    .line 37
    sget-object v0, Lads_mobile_sdk/gy3;->b:Lads_mobile_sdk/gy3;

    if-ne p1, v0, :cond_26

    .line 39
    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/g92;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/f92;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p2, p1}, Lads_mobile_sdk/f92;-><init>(Lads_mobile_sdk/g92;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 41
    :cond_26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
