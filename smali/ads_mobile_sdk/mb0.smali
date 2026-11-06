###### Class ads_mobile_sdk.mb0 (ads_mobile_sdk.mb0)
.class public final Lads_mobile_sdk/mb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lads_mobile_sdk/d63;

.field public final e:Lkotlinx/coroutines/sync/Mutex;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/d63;Lads_mobile_sdk/j53;Lads_mobile_sdk/an0;Lads_mobile_sdk/zy;)V
    .registers 19

    move-object/from16 v2, p8

    .line 1
    const-string v3, "backgroundScope"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "flags"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clock"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "urlPinger"

    invoke-static {p5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestType"

    move-object/from16 v4, p6

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deviceProperties"

    move-object/from16 v5, p7

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "commonConfiguration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lads_mobile_sdk/mb0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 44
    iput-object p3, p0, Lads_mobile_sdk/mb0;->b:Lads_mobile_sdk/ex0;

    .line 45
    iput-object p4, p0, Lads_mobile_sdk/mb0;->c:Lads_mobile_sdk/tx;

    .line 46
    iput-object p5, p0, Lads_mobile_sdk/mb0;->d:Lads_mobile_sdk/d63;

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-static {v0, p1, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/mb0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 57
    invoke-virtual {v4}, Lads_mobile_sdk/j53;->d()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ad_format"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "api_v"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 60
    const-string p2, "s"

    const-string p3, "gmob_sdk"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 61
    const-string p2, "v"

    const-string p3, "3"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 62
    invoke-static {}, Lads_mobile_sdk/fb0;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "device"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 63
    invoke-virtual {v5}, Lads_mobile_sdk/an0;->g()Z

    move-result p3

    const-string v5, "0"

    if-eqz p3, :cond_87

    const-string p3, "1"

    goto :goto_88

    :cond_87
    move-object p3, v5

    :goto_88
    const-string v6, "is_bstar"

    invoke-static {v6, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 64
    const-string p3, "is_lite_sdk"

    invoke-static {p3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 65
    iget-object p3, v2, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    const-string v2, "gqi"

    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 66
    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os"

    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    move-object v2, p1

    move-object v5, p2

    filled-new-array/range {v0 .. v9}, [Lkotlin/Pair;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/mb0;->f:Ljava/util/Map;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mb0;->g:Ljava/util/ArrayList;

    .line 81
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mb0;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Lads_mobile_sdk/mb0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/gb0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/gb0;

    iget v1, v0, Lads_mobile_sdk/gb0;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gb0;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/gb0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/gb0;-><init>(Lads_mobile_sdk/mb0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/gb0;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 98
    iget v2, v0, Lads_mobile_sdk/gb0;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    if-ne v2, v3, :cond_36

    iget-object p0, v0, Lads_mobile_sdk/gb0;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/gb0;->d:Lads_mobile_sdk/ir3;

    iget-object v1, v0, Lads_mobile_sdk/gb0;->c:Lads_mobile_sdk/ir3;

    iget-object v2, v0, Lads_mobile_sdk/gb0;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/gb0;->a:Lads_mobile_sdk/mb0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_6f

    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    new-instance p2, Lads_mobile_sdk/ir3;

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, p0, Lads_mobile_sdk/mb0;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 101
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    .line 102
    invoke-direct {p2, v5, v6, p1}, Lads_mobile_sdk/ir3;-><init>(JLjava/lang/String;)V

    .line 103
    iget-object v2, p0, Lads_mobile_sdk/mb0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 231
    iput-object p0, v0, Lads_mobile_sdk/gb0;->a:Lads_mobile_sdk/mb0;

    iput-object p1, v0, Lads_mobile_sdk/gb0;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/gb0;->c:Lads_mobile_sdk/ir3;

    iput-object p2, v0, Lads_mobile_sdk/gb0;->d:Lads_mobile_sdk/ir3;

    iput-object v2, v0, Lads_mobile_sdk/gb0;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/gb0;->h:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6c

    return-object v1

    :cond_6c
    move-object v0, p0

    move-object v1, p2

    move-object p0, v2

    .line 232
    :goto_6f
    :try_start_6f
    iget-object v0, v0, Lads_mobile_sdk/mb0;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7a

    .line 364
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    :catchall_7a
    move-exception p1

    .line 365
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;
    .registers 7

    .line 513
    iget-object v0, p0, Lads_mobile_sdk/mb0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->z()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 642
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_16

    .line 649
    :cond_32
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&it="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&blat="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 767
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 2289
    instance-of v0, p5, Lads_mobile_sdk/lb0;

    if-eqz v0, :cond_13

    move-object v0, p5

    check-cast v0, Lads_mobile_sdk/lb0;

    iget v1, v0, Lads_mobile_sdk/lb0;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/lb0;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/lb0;

    invoke-direct {v0, p0, p5}, Lads_mobile_sdk/lb0;-><init>(Lads_mobile_sdk/mb0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p5, v0, Lads_mobile_sdk/lb0;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2397
    iget v2, v0, Lads_mobile_sdk/lb0;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    if-ne v2, v3, :cond_36

    iget-wide p3, v0, Lads_mobile_sdk/lb0;->e:J

    iget-object p1, v0, Lads_mobile_sdk/lb0;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/lb0;->c:Ljava/lang/String;

    iget-object v1, v0, Lads_mobile_sdk/lb0;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/lb0;->a:Lads_mobile_sdk/mb0;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p5, p1

    move-object p1, v1

    goto :goto_57

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2398
    iget-object p5, p0, Lads_mobile_sdk/mb0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 2527
    iput-object p0, v0, Lads_mobile_sdk/lb0;->a:Lads_mobile_sdk/mb0;

    iput-object p1, v0, Lads_mobile_sdk/lb0;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/lb0;->c:Ljava/lang/String;

    iput-object p5, v0, Lads_mobile_sdk/lb0;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p3, v0, Lads_mobile_sdk/lb0;->e:J

    iput v3, v0, Lads_mobile_sdk/lb0;->h:I

    invoke-interface {p5, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_56

    return-object v1

    :cond_56
    move-object v0, p0

    .line 2528
    :goto_57
    :try_start_57
    iget-object v1, v0, Lads_mobile_sdk/mb0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/ir3;

    if-eqz p2, :cond_72

    iget-object v0, v0, Lads_mobile_sdk/mb0;->g:Ljava/util/ArrayList;

    new-instance v1, Lads_mobile_sdk/eb0;

    .line 2529
    invoke-direct {v1, p1, p2, p3, p4}, Lads_mobile_sdk/eb0;-><init>(Ljava/lang/String;Lads_mobile_sdk/ir3;J)V

    .line 2530
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_70

    goto :goto_72

    :catchall_70
    move-exception p1

    goto :goto_78

    .line 2663
    :cond_72
    :goto_72
    invoke-interface {p5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2664
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2796
    :goto_78
    invoke-interface {p5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1825
    instance-of v0, p4, Lads_mobile_sdk/kb0;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/kb0;

    iget v1, v0, Lads_mobile_sdk/kb0;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kb0;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/kb0;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/kb0;-><init>(Lads_mobile_sdk/mb0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/kb0;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1896
    iget v2, v0, Lads_mobile_sdk/kb0;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    if-ne v2, v3, :cond_36

    iget-boolean p3, v0, Lads_mobile_sdk/kb0;->e:Z

    iget-object p1, v0, Lads_mobile_sdk/kb0;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kb0;->c:Ljava/lang/String;

    iget-object v1, v0, Lads_mobile_sdk/kb0;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/kb0;->a:Lads_mobile_sdk/mb0;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p1

    move-object p1, v1

    goto :goto_57

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1897
    iget-object p4, p0, Lads_mobile_sdk/mb0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 2027
    iput-object p0, v0, Lads_mobile_sdk/kb0;->a:Lads_mobile_sdk/mb0;

    iput-object p1, v0, Lads_mobile_sdk/kb0;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/kb0;->c:Ljava/lang/String;

    iput-object p4, v0, Lads_mobile_sdk/kb0;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p3, v0, Lads_mobile_sdk/kb0;->e:Z

    iput v3, v0, Lads_mobile_sdk/kb0;->h:I

    invoke-interface {p4, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_56

    return-object v1

    :cond_56
    move-object v0, p0

    :goto_57
    if-eqz p3, :cond_63

    .line 2028
    :try_start_59
    iget-object p3, v0, Lads_mobile_sdk/mb0;->f:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_68

    :catchall_61
    move-exception p1

    goto :goto_6e

    .line 2030
    :cond_63
    iget-object p3, v0, Lads_mobile_sdk/mb0;->f:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_61

    .line 2160
    :goto_68
    invoke-interface {p4, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2161
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2288
    :goto_6e
    invoke-interface {p4, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 768
    instance-of v2, v0, Lads_mobile_sdk/ib0;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ib0;

    iget v3, v2, Lads_mobile_sdk/ib0;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ib0;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ib0;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ib0;-><init>(Lads_mobile_sdk/mb0;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/ib0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 887
    iget v4, v2, Lads_mobile_sdk/ib0;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3a

    if-ne v4, v5, :cond_32

    iget-object v3, v2, Lads_mobile_sdk/ib0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v2, Lads_mobile_sdk/ib0;->a:Lads_mobile_sdk/mb0;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 888
    iget-object v0, v1, Lads_mobile_sdk/mb0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1017
    iput-object v1, v2, Lads_mobile_sdk/ib0;->a:Lads_mobile_sdk/mb0;

    iput-object v0, v2, Lads_mobile_sdk/ib0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/ib0;->e:I

    invoke-interface {v0, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_4c

    return-object v3

    :cond_4c
    move-object v3, v0

    move-object v2, v1

    .line 1018
    :goto_4e
    :try_start_4e
    new-instance v0, Lkotlin/Pair;

    iget-object v4, v2, Lads_mobile_sdk/mb0;->g:Ljava/util/ArrayList;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lads_mobile_sdk/mb0;->f:Ljava/util/Map;

    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_134

    .line 1151
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1152
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1155
    sget-object v10, Lads_mobile_sdk/jb0;->a:Lads_mobile_sdk/jb0;

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1287
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1288
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_87
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1289
    check-cast v6, Lads_mobile_sdk/eb0;

    .line 1290
    iget-object v7, v6, Lads_mobile_sdk/eb0;->b:Lads_mobile_sdk/ir3;

    invoke-virtual {v7}, Lads_mobile_sdk/ir3;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    .line 1420
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_af

    .line 1421
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    :cond_af
    check-cast v8, Ljava/util/List;

    .line 1427
    iget-object v6, v6, Lads_mobile_sdk/eb0;->a:Ljava/lang/String;

    .line 1564
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 1567
    :cond_b7
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1568
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1569
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/Iterable;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const-string v11, "+"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1571
    sget-object v7, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v7, v2, Lads_mobile_sdk/mb0;->c:Lads_mobile_sdk/tx;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Lads_mobile_sdk/m21;->a(Lads_mobile_sdk/tx;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1707
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    :cond_119
    const/16 v16, 0x3e

    const/16 v17, 0x0

    .line 1708
    const-string v10, ","

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1710
    iget-object v5, v2, Lads_mobile_sdk/mb0;->d:Lads_mobile_sdk/d63;

    invoke-virtual {v2, v3, v4, v0}, Lads_mobile_sdk/mb0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v5, v0}, Lads_mobile_sdk/d63;->a(Lads_mobile_sdk/d63;Landroid/net/Uri;)V

    .line 1711
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_134
    move-exception v0

    .line 1824
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
