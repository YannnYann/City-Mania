###### Class ads_mobile_sdk.zd3 (ads_mobile_sdk.zd3)
.class public final Lads_mobile_sdk/zd3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lads_mobile_sdk/od3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .registers 4

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/zd3;->a:Lads_mobile_sdk/ks1;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/zd3;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/qd3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/qd3;

    iget v1, v0, Lads_mobile_sdk/qd3;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qd3;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/qd3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/qd3;-><init>(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/qd3;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 62
    iget v2, v0, Lads_mobile_sdk/qd3;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_40

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    iput v3, v0, Lads_mobile_sdk/qd3;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {p0, v0}, Lads_mobile_sdk/zd3;->c(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_40

    return-object v1

    .line 65
    :cond_40
    :goto_40
    check-cast p1, Lads_mobile_sdk/od3;

    .line 66
    invoke-virtual {p1}, Lads_mobile_sdk/od3;->A()Z

    move-result p0

    if-eqz p0, :cond_4d

    invoke-virtual {p1}, Lads_mobile_sdk/od3;->w()Lads_mobile_sdk/xp0;

    move-result-object p0

    return-object p0

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 71
    instance-of v0, p2, Lads_mobile_sdk/xd3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/xd3;

    iget v1, v0, Lads_mobile_sdk/xd3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xd3;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xd3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/xd3;-><init>(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/xd3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 117
    iget v2, v0, Lads_mobile_sdk/xd3;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/xd3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/xd3;->b:Lads_mobile_sdk/od3;

    iget-object v0, v0, Lads_mobile_sdk/xd3;->a:Lads_mobile_sdk/zd3;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_7f

    goto :goto_72

    .line 118
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/xd3;->a:Lads_mobile_sdk/zd3;

    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_7f

    goto :goto_5c

    .line 119
    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    :try_start_44
    iget-object p2, p0, Lads_mobile_sdk/zd3;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/yd3;

    invoke-direct {v2, p1, v5}, Lads_mobile_sdk/yd3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/xd3;->a:Lads_mobile_sdk/zd3;

    iput v4, v0, Lads_mobile_sdk/xd3;->f:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    goto :goto_6f

    .line 122
    :cond_5c
    :goto_5c
    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/od3;

    .line 125
    iget-object p2, p0, Lads_mobile_sdk/zd3;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 201
    iput-object p0, v0, Lads_mobile_sdk/xd3;->a:Lads_mobile_sdk/zd3;

    iput-object p1, v0, Lads_mobile_sdk/xd3;->b:Lads_mobile_sdk/od3;

    iput-object p2, v0, Lads_mobile_sdk/xd3;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/xd3;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_44 .. :try_end_6d} :catchall_7f

    if-ne v0, v1, :cond_70

    :goto_6f
    return-object v1

    :cond_70
    move-object v0, p0

    move-object p0, p2

    .line 202
    :goto_72
    :try_start_72
    iput-object p1, v0, Lads_mobile_sdk/zd3;->c:Lads_mobile_sdk/od3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_7a

    .line 282
    :try_start_76
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_96

    :catchall_7a
    move-exception p1

    .line 283
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p0

    .line 284
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update shared settings: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 286
    :goto_96
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/rd3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/rd3;

    iget v1, v0, Lads_mobile_sdk/rd3;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/rd3;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/rd3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/rd3;-><init>(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/rd3;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 69
    iget v2, v0, Lads_mobile_sdk/rd3;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_40

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lads_mobile_sdk/rd3;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {p0, v0}, Lads_mobile_sdk/zd3;->c(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_40

    return-object v1

    .line 71
    :cond_40
    :goto_40
    check-cast p1, Lads_mobile_sdk/od3;

    invoke-virtual {p1}, Lads_mobile_sdk/od3;->y()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/sd3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sd3;

    iget v1, v0, Lads_mobile_sdk/sd3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sd3;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/sd3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sd3;-><init>(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/sd3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, v0, Lads_mobile_sdk/sd3;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_53

    if-eq v2, v5, :cond_47

    if-eq v2, v4, :cond_41

    if-ne v2, v3, :cond_39

    iget-object p0, v0, Lads_mobile_sdk/sd3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/sd3;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/od3;

    iget-object v0, v0, Lads_mobile_sdk/sd3;->a:Lads_mobile_sdk/zd3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a2

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    iget-object p0, v0, Lads_mobile_sdk/sd3;->a:Lads_mobile_sdk/zd3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_86

    :cond_47
    iget-object p0, v0, Lads_mobile_sdk/sd3;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/sd3;->a:Lads_mobile_sdk/zd3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_65

    :cond_53
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lads_mobile_sdk/zd3;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 104
    iput-object p0, v0, Lads_mobile_sdk/sd3;->a:Lads_mobile_sdk/zd3;

    iput-object p1, v0, Lads_mobile_sdk/sd3;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/sd3;->f:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_65

    goto :goto_9e

    .line 105
    :cond_65
    :goto_65
    :try_start_65
    iget-object v2, p0, Lads_mobile_sdk/zd3;->c:Lads_mobile_sdk/od3;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_b2

    .line 177
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v2, :cond_6d

    return-object v2

    .line 178
    :cond_6d
    iget-object p1, p0, Lads_mobile_sdk/zd3;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lads_mobile_sdk/sd3;->a:Lads_mobile_sdk/zd3;

    iput-object v6, v0, Lads_mobile_sdk/sd3;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/sd3;->f:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_86

    goto :goto_9e

    .line 179
    :cond_86
    :goto_86
    check-cast p1, Lads_mobile_sdk/od3;

    if-nez p1, :cond_8e

    invoke-static {}, Lads_mobile_sdk/od3;->v()Lads_mobile_sdk/od3;

    move-result-object p1

    .line 180
    :cond_8e
    iget-object v2, p0, Lads_mobile_sdk/zd3;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 254
    iput-object p0, v0, Lads_mobile_sdk/sd3;->a:Lads_mobile_sdk/zd3;

    iput-object p1, v0, Lads_mobile_sdk/sd3;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/sd3;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/sd3;->f:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9f

    :goto_9e
    return-object v1

    :cond_9f
    move-object v0, p0

    move-object v1, p1

    move-object p0, v2

    .line 255
    :goto_a2
    :try_start_a2
    iput-object v1, v0, Lads_mobile_sdk/zd3;->c:Lads_mobile_sdk/od3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_ad

    .line 333
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 334
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    :catchall_ad
    move-exception p1

    .line 411
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_b2
    move-exception p0

    .line 412
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static d(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/td3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/td3;

    iget v1, v0, Lads_mobile_sdk/td3;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/td3;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/td3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/td3;-><init>(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/td3;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lads_mobile_sdk/td3;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_40

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lads_mobile_sdk/td3;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {p0, v0}, Lads_mobile_sdk/zd3;->c(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_40

    return-object v1

    .line 58
    :cond_40
    :goto_40
    check-cast p1, Lads_mobile_sdk/od3;

    invoke-virtual {p1}, Lads_mobile_sdk/od3;->z()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILads_mobile_sdk/j;)Ljava/lang/Object;
    .registers 4

    .line 68
    new-instance v0, Lads_mobile_sdk/wd3;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wd3;-><init>(I)V

    .line 69
    invoke-static {p0, v0, p2}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_10

    return-object p1

    :cond_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
