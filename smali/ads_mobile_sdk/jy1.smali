###### Class ads_mobile_sdk.jy1 (ads_mobile_sdk.jy1)
.class public final Lads_mobile_sdk/jy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/f0;

.field public final c:Lads_mobile_sdk/ix1;

.field public final d:Ljava/lang/String;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/an0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/ix1;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/an0;)V
    .registers 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProperties"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/jy1;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/jy1;->b:Lads_mobile_sdk/f0;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/jy1;->c:Lads_mobile_sdk/ix1;

    .line 28
    iput-object p4, p0, Lads_mobile_sdk/jy1;->d:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lads_mobile_sdk/jy1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iput-object p6, p0, Lads_mobile_sdk/jy1;->f:Lads_mobile_sdk/an0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/jy1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/fy1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lads_mobile_sdk/fy1;-><init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 37
    iget-object v6, p0, Lads_mobile_sdk/jy1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/gy1;

    invoke-direct {v9, p0, p1, p2}, Lads_mobile_sdk/gy1;-><init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 38
    iget-object v0, p0, Lads_mobile_sdk/jy1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/hy1;

    invoke-direct {v3, p0, p1, p2}, Lads_mobile_sdk/hy1;-><init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 39
    iget-object v6, p0, Lads_mobile_sdk/jy1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/iy1;

    invoke-direct {v9, p0, p1, p2}, Lads_mobile_sdk/iy1;-><init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 40
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->x:Lads_mobile_sdk/u11;

    return-object v0
.end method
