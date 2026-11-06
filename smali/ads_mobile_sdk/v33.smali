###### Class ads_mobile_sdk.v33 (ads_mobile_sdk.v33)
.class public final Lads_mobile_sdk/v33;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/c63;

.field public final d:Lads_mobile_sdk/du1;

.field public final e:Lads_mobile_sdk/ji1;

.field public final f:Lads_mobile_sdk/pb;

.field public final g:I

.field public h:J

.field public i:Lads_mobile_sdk/ec3;

.field public final j:Lkotlinx/coroutines/sync/Mutex;

.field public k:[Lads_mobile_sdk/n33;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/c63;Lads_mobile_sdk/du1;Lads_mobile_sdk/ji1;Lads_mobile_sdk/pb;I)V
    .registers 9

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macroExpander"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdLoadEventEmitter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceResponseInfoCollector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/v33;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/v33;->b:Lads_mobile_sdk/tx;

    .line 42
    iput-object p3, p0, Lads_mobile_sdk/v33;->c:Lads_mobile_sdk/c63;

    .line 43
    iput-object p4, p0, Lads_mobile_sdk/v33;->d:Lads_mobile_sdk/du1;

    .line 44
    iput-object p5, p0, Lads_mobile_sdk/v33;->e:Lads_mobile_sdk/ji1;

    .line 45
    iput-object p6, p0, Lads_mobile_sdk/v33;->f:Lads_mobile_sdk/pb;

    .line 46
    iput p7, p0, Lads_mobile_sdk/v33;->g:I

    .line 48
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/v33;->h:J

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 51
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v0, p1, Lads_mobile_sdk/o33;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o33;

    iget v1, v0, Lads_mobile_sdk/o33;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o33;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/o33;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o33;-><init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/o33;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 194
    iget v2, v0, Lads_mobile_sdk/o33;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/o33;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/o33;->a:Lads_mobile_sdk/v33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4d

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 195
    iget-object p1, p0, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 281
    iput-object p0, v0, Lads_mobile_sdk/o33;->a:Lads_mobile_sdk/v33;

    iput-object p1, v0, Lads_mobile_sdk/o33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/o33;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4d

    return-object v1

    .line 282
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object p0, p0, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;

    if-nez p0, :cond_5b

    const-string p0, "results"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v4

    goto :goto_5b

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_71

    :cond_5b
    :goto_5b
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_58

    .line 372
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    const/16 v12, 0x3e

    const/4 v13, 0x0

    .line 373
    const-string v6, "_"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 463
    :goto_71
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(JLads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 3609
    instance-of v0, p4, Lads_mobile_sdk/u33;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/u33;

    iget v1, v0, Lads_mobile_sdk/u33;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u33;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/u33;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/u33;-><init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/u33;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3725
    iget v2, v0, Lads_mobile_sdk/u33;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-wide p1, v0, Lads_mobile_sdk/u33;->d:J

    iget-object p3, v0, Lads_mobile_sdk/u33;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/u33;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/u33;->a:Lads_mobile_sdk/v33;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p3

    move-object p3, v1

    goto :goto_53

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3729
    iget-object p4, p0, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 3842
    iput-object p0, v0, Lads_mobile_sdk/u33;->a:Lads_mobile_sdk/v33;

    iput-object p3, v0, Lads_mobile_sdk/u33;->b:Lads_mobile_sdk/i2;

    iput-object p4, v0, Lads_mobile_sdk/u33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/u33;->d:J

    iput v3, v0, Lads_mobile_sdk/u33;->g:I

    invoke-interface {p4, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_52

    return-object v1

    :cond_52
    move-object v0, p0

    .line 3843
    :goto_53
    :try_start_53
    iget p3, p3, Lads_mobile_sdk/i2;->w:I

    add-int/2addr p3, v3

    iget-object v1, v0, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_61

    const-string v2, "results"

    if-nez v1, :cond_63

    :try_start_5c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_63

    :catchall_61
    move-exception p1

    goto :goto_8e

    .line 3844
    :cond_63
    :goto_63
    array-length v1, v1

    :goto_64
    if-ge p3, v1, :cond_88

    .line 3845
    iget-object v3, v0, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;

    if-nez v3, :cond_6e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    .line 3846
    :cond_6e
    aget-object v3, v3, p3

    if-eqz v3, :cond_75

    .line 3847
    iget-object v5, v3, Lads_mobile_sdk/n33;->b:Lads_mobile_sdk/bs0;

    goto :goto_76

    :cond_75
    move-object v5, v4

    .line 3848
    :goto_76
    sget-object v6, Lads_mobile_sdk/bs0;->c:Lads_mobile_sdk/bs0;

    if-ne v5, v6, :cond_85

    .line 3849
    sget-object v5, Lads_mobile_sdk/bs0;->j:Lads_mobile_sdk/bs0;

    iput-object v5, v3, Lads_mobile_sdk/n33;->b:Lads_mobile_sdk/bs0;

    .line 3850
    iget-object v3, v3, Lads_mobile_sdk/n33;->a:Lads_mobile_sdk/i2;

    iget-object v5, v3, Lads_mobile_sdk/i2;->S:Ljava/util/List;

    invoke-virtual {v0, v5, v3, p1, p2}, Lads_mobile_sdk/v33;->a(Ljava/util/List;Lads_mobile_sdk/i2;J)V

    :cond_85
    add-int/lit8 p3, p3, 0x1

    goto :goto_64

    .line 3853
    :cond_88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8a
    .catchall {:try_start_5c .. :try_end_8a} :catchall_61

    .line 3962
    invoke-interface {p4, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 3963
    :goto_8e
    invoke-interface {p4, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1616
    instance-of v0, p2, Lads_mobile_sdk/q33;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/q33;

    iget v1, v0, Lads_mobile_sdk/q33;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/q33;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/q33;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/q33;-><init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/q33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1669
    iget v2, v0, Lads_mobile_sdk/q33;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/q33;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/q33;->b:Lads_mobile_sdk/ec3;

    iget-object v0, v0, Lads_mobile_sdk/q33;->a:Lads_mobile_sdk/v33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto/16 :goto_146

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1670
    iput-object p1, p0, Lads_mobile_sdk/v33;->i:Lads_mobile_sdk/ec3;

    .line 1671
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p2, p0, Lads_mobile_sdk/v33;->b:Lads_mobile_sdk/tx;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1673
    sget-object p2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput-wide v5, p0, Lads_mobile_sdk/v33;->h:J

    .line 1674
    iget-object p2, p0, Lads_mobile_sdk/v33;->f:Lads_mobile_sdk/pb;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1675
    const-string v2, "transaction"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1782
    iget-object v5, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v6, v5, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iput-object v6, p2, Lads_mobile_sdk/pb;->c:Lads_mobile_sdk/zy;

    .line 1784
    iget-object v5, v5, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/i2;

    const-string v6, "key"

    if-eqz v5, :cond_7d

    iget-object v5, v5, Lads_mobile_sdk/i2;->f0:Ljava/lang/String;

    if-eqz v5, :cond_7d

    .line 1785
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v5, v4

    :goto_7b
    if-nez v5, :cond_a5

    .line 1787
    :cond_7d
    iget-object v5, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v5, v5, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v5, v5, Lads_mobile_sdk/zy;->w:Ljava/lang/String;

    .line 1788
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a4

    iget-object v7, p2, Lads_mobile_sdk/pb;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1790
    const-string v8, "gads:nofill_response_id_fix:enabled"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1806
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v10, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v7, v8, v9, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object v5, v4

    .line 1807
    :cond_a5
    :goto_a5
    iget-object v7, p2, Lads_mobile_sdk/pb;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1809
    const-string v8, "gads:multicall_response_id_fix:enabled"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1825
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v7, v8, v6, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 1826
    iget-object v6, p2, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    if-nez v6, :cond_c8

    .line 1827
    iput-object v5, p2, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    goto :goto_c8

    .line 1830
    :cond_c6
    iput-object v5, p2, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    .line 1836
    :cond_c8
    :goto_c8
    iget-object v5, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v5, v5, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v5, v5, Lads_mobile_sdk/zy;->a:Ljava/lang/String;

    .line 1838
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_116

    .line 1839
    const-string v6, "replacementKey"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1978
    iget-object v2, p2, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e5

    goto :goto_134

    .line 1982
    :cond_e5
    iget-object v2, p2, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 1983
    iget-object v6, p2, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1986
    iget-object v6, p2, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1987
    iget-object v6, p2, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    iget-object v5, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v5, v5, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_105
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_134

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/i2;

    .line 1990
    invoke-virtual {p2, v6, v2}, Lads_mobile_sdk/pb;->a(Lads_mobile_sdk/i2;I)V

    add-int/2addr v2, v3

    goto :goto_105

    .line 1991
    :cond_116
    iget-object v2, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v2, v2, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_134

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/i2;

    .line 1992
    iget-object v6, p2, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Lads_mobile_sdk/pb;->a(Lads_mobile_sdk/i2;I)V

    goto :goto_11e

    .line 1993
    :cond_134
    :goto_134
    iget-object p2, p0, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 2113
    iput-object p0, v0, Lads_mobile_sdk/q33;->a:Lads_mobile_sdk/v33;

    iput-object p1, v0, Lads_mobile_sdk/q33;->b:Lads_mobile_sdk/ec3;

    iput-object p2, v0, Lads_mobile_sdk/q33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/q33;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_145

    return-object v1

    :cond_145
    move-object v0, p0

    .line 2114
    :goto_146
    :try_start_146
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lads_mobile_sdk/n33;

    iput-object p1, v0, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;

    .line 2115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_154
    .catchall {:try_start_146 .. :try_end_154} :catchall_158

    .line 2237
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_158
    move-exception p1

    .line 2238
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 3286
    instance-of v0, p2, Lads_mobile_sdk/t33;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/t33;

    iget v1, v0, Lads_mobile_sdk/t33;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t33;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/t33;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/t33;-><init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/t33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3348
    iget v2, v0, Lads_mobile_sdk/t33;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lads_mobile_sdk/t33;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/t33;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/t33;->a:Lads_mobile_sdk/v33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    goto :goto_50

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3349
    iget-object p2, p0, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 3474
    iput-object p0, v0, Lads_mobile_sdk/t33;->a:Lads_mobile_sdk/v33;

    iput-object p1, v0, Lads_mobile_sdk/t33;->b:Lads_mobile_sdk/i2;

    iput-object p2, v0, Lads_mobile_sdk/t33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/t33;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4d

    return-object v1

    :cond_4d
    move-object v0, p0

    move-object v6, p1

    move-object p1, p2

    .line 3475
    :goto_50
    :try_start_50
    iget-object p2, v0, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;

    if-nez p2, :cond_5e

    const-string p2, "results"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v4

    goto :goto_5e

    :catchall_5b
    move-exception v0

    move-object p2, v0

    goto :goto_78

    .line 3476
    :cond_5e
    :goto_5e
    iget v0, v6, Lads_mobile_sdk/i2;->w:I

    .line 3477
    new-instance v5, Lads_mobile_sdk/n33;

    sget-object v1, Lads_mobile_sdk/bs0;->b:Lads_mobile_sdk/as0;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v8

    .line 3478
    sget-object v7, Lads_mobile_sdk/bs0;->k:Lads_mobile_sdk/bs0;

    const/4 v10, 0x0

    .line 3479
    invoke-direct/range {v5 .. v10}, Lads_mobile_sdk/n33;-><init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/bs0;JLjava/lang/Integer;)V

    .line 3480
    aput-object v5, p2, v0

    .line 3481
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_5b

    .line 3607
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 3608
    :goto_78
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Lads_mobile_sdk/v01;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 2635
    instance-of v6, v5, Lads_mobile_sdk/s33;

    if-eqz v6, :cond_1d

    move-object v6, v5

    check-cast v6, Lads_mobile_sdk/s33;

    iget v7, v6, Lads_mobile_sdk/s33;->j:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_1d

    sub-int/2addr v7, v8

    iput v7, v6, Lads_mobile_sdk/s33;->j:I

    goto :goto_22

    :cond_1d
    new-instance v6, Lads_mobile_sdk/s33;

    invoke-direct {v6, v1, v5}, Lads_mobile_sdk/s33;-><init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v5, v6, Lads_mobile_sdk/s33;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 2704
    iget v8, v6, Lads_mobile_sdk/s33;->j:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_54

    if-ne v8, v9, :cond_4c

    iget-wide v2, v6, Lads_mobile_sdk/s33;->g:J

    iget-object v0, v6, Lads_mobile_sdk/s33;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v6, Lads_mobile_sdk/s33;->e:Ljava/lang/Integer;

    iget-object v7, v6, Lads_mobile_sdk/s33;->d:Lads_mobile_sdk/bs0;

    iget-object v8, v6, Lads_mobile_sdk/s33;->c:Lads_mobile_sdk/i2;

    iget-object v9, v6, Lads_mobile_sdk/s33;->b:Lads_mobile_sdk/v01;

    iget-object v6, v6, Lads_mobile_sdk/s33;->a:Lads_mobile_sdk/v33;

    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v8

    move-object v8, v6

    move-wide v5, v2

    move-object v3, v11

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    move-object v11, v0

    move-object v0, v9

    goto/16 :goto_d9

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2709
    iget-object v5, v1, Lads_mobile_sdk/v33;->f:Lads_mobile_sdk/pb;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2710
    const-string v8, "adConfiguration"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "renderResult"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2904
    instance-of v8, v0, Lads_mobile_sdk/q01;

    if-eqz v8, :cond_6e

    .line 2905
    invoke-virtual {v5, v2, v3, v4, v10}, Lads_mobile_sdk/pb;->a(Lads_mobile_sdk/i2;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    goto :goto_9c

    .line 2906
    :cond_6e
    instance-of v8, v0, Lads_mobile_sdk/l01;

    if-eqz v8, :cond_7b

    .line 2910
    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/l01;

    .line 2911
    iget-object v8, v8, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    .line 2912
    invoke-virtual {v5, v2, v3, v4, v8}, Lads_mobile_sdk/pb;->a(Lads_mobile_sdk/i2;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    goto :goto_9c

    .line 2913
    :cond_7b
    instance-of v8, v0, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_9c

    .line 2917
    new-instance v8, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    .line 2918
    move-object v11, v0

    check-cast v11, Lads_mobile_sdk/i01;

    invoke-virtual {v11}, Lads_mobile_sdk/i01;->a()Lads_mobile_sdk/kk1;

    move-result-object v11

    invoke-virtual {v11}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result v11

    .line 2919
    sget-object v12, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    .line 2920
    const-string v12, "Internal error."

    .line 2921
    const-string v13, "com.google.android.libraries.ads.mobile.sdk"

    invoke-direct {v8, v11, v12, v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2922
    invoke-virtual {v5, v2, v3, v4, v8}, Lads_mobile_sdk/pb;->a(Lads_mobile_sdk/i2;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    .line 2923
    :cond_9c
    :goto_9c
    sget-object v5, Lads_mobile_sdk/bs0;->b:Lads_mobile_sdk/as0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lads_mobile_sdk/as0;->a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/bs0;

    move-result-object v5

    .line 2924
    instance-of v8, v0, Lads_mobile_sdk/l01;

    if-eqz v8, :cond_ad

    move-object v8, v0

    check-cast v8, Lads_mobile_sdk/l01;

    goto :goto_ae

    :cond_ad
    move-object v8, v10

    :goto_ae
    if-eqz v8, :cond_b9

    .line 2925
    iget-object v8, v8, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    if-eqz v8, :cond_b9

    .line 2926
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->getCode()Ljava/lang/Integer;

    move-result-object v8

    goto :goto_ba

    :cond_b9
    move-object v8, v10

    .line 2928
    :goto_ba
    iget-object v11, v1, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 3044
    iput-object v1, v6, Lads_mobile_sdk/s33;->a:Lads_mobile_sdk/v33;

    iput-object v0, v6, Lads_mobile_sdk/s33;->b:Lads_mobile_sdk/v01;

    iput-object v2, v6, Lads_mobile_sdk/s33;->c:Lads_mobile_sdk/i2;

    iput-object v5, v6, Lads_mobile_sdk/s33;->d:Lads_mobile_sdk/bs0;

    iput-object v8, v6, Lads_mobile_sdk/s33;->e:Ljava/lang/Integer;

    iput-object v11, v6, Lads_mobile_sdk/s33;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v3, v6, Lads_mobile_sdk/s33;->g:J

    iput v9, v6, Lads_mobile_sdk/s33;->j:I

    invoke-interface {v11, v10, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_d3

    return-object v7

    :cond_d3
    move-wide v14, v3

    move-object v4, v5

    move-wide v5, v14

    move-object v3, v2

    move-object v7, v8

    move-object v8, v1

    .line 3045
    :goto_d9
    :try_start_d9
    iget-object v2, v8, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;

    if-nez v2, :cond_e6

    const-string v2, "results"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v10

    goto :goto_e7

    :catchall_e4
    move-exception v0

    goto :goto_116

    :cond_e6
    move-object v9, v2

    .line 3046
    :goto_e7
    iget v12, v3, Lads_mobile_sdk/i2;->w:I

    .line 3047
    new-instance v2, Lads_mobile_sdk/n33;

    .line 3048
    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/n33;-><init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/bs0;JLjava/lang/Integer;)V

    .line 3049
    aput-object v2, v9, v12

    .line 3050
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f2
    .catchall {:try_start_d9 .. :try_end_f2} :catchall_e4

    .line 3167
    invoke-interface {v11, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3168
    instance-of v0, v0, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_115

    .line 3169
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v8, Lads_mobile_sdk/v33;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3171
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    iget-wide v6, v8, Lads_mobile_sdk/v33;->h:J

    invoke-static {v4, v5, v6, v7}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v4

    .line 3172
    iget-object v0, v3, Lads_mobile_sdk/i2;->S:Ljava/util/List;

    invoke-virtual {v8, v0, v3, v4, v5}, Lads_mobile_sdk/v33;->a(Ljava/util/List;Lads_mobile_sdk/i2;J)V

    :cond_115
    return-object v2

    .line 3285
    :goto_116
    invoke-interface {v11, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    .line 464
    instance-of v3, v0, Lads_mobile_sdk/p33;

    if-eqz v3, :cond_18

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/p33;

    iget v4, v3, Lads_mobile_sdk/p33;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_18

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/p33;->f:I

    goto :goto_1d

    :cond_18
    new-instance v3, Lads_mobile_sdk/p33;

    invoke-direct {v3, v1, v0}, Lads_mobile_sdk/p33;-><init>(Lads_mobile_sdk/v33;Lkotlin/coroutines/Continuation;)V

    :goto_1d
    iget-object v0, v3, Lads_mobile_sdk/p33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 558
    iget v5, v3, Lads_mobile_sdk/p33;->f:I

    const-string v6, "serverTransaction"

    const-string v7, "adapterResponses"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v5, :cond_6f

    if-eq v5, v2, :cond_65

    if-eq v5, v10, :cond_59

    if-eq v5, v9, :cond_4c

    if-ne v5, v8, :cond_44

    iget-wide v4, v3, Lads_mobile_sdk/p33;->c:J

    iget-object v2, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/i2;

    iget-object v3, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_19c

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    iget-wide v9, v3, Lads_mobile_sdk/p33;->c:J

    iget-object v2, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/i2;

    iget-object v5, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15e

    :cond_59
    iget-wide v12, v3, Lads_mobile_sdk/p33;->c:J

    iget-object v5, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b1

    :cond_65
    iget-object v5, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    :cond_6f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 559
    iget-object v5, v1, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 674
    iput-object v1, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    iput-object v5, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    iput v2, v3, Lads_mobile_sdk/p33;->f:I

    invoke-interface {v5, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_82

    goto/16 :goto_199

    :cond_82
    move-object v12, v1

    .line 675
    :goto_83
    :try_start_83
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v12, Lads_mobile_sdk/v33;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 677
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v13, v14, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    iget-wide v8, v12, Lads_mobile_sdk/v33;->h:J

    invoke-static {v13, v14, v8, v9}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v8
    :try_end_9a
    .catchall {:try_start_83 .. :try_end_9a} :catchall_1c0

    .line 796
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 797
    iget-object v5, v12, Lads_mobile_sdk/v33;->j:Lkotlinx/coroutines/sync/Mutex;

    .line 921
    iput-object v12, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    iput-object v5, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    iput-wide v8, v3, Lads_mobile_sdk/p33;->c:J

    iput v10, v3, Lads_mobile_sdk/p33;->f:I

    invoke-interface {v5, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_af

    goto/16 :goto_199

    :cond_af
    move-object v10, v12

    move-wide v12, v8

    .line 922
    :goto_b1
    :try_start_b1
    iget-object v8, v10, Lads_mobile_sdk/v33;->k:[Lads_mobile_sdk/n33;

    if-nez v8, :cond_bf

    const-string v8, "results"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v11

    goto :goto_bf

    :catchall_bc
    move-exception v0

    goto/16 :goto_1bc

    .line 1048
    :cond_bf
    :goto_bf
    array-length v9, v8

    const/4 v15, 0x0

    :goto_c1
    if-ge v15, v9, :cond_d9

    aget-object v0, v8, v15

    if-eqz v0, :cond_cc

    move/from16 v17, v2

    .line 1049
    iget-object v2, v0, Lads_mobile_sdk/n33;->b:Lads_mobile_sdk/bs0;

    goto :goto_cf

    :cond_cc
    move/from16 v17, v2

    move-object v2, v11

    .line 1050
    :goto_cf
    sget-object v14, Lads_mobile_sdk/bs0;->c:Lads_mobile_sdk/bs0;

    if-ne v2, v14, :cond_d4

    goto :goto_da

    :cond_d4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    goto :goto_c1

    :cond_d9
    move-object v0, v11

    :goto_da
    if-eqz v0, :cond_df

    .line 1051
    iget-object v0, v0, Lads_mobile_sdk/n33;->a:Lads_mobile_sdk/i2;
    :try_end_de
    .catchall {:try_start_b1 .. :try_end_de} :catchall_bc

    goto :goto_e0

    :cond_df
    move-object v0, v11

    .line 1179
    :goto_e0
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v0, :cond_1a8

    .line 1180
    iget-object v2, v10, Lads_mobile_sdk/v33;->f:Lads_mobile_sdk/pb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    const-string v5, "winningAdConfiguration"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    iget-object v5, v2, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    iget-object v8, v0, Lads_mobile_sdk/i2;->d:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    if-nez v5, :cond_fc

    goto :goto_14b

    .line 1449
    :cond_fc
    iget-object v5, v2, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    iget-object v8, v0, Lads_mobile_sdk/i2;->d:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 1450
    iput-object v5, v2, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 1452
    iget-object v8, v2, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1453
    iget-object v8, v2, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lkotlin/ranges/IntRange;

    const/4 v14, 0x0

    invoke-direct {v9, v14, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v2, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    .line 1455
    iget-object v5, v2, Lads_mobile_sdk/pb;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1457
    const-string v8, "key"

    const-string v9, "gads:multicall_response_id_fix:enabled"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v14, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v9, v8, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_147

    .line 1474
    iget-object v5, v0, Lads_mobile_sdk/i2;->f0:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_147

    .line 1475
    iget-object v5, v0, Lads_mobile_sdk/i2;->f0:Ljava/lang/String;

    iput-object v5, v2, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    .line 1478
    :cond_147
    iget-object v5, v0, Lads_mobile_sdk/i2;->G0:Lcom/google/gson/JsonObject;

    iput-object v5, v2, Lads_mobile_sdk/pb;->d:Lcom/google/gson/JsonObject;

    .line 1479
    :goto_14b
    iput-object v10, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    iput-object v0, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    iput-wide v12, v3, Lads_mobile_sdk/p33;->c:J

    const/4 v2, 0x3

    iput v2, v3, Lads_mobile_sdk/p33;->f:I

    invoke-virtual {v10, v12, v13, v0, v3}, Lads_mobile_sdk/v33;->a(JLads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_15b

    goto :goto_199

    :cond_15b
    move-object v2, v0

    move-object v5, v10

    move-wide v9, v12

    .line 1481
    :goto_15e
    iget-object v0, v5, Lads_mobile_sdk/v33;->e:Lads_mobile_sdk/ji1;

    .line 1482
    iget-object v8, v5, Lads_mobile_sdk/v33;->i:Lads_mobile_sdk/ec3;

    if-nez v8, :cond_168

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v11

    .line 1484
    :cond_168
    iget-object v6, v5, Lads_mobile_sdk/v33;->f:Lads_mobile_sdk/pb;

    .line 1485
    new-instance v12, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 1486
    iget-object v13, v6, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    if-eqz v13, :cond_175

    .line 1487
    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v13

    goto :goto_176

    :cond_175
    move-object v13, v11

    .line 1488
    :goto_176
    iget-object v14, v6, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    .line 1489
    invoke-virtual {v6, v11}, Lads_mobile_sdk/pb;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v15

    .line 1490
    iget-object v11, v6, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 1491
    iget-object v6, v6, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v6

    move-object/from16 v16, v11

    .line 1492
    invoke-direct/range {v12 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;Ljava/util/List;)V

    .line 1493
    iput-object v5, v3, Lads_mobile_sdk/p33;->a:Lads_mobile_sdk/v33;

    iput-object v2, v3, Lads_mobile_sdk/p33;->b:Ljava/lang/Object;

    iput-wide v9, v3, Lads_mobile_sdk/p33;->c:J

    const/4 v6, 0x4

    iput v6, v3, Lads_mobile_sdk/p33;->f:I

    invoke-virtual {v0, v8, v2, v12, v3}, Lads_mobile_sdk/ji1;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_19a

    :goto_199
    return-object v4

    :cond_19a
    move-object v3, v5

    move-wide v4, v9

    .line 1498
    :goto_19c
    iget-object v0, v2, Lads_mobile_sdk/i2;->D:Ljava/util/List;

    iget-object v6, v2, Lads_mobile_sdk/i2;->e:Ljava/util/List;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v4, v5}, Lads_mobile_sdk/v33;->a(Ljava/util/List;Lads_mobile_sdk/i2;J)V

    goto :goto_1b9

    .line 1500
    :cond_1a8
    iget-object v0, v10, Lads_mobile_sdk/v33;->i:Lads_mobile_sdk/ec3;

    if-nez v0, :cond_1b0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v11

    :cond_1b0
    iget-object v0, v0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v0, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v0, v0, Lads_mobile_sdk/zy;->m:Ljava/util/List;

    invoke-virtual {v10, v0, v11, v12, v13}, Lads_mobile_sdk/v33;->a(Ljava/util/List;Lads_mobile_sdk/i2;J)V

    .line 1502
    :goto_1b9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1614
    :goto_1bc
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_1c0
    move-exception v0

    .line 1615
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Ljava/util/List;Lads_mobile_sdk/i2;J)V
    .registers 15

    .line 2371
    iget-object v0, p0, Lads_mobile_sdk/v33;->i:Lads_mobile_sdk/ec3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "serverTransaction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-boolean v0, v0, Lads_mobile_sdk/ec3;->c:Z

    if-eqz v0, :cond_10

    return-void

    .line 2374
    :cond_10
    iget-object v2, p0, Lads_mobile_sdk/v33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/r33;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v9}, Lads_mobile_sdk/r33;-><init>(Lads_mobile_sdk/v33;Ljava/util/List;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)V

    move-object p1, v3

    .line 2375
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2376
    const-string p2, "<this>"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2634
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
