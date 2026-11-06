###### Class ads_mobile_sdk.lp3 (ads_mobile_sdk.lp3)
.class public final Lads_mobile_sdk/lp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zx0;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/v3;

.field public final c:Lads_mobile_sdk/no3;

.field public final d:Lads_mobile_sdk/np3;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/v3;Lads_mobile_sdk/no3;Lads_mobile_sdk/np3;Lads_mobile_sdk/f0;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thirdPartyEventEmitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thirdPartyFullscreenShowMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/lp3;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    iput-object p2, p0, Lads_mobile_sdk/lp3;->b:Lads_mobile_sdk/v3;

    .line 25
    iput-object p3, p0, Lads_mobile_sdk/lp3;->c:Lads_mobile_sdk/no3;

    .line 26
    iput-object p4, p0, Lads_mobile_sdk/lp3;->d:Lads_mobile_sdk/np3;

    .line 27
    iput-object p5, p0, Lads_mobile_sdk/lp3;->e:Lads_mobile_sdk/f0;

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/lp3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZ)V
    .registers 12

    .line 1
    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lads_mobile_sdk/lp3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_25

    .line 3
    const-string p1, "This ad has already been shown."

    .line 4
    invoke-static {p1, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lads_mobile_sdk/lp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/ip3;

    invoke-direct {p2, p0, v1}, Lads_mobile_sdk/ip3;-><init>(Lads_mobile_sdk/lp3;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 13
    const-string p1, "The ad has already been shown"

    const/4 p2, 0x6

    invoke-static {p1, v1, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void

    .line 14
    :cond_25
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_33

    .line 15
    iget-object p3, p0, Lads_mobile_sdk/lp3;->e:Lads_mobile_sdk/f0;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lads_mobile_sdk/r;->e:Lads_mobile_sdk/r;

    invoke-virtual {p3, v0, v2}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 19
    :cond_33
    :try_start_33
    iget-object p3, p0, Lads_mobile_sdk/lp3;->d:Lads_mobile_sdk/np3;

    invoke-interface {p3, p1}, Lads_mobile_sdk/np3;->showAd(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_5a

    .line 33
    iget-object v2, p0, Lads_mobile_sdk/lp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/kp3;

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/kp3;-><init>(Lads_mobile_sdk/lp3;Lkotlin/coroutines/Continuation;)V

    .line 34
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 35
    const-string p3, "<this>"

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catch_5a
    move-exception v0

    move-object p1, v0

    .line 294
    const-string p2, "Mediation Fullscreen Ad failed to show."

    const/4 p3, 0x4

    invoke-static {p2, p1, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 295
    iget-object p1, p0, Lads_mobile_sdk/lp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/jp3;

    invoke-direct {p2, p0, v1}, Lads_mobile_sdk/jp3;-><init>(Lads_mobile_sdk/lp3;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method
