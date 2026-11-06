###### Class ads_mobile_sdk.jw0 (ads_mobile_sdk.jw0)
.class public final Lads_mobile_sdk/jw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lads_mobile_sdk/vv0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/tx;)V
    .registers 4

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lads_mobile_sdk/jw0;->a:Lads_mobile_sdk/ks1;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/jw0;Lads_mobile_sdk/k30;Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 950
    instance-of v0, p4, Lads_mobile_sdk/hw0;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/hw0;

    iget v1, v0, Lads_mobile_sdk/hw0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/hw0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/hw0;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/hw0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/hw0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1022
    iget v2, v0, Lads_mobile_sdk/hw0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/hw0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/hw0;->b:Lads_mobile_sdk/vv0;

    iget-object p2, v0, Lads_mobile_sdk/hw0;->a:Lads_mobile_sdk/jw0;

    :try_start_2f
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_80

    goto :goto_73

    .line 1023
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/hw0;->a:Lads_mobile_sdk/jw0;

    :try_start_3d
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_80

    goto :goto_5c

    .line 1024
    :cond_41
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1031
    :try_start_44
    iget-object p4, p0, Lads_mobile_sdk/jw0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p4}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/iw0;

    invoke-direct {v2, p1, p2, v5, p3}, Lads_mobile_sdk/iw0;-><init>(Lads_mobile_sdk/k30;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;Z)V

    iput-object p0, v0, Lads_mobile_sdk/hw0;->a:Lads_mobile_sdk/jw0;

    iput v4, v0, Lads_mobile_sdk/hw0;->f:I

    invoke-interface {p4, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5c

    goto :goto_6f

    .line 1032
    :cond_5c
    :goto_5c
    move-object p1, p4

    check-cast p1, Lads_mobile_sdk/vv0;

    .line 1052
    iget-object p2, p0, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 1184
    iput-object p0, v0, Lads_mobile_sdk/hw0;->a:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/hw0;->b:Lads_mobile_sdk/vv0;

    iput-object p2, v0, Lads_mobile_sdk/hw0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/hw0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6d} :catch_80

    if-ne p3, v1, :cond_70

    :goto_6f
    return-object v1

    :cond_70
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    .line 1185
    :goto_73
    :try_start_73
    iput-object p1, p2, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_7b

    .line 1321
    :try_start_77
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_94

    :catchall_7b
    move-exception p1

    .line 1322
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_80

    :catch_80
    move-exception p0

    .line 1323
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 1327
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    const/4 p3, 0x0

    iput-boolean p3, p2, Lads_mobile_sdk/uj2;->m:Z

    .line 1328
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1329
    :goto_94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/jw0;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 583
    instance-of v0, p3, Lads_mobile_sdk/fw0;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/fw0;

    iget v1, v0, Lads_mobile_sdk/fw0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fw0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/fw0;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/fw0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/fw0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 716
    iget v2, v0, Lads_mobile_sdk/fw0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/fw0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/fw0;->b:Lads_mobile_sdk/vv0;

    iget-object p2, v0, Lads_mobile_sdk/fw0;->a:Lads_mobile_sdk/jw0;

    :try_start_2f
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_80

    goto :goto_73

    .line 717
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/fw0;->a:Lads_mobile_sdk/jw0;

    :try_start_3d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_80

    goto :goto_5c

    .line 718
    :cond_41
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 721
    :try_start_44
    iget-object p3, p0, Lads_mobile_sdk/jw0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/gw0;

    invoke-direct {v2, p2, p1, v5}, Lads_mobile_sdk/gw0;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/fw0;->a:Lads_mobile_sdk/jw0;

    iput v4, v0, Lads_mobile_sdk/fw0;->f:I

    invoke-interface {p3, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5c

    goto :goto_6f

    .line 722
    :cond_5c
    :goto_5c
    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/vv0;

    .line 734
    iget-object p2, p0, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 835
    iput-object p0, v0, Lads_mobile_sdk/fw0;->a:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/fw0;->b:Lads_mobile_sdk/vv0;

    iput-object p2, v0, Lads_mobile_sdk/fw0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/fw0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6d} :catch_80

    if-ne p3, v1, :cond_70

    :goto_6f
    return-object v1

    :cond_70
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    .line 836
    :goto_73
    :try_start_73
    iput-object p1, p2, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_7b

    .line 941
    :try_start_77
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_94

    :catchall_7b
    move-exception p1

    .line 942
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_80

    :catch_80
    move-exception p0

    .line 943
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 947
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    const/4 p3, 0x0

    iput-boolean p3, p2, Lads_mobile_sdk/uj2;->m:Z

    .line 948
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 949
    :goto_94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 60
    instance-of v0, p1, Lads_mobile_sdk/yv0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/yv0;

    iget v1, v0, Lads_mobile_sdk/yv0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yv0;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/yv0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/yv0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/yv0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 215
    iget v2, v0, Lads_mobile_sdk/yv0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    iput v3, v0, Lads_mobile_sdk/yv0;->c:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/jw0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3d

    return-object v1

    .line 217
    :cond_3d
    :goto_3d
    check-cast p1, Lads_mobile_sdk/k30;

    .line 219
    invoke-virtual {p1}, Lads_mobile_sdk/k30;->C()Z

    move-result p0

    if-nez p0, :cond_47

    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_47
    invoke-static {}, Lads_mobile_sdk/qb0;->z()Lads_mobile_sdk/pb0;

    move-result-object p0

    const-string v0, "newBuilder(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lads_mobile_sdk/k30;->A()Lads_mobile_sdk/hj2;

    move-result-object v0

    const-string v1, "getPatternMatchingFlag(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v0}, Lads_mobile_sdk/pb0;->a(Lads_mobile_sdk/hj2;)V

    .line 363
    invoke-virtual {p1}, Lads_mobile_sdk/k30;->B()Lads_mobile_sdk/yp2;

    move-result-object v0

    const-string v2, "getPreProcessingFlag(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, v0}, Lads_mobile_sdk/pb0;->a(Lads_mobile_sdk/yp2;)V

    .line 437
    new-instance v0, Lads_mobile_sdk/no0;

    .line 438
    invoke-virtual {p0}, Lads_mobile_sdk/pb0;->h()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getConcatenatedSignalsMapMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-direct {v0, v1}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 440
    invoke-virtual {p1}, Lads_mobile_sdk/k30;->v()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, p1}, Lads_mobile_sdk/pb0;->a(Ljava/util/Map;)V

    .line 582
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lads_mobile_sdk/qb0;

    return-object p0
