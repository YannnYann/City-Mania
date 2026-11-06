###### Class ads_mobile_sdk.hm0 (ads_mobile_sdk.hm0)
.class public final Lads_mobile_sdk/hm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "getThirdPartyEventEmitter()Lcom/google/android/libraries/ads/mobile/sdk/internal/event/ThirdPartyEventEmitter;"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/hm0;

    const-string v3, "thirdPartyEventEmitter"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/hm0;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lads_mobile_sdk/tn3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/hm0;->a:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/no3;
    .registers 4

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/hm0;->a:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/hm0;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/no3;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/AdError;)V
    .registers 12

    .line 20
    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v1

    if-eqz v1, :cond_3c

    check-cast v1, Lads_mobile_sdk/gp3;

    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, v1, Lads_mobile_sdk/gp3;->g:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 207
    :cond_19
    iget-object v4, v1, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/po3;

    invoke-direct {v0, v1, p1, v2}, Lads_mobile_sdk/po3;-><init>(Lads_mobile_sdk/gp3;Lcom/google/android/gms/ads/AdError;Lkotlin/coroutines/Continuation;)V

    .line 208
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 209
    const-string p1, "<this>"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance v7, Lads_mobile_sdk/ws3;

    invoke-direct {v7, v0, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3c
    return-void
.end method

.method public final b()V
    .registers 4

    .line 26
    invoke-virtual {p0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Lads_mobile_sdk/gp3;

    .line 27
    new-instance v1, Lads_mobile_sdk/oo3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lads_mobile_sdk/oo3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method public final c()V
    .registers 11

    .line 34
    invoke-virtual {p0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_41

    check-cast v0, Lads_mobile_sdk/gp3;

    .line 35
    new-instance v1, Lads_mobile_sdk/qo3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lads_mobile_sdk/qo3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, v0, Lads_mobile_sdk/gp3;->b:Lads_mobile_sdk/i2;

    iget-object v1, v1, Lads_mobile_sdk/i2;->q0:Lads_mobile_sdk/h2;

    .line 39
    sget-object v3, Lads_mobile_sdk/h2;->d:Lads_mobile_sdk/h2;

    if-eq v1, v3, :cond_1e

    .line 41
    sget-object v3, Lads_mobile_sdk/h2;->e:Lads_mobile_sdk/h2;

    if-ne v1, v3, :cond_41

    .line 43
    :cond_1e
    iget-object v4, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/ro3;

    invoke-direct {v1, v0, v2}, Lads_mobile_sdk/ro3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    .line 44
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 45
    const-string v0, "<this>"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    new-instance v7, Lads_mobile_sdk/ws3;

    invoke-direct {v7, v1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_41
    return-void
.end method

.method public final d()V
    .registers 8

    .line 58
    invoke-virtual {p0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_2c

    check-cast v0, Lads_mobile_sdk/gp3;

    .line 59
    iget-object v1, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/so3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/so3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 60
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 61
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2c
    return-void
.end method

.method public final e()V
    .registers 2

    .line 62
    invoke-virtual {p0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Lads_mobile_sdk/gp3;

    invoke-virtual {v0}, Lads_mobile_sdk/gp3;->a()V

    :cond_b
    return-void
.end method

.method public final f()V
    .registers 8

    .line 83
    invoke-virtual {p0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_2c

    check-cast v0, Lads_mobile_sdk/gp3;

    .line 84
    iget-object v1, v0, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/bp3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/bp3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 85
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 86
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2c
    return-void
.end method
