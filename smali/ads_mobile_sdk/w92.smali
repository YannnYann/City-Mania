###### Class ads_mobile_sdk.w92 (ads_mobile_sdk.w92)
.class public final Lads_mobile_sdk/w92;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ca2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ca2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 210
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .registers 15

    .line 1
    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 213
    iget-object v0, v0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 216
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    .line 217
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/q92;

    invoke-direct {v0, v5, v6, p1}, Lads_mobile_sdk/q92;-><init>(JLandroid/net/Network;)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 218
    iget-object v4, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 219
    iget-object v0, v4, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 220
    new-instance v3, Lads_mobile_sdk/r92;

    const/4 v8, 0x0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lads_mobile_sdk/r92;-><init>(Lads_mobile_sdk/ca2;JLandroid/net/Network;Lkotlin/coroutines/Continuation;)V

    .line 221
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 222
    const-string p1, "<this>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    new-instance v10, Lads_mobile_sdk/ws3;

    const/4 p1, 0x0

    invoke-direct {v10, v3, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 16

    .line 1
    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCapabilities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 228
    iget-object v0, v0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 231
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    .line 232
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Lads_mobile_sdk/s92;

    invoke-direct {v0, v5, v6, p1, p2}, Lads_mobile_sdk/s92;-><init>(JLandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-static {v0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 235
    iget-object v4, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 236
    iget-object v0, v4, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 237
    new-instance v3, Lads_mobile_sdk/t92;

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lads_mobile_sdk/t92;-><init>(Lads_mobile_sdk/ca2;JLandroid/net/Network;Landroid/net/NetworkCapabilities;Lkotlin/coroutines/Continuation;)V

    .line 238
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 239
    const-string p1, "<this>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    new-instance v10, Lads_mobile_sdk/ws3;

    const/4 p1, 0x0

    invoke-direct {v10, v3, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .registers 10

    .line 1
    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 219
    iget-object v0, v0, Lads_mobile_sdk/ca2;->c:Lads_mobile_sdk/tx;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 222
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 223
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Lads_mobile_sdk/u92;

    invoke-direct {v2, v0, v1, p1}, Lads_mobile_sdk/u92;-><init>(JLandroid/net/Network;)V

    invoke-static {v2}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 224
    iget-object p1, p0, Lads_mobile_sdk/w92;->a:Lads_mobile_sdk/ca2;

    .line 225
    iget-object v2, p1, Lads_mobile_sdk/ca2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 226
    new-instance v3, Lads_mobile_sdk/v92;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v1, v4}, Lads_mobile_sdk/v92;-><init>(Lads_mobile_sdk/ca2;JLkotlin/coroutines/Continuation;)V

    move-object p1, v3

    .line 227
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 228
    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