.end method

.method public static synthetic b(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zv0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zv0;

    iget v1, v0, Lads_mobile_sdk/zv0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zv0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zv0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zv0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zv0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lads_mobile_sdk/zv0;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_53

    if-eq v2, v5, :cond_47

    if-eq v2, v4, :cond_41

    if-ne v2, v3, :cond_39

    iget-object p0, v0, Lads_mobile_sdk/zv0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/zv0;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/vv0;

    iget-object v0, v0, Lads_mobile_sdk/zv0;->a:Lads_mobile_sdk/jw0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a2

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    iget-object p0, v0, Lads_mobile_sdk/zv0;->a:Lads_mobile_sdk/jw0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_86

    :cond_47
    iget-object p0, v0, Lads_mobile_sdk/zv0;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/zv0;->a:Lads_mobile_sdk/jw0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_65

    :cond_53
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 192
    iput-object p0, v0, Lads_mobile_sdk/zv0;->a:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/zv0;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/zv0;->f:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_65

    goto :goto_9e

    .line 193
    :cond_65
    :goto_65
    :try_start_65
    iget-object v2, p0, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_b7

    .line 348
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v2, :cond_6d

    return-object v2

    .line 349
    :cond_6d
    iget-object p1, p0, Lads_mobile_sdk/jw0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lads_mobile_sdk/zv0;->a:Lads_mobile_sdk/jw0;

    iput-object v6, v0, Lads_mobile_sdk/zv0;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/zv0;->f:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_86

    goto :goto_9e

    .line 350
    :cond_86
    :goto_86
    check-cast p1, Lads_mobile_sdk/vv0;

    if-nez p1, :cond_8e

    invoke-static {}, Lads_mobile_sdk/vv0;->x()Lads_mobile_sdk/vv0;

    move-result-object p1

    .line 351
    :cond_8e
    iget-object v2, p0, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 509
    iput-object p0, v0, Lads_mobile_sdk/zv0;->a:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/zv0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/zv0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/zv0;->f:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9f

    :goto_9e
    return-object v1

    :cond_9f
    move-object v0, p0

    move-object v1, p1

    move-object p0, v2

    .line 510
    :goto_a2
    :try_start_a2
    iget-object p1, v0, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;

    if-nez p1, :cond_ab

    .line 512
    iput-object v1, v0, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_a9

    goto :goto_ac

    :catchall_a9
    move-exception p1

    goto :goto_b3

    :cond_ab
    move-object v1, p1

    .line 671
    :goto_ac
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 672
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    .line 834
    :goto_b3
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_b7
    move-exception p0

    .line 835
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic c(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/aw0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/aw0;

    iget v1, v0, Lads_mobile_sdk/aw0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/aw0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/aw0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/aw0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/aw0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, v0, Lads_mobile_sdk/aw0;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/aw0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/aw0;->a:Lads_mobile_sdk/jw0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 214
    iput-object p0, v0, Lads_mobile_sdk/aw0;->a:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/aw0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/aw0;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 215
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_5d

    .line 373
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p0, :cond_55

    .line 374
    invoke-virtual {p0}, Lads_mobile_sdk/vv0;->B()Ljava/util/Map;

    move-result-object v4

    :cond_55
    if-nez v4, :cond_5c

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_5c
    return-object v4

    :catchall_5d
    move-exception p0

    .line 532
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/xv0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/xv0;

    iget v1, v0, Lads_mobile_sdk/xv0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xv0;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xv0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/xv0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/xv0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lads_mobile_sdk/xv0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lads_mobile_sdk/xv0;->c:I

    .line 58
    invoke-static {p0, v0}, Lads_mobile_sdk/jw0;->b(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3d

    return-object v1

    .line 59
    :cond_3d
    :goto_3d
    check-cast p1, Lads_mobile_sdk/vv0;

    invoke-virtual {p1}, Lads_mobile_sdk/vv0;->w()Lads_mobile_sdk/k30;

    move-result-object p1

    const-string v0, "getConsentState(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 836
    instance-of v0, p1, Lads_mobile_sdk/cw0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/cw0;

    iget v1, v0, Lads_mobile_sdk/cw0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cw0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/cw0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/cw0;-><init>(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/cw0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 948
    iget v2, v0, Lads_mobile_sdk/cw0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_43

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object v1, v0, Lads_mobile_sdk/cw0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/cw0;->b:Lads_mobile_sdk/vv0;

    iget-object v0, v0, Lads_mobile_sdk/cw0;->a:Lads_mobile_sdk/jw0;

    :try_start_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_75

    :catch_33
    move-exception p1

    goto :goto_82

    .line 949
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object v2, v0, Lads_mobile_sdk/cw0;->a:Lads_mobile_sdk/jw0;

    :try_start_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_33

    goto :goto_5f

    .line 950
    :cond_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 953
    :try_start_46
    iget-object p1, p0, Lads_mobile_sdk/jw0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/dw0;

    invoke-direct {v2, v5}, Lads_mobile_sdk/dw0;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/cw0;->a:Lads_mobile_sdk/jw0;

    iput v4, v0, Lads_mobile_sdk/cw0;->f:I

    invoke-interface {p1, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5e

    goto :goto_71

    :cond_5e
    move-object v2, p0

    .line 954
    :goto_5f
    check-cast p1, Lads_mobile_sdk/vv0;

    .line 958
    iget-object v4, v2, Lads_mobile_sdk/jw0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 1077
    iput-object v2, v0, Lads_mobile_sdk/cw0;->a:Lads_mobile_sdk/jw0;

    iput-object p1, v0, Lads_mobile_sdk/cw0;->b:Lads_mobile_sdk/vv0;

    iput-object v4, v0, Lads_mobile_sdk/cw0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/cw0;->f:I

    invoke-interface {v4, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6f} :catch_33

    if-ne v0, v1, :cond_72

    :goto_71
    return-object v1

    :cond_72
    move-object v0, v2

    move-object v1, v4

    move-object v2, p1

    .line 1078
    :goto_75
    :try_start_75
    iput-object v2, v0, Lads_mobile_sdk/jw0;->c:Lads_mobile_sdk/vv0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_7d

    .line 1201
    :try_start_79
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_95

    :catchall_7d
    move-exception p1

    .line 1202
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_82} :catch_33

    .line 1203
    :goto_82
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 1207
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lads_mobile_sdk/uj2;->m:Z

    .line 1208
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1209
    :goto_95
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
