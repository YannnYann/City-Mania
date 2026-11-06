###### Class ads_mobile_sdk.gp3 (ads_mobile_sdk.gp3)
.class public final Lads_mobile_sdk/gp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/no3;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/i2;

.field public final c:Lads_mobile_sdk/v3;

.field public final d:Lads_mobile_sdk/f73;

.field public final e:Lads_mobile_sdk/rq3;

.field public final f:Ljava/util/Optional;

.field public volatile g:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/i2;Lads_mobile_sdk/v3;Lads_mobile_sdk/f73;Lads_mobile_sdk/rq3;Ljava/util/Optional;)V
    .registers 8

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardedEventEmitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thirdPartyVideoEventEmitter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdMapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 29
    iput-object p2, p0, Lads_mobile_sdk/gp3;->b:Lads_mobile_sdk/i2;

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/gp3;->c:Lads_mobile_sdk/v3;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/gp3;->d:Lads_mobile_sdk/f73;

    .line 32
    iput-object p5, p0, Lads_mobile_sdk/gp3;->e:Lads_mobile_sdk/rq3;

    .line 33
    iput-object p6, p0, Lads_mobile_sdk/gp3;->f:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 13

    .line 53
    iget-object v0, p0, Lads_mobile_sdk/gp3;->f:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "block"

    const-string v2, "context"

    const-string v3, "<this>"

    const/4 v4, 0x0

    if-eqz v0, :cond_43

    .line 55
    iget-object v0, p0, Lads_mobile_sdk/gp3;->f:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/p12;

    invoke-interface {v0}, Lads_mobile_sdk/p12;->b()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/gp3;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->q0:Lads_mobile_sdk/h2;

    .line 57
    sget-object v5, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    if-ne v0, v5, :cond_6c

    .line 59
    iget-object v6, p0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/to3;

    invoke-direct {v0, p0, v4}, Lads_mobile_sdk/to3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    .line 60
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 61
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v0, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_6c

    .line 320
    :cond_43
    iget-object v0, p0, Lads_mobile_sdk/gp3;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->q0:Lads_mobile_sdk/h2;

    sget-object v5, Lads_mobile_sdk/h2;->f:Lads_mobile_sdk/h2;

    if-ne v0, v5, :cond_4f

    .line 321
    iget-object v0, p0, Lads_mobile_sdk/gp3;->g:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_6c

    .line 323
    :cond_4f
    iget-object v5, p0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/uo3;

    invoke-direct {v0, p0, v4}, Lads_mobile_sdk/uo3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    .line 324
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 325
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v0, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 584
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lads_mobile_sdk/gp3;->g:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_74

    const/4 v1, 0x1

    invoke-static {v0, v4, v1, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_74
    return-void
.end method
