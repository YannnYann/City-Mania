###### Class ads_mobile_sdk.hr (ads_mobile_sdk.hr)
.class public abstract Lads_mobile_sdk/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xw0;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lads_mobile_sdk/jw0;

.field public final d:Lads_mobile_sdk/xb0;

.field public final e:Lads_mobile_sdk/cb3;

.field public final f:Lads_mobile_sdk/mm;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Lkotlinx/coroutines/sync/Mutex;

.field public j:Lcom/google/gson/JsonObject;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/jw0;Lads_mobile_sdk/xb0;Lads_mobile_sdk/cb3;Lads_mobile_sdk/mm;)V
    .registers 7

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagDataStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csrbDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkCoreDataStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsDataStore"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lads_mobile_sdk/hr;->b:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lads_mobile_sdk/hr;->c:Lads_mobile_sdk/jw0;

    .line 217
    iput-object p3, p0, Lads_mobile_sdk/hr;->d:Lads_mobile_sdk/xb0;

    .line 218
    iput-object p4, p0, Lads_mobile_sdk/hr;->e:Lads_mobile_sdk/cb3;

    .line 219
    iput-object p5, p0, Lads_mobile_sdk/hr;->f:Lads_mobile_sdk/mm;

    .line 221
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/hr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/hr;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    const/4 p3, 0x0

    .line 223
    invoke-static {p2, p1, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/hr;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 570
    invoke-static {}, Lads_mobile_sdk/k30;->D()Lads_mobile_sdk/j30;

    move-result-object p1

    const-string p3, "newBuilder(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lads_mobile_sdk/l30;->a(Lads_mobile_sdk/j30;)Lads_mobile_sdk/m30;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/m30;->a()Lads_mobile_sdk/k30;

    move-result-object p1

    .line 571
    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p4, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 917
    invoke-static {}, Lads_mobile_sdk/hj2;->y()Lads_mobile_sdk/gj2;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lads_mobile_sdk/ij2;->a(Lads_mobile_sdk/gj2;)Lads_mobile_sdk/jj2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/jj2;->a()Lads_mobile_sdk/hj2;

    move-result-object p1

    .line 918
    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p4, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lads_mobile_sdk/hr;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1264
    invoke-static {}, Lads_mobile_sdk/yp2;->y()Lads_mobile_sdk/xp2;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lads_mobile_sdk/zp2;->a(Lads_mobile_sdk/xp2;)Lads_mobile_sdk/aq2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/aq2;->a()Lads_mobile_sdk/yp2;

    move-result-object p1

    .line 1265
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lads_mobile_sdk/hr;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1267
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/hr;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1269
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    instance-of v0, p1, Lads_mobile_sdk/vq;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/vq;

    iget v1, v0, Lads_mobile_sdk/vq;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vq;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/vq;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/vq;-><init>(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/vq;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 656
    iget v2, v0, Lads_mobile_sdk/vq;->d:I

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_5e

    if-eq v2, v9, :cond_58

    if-eq v2, v8, :cond_52

    if-eq v2, v7, :cond_4c

    if-eq v2, v6, :cond_46

    if-ne v2, v5, :cond_3e

    iget-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e1

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    iget-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a9

    :cond_4c
    iget-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_99

    :cond_52
    iget-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_89

    :cond_58
    iget-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_5e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 657
    iput-boolean v9, p0, Lads_mobile_sdk/hr;->q:Z

    .line 658
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 659
    const-string v2, "<set-?>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    iput-object p1, p0, Lads_mobile_sdk/hr;->j:Lcom/google/gson/JsonObject;

    .line 884
    iget-object p1, p0, Lads_mobile_sdk/hr;->c:Lads_mobile_sdk/jw0;

    iput-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    iput v9, v0, Lads_mobile_sdk/vq;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/jw0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7c

    goto :goto_e0

    .line 885
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lads_mobile_sdk/hr;->d:Lads_mobile_sdk/xb0;

    iput-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    iput v8, v0, Lads_mobile_sdk/vq;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/xb0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_89

    goto :goto_e0

    .line 886
    :cond_89
    :goto_89
    iget-object p1, p0, Lads_mobile_sdk/hr;->e:Lads_mobile_sdk/cb3;

    iput-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    iput v7, v0, Lads_mobile_sdk/vq;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    invoke-static {p1, v4, v0}, Lads_mobile_sdk/cb3;->b(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_99

    goto :goto_e0

    .line 888
    :cond_99
    :goto_99
    iget-object p1, p0, Lads_mobile_sdk/hr;->e:Lads_mobile_sdk/cb3;

    iput-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    iput v6, v0, Lads_mobile_sdk/vq;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    invoke-static {p1, v4, v0}, Lads_mobile_sdk/cb3;->a(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a9

    goto :goto_e0

    .line 890
    :cond_a9
    :goto_a9
    iget-object p1, p0, Lads_mobile_sdk/hr;->f:Lads_mobile_sdk/mm;

    iput-object p0, v0, Lads_mobile_sdk/vq;->a:Lads_mobile_sdk/hr;

    iput v5, v0, Lads_mobile_sdk/vq;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    invoke-static {}, Lads_mobile_sdk/jm;->E()Lads_mobile_sdk/jm;

    move-result-object v2

    const-string v4, "getDefaultInstance(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    iget-object p1, p1, Lads_mobile_sdk/mm;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    new-instance v4, Lads_mobile_sdk/lm;

    invoke-direct {v4, v2, v3}, Lads_mobile_sdk/lm;-><init>(Lads_mobile_sdk/jm;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v4, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d3

    goto :goto_d5

    :cond_d3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 893
    :goto_d5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_dc

    goto :goto_de

    :cond_dc
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_de
    if-ne p1, v1, :cond_e1

    :goto_e0
    return-object v1

    .line 894
    :cond_e1
    :goto_e1
    iget-object p0, p0, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 895
    const-string p0, "Flags were reset because too many sessions have passed without updating flags"

    const/4 p1, 0x6

    invoke-static {p0, v3, p1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 896
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4

    .line 1839
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    return-object p2
.end method

.method public static final a(Lads_mobile_sdk/hr;Landroid/app/ActivityManager;Lcom/google/gson/JsonObject;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1111
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1112
    sget-object v3, Lads_mobile_sdk/wq;->a:Lads_mobile_sdk/wq;

    const-string v4, "gads:previous_exit_reason_reset_threshold"

    invoke-static {v1, v4, v2, v3}, Lads_mobile_sdk/hr;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 1119
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v6, v2

    mul-int/lit8 v6, v6, 0x2

    const/16 v7, 0xa

    .line 1136
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1137
    sget-object v8, Lads_mobile_sdk/yq;->a:Lads_mobile_sdk/yq;

    const-string v9, "gads:previous_exit_reasons_to_scan"

    invoke-static {v1, v9, v7, v8}, Lads_mobile_sdk/hr;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x14

    .line 1145
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1152
    sget-object v8, Lads_mobile_sdk/xw0;->a:Lads_mobile_sdk/ww0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    sget-object v8, Lads_mobile_sdk/ww0;->b:Lcom/google/gson/JsonObject;

    .line 1154
    sget-object v9, Lads_mobile_sdk/xq;->a:Lads_mobile_sdk/xq;

    const-string v10, "gads:previous_exit_reason_values"

    invoke-static {v1, v10, v8, v9}, Lads_mobile_sdk/hr;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonObject;

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    .line 1167
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 1168
    sget-object v10, Lads_mobile_sdk/zq;->a:Lads_mobile_sdk/zq;

    const-string v11, "gads:unspecified_exit_reason_value"

    invoke-static {v1, v11, v9, v10}, Lads_mobile_sdk/hr;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 1179
    iget-object v1, v0, Lads_mobile_sdk/hr;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    move-object/from16 v10, p1

    .line 1180
    invoke-static {v10, v1, v9, v6}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    const-string v6, "getHistoricalProcessExitReasons(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :cond_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v6

    .line 1188
    invoke-static {v6}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lads_mobile_sdk/hr;->b:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8f

    .line 1193
    sget-object v14, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {v6}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v14

    add-double/2addr v12, v14

    cmpg-double v6, v14, v10

    if-gez v6, :cond_c1

    goto :goto_c6

    :cond_c1
    cmpl-double v6, v12, v2

    if-ltz v6, :cond_8f

    return v7

    :cond_c6
    :goto_c6
    return v9
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1840
    instance-of v0, p2, Lads_mobile_sdk/ar;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ar;

    iget v1, v0, Lads_mobile_sdk/ar;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ar;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ar;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ar;-><init>(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ar;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2298
    iget v2, v0, Lads_mobile_sdk/ar;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4d

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object p1, v0, Lads_mobile_sdk/ar;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ar;->a:Lads_mobile_sdk/hr;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    goto/16 :goto_90

    :catchall_34
    move-exception p2

    goto/16 :goto_198

    .line 2299
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object p1, v0, Lads_mobile_sdk/ar;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/ar;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/qb0;

    iget-object v6, v0, Lads_mobile_sdk/ar;->a:Lads_mobile_sdk/hr;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_62

    :cond_4d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/hr;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 2421
    iput-object p0, v0, Lads_mobile_sdk/ar;->a:Lads_mobile_sdk/hr;

    iput-object p1, v0, Lads_mobile_sdk/ar;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/ar;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ar;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_61

    goto :goto_8b

    :cond_61
    move-object v6, p0

    :goto_62
    if-nez p1, :cond_76

    .line 2422
    :try_start_64
    iget-object v2, v6, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_76

    :cond_6d
    :goto_6d
    move-object p1, p2

    goto/16 :goto_192

    :catchall_70
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_198

    :cond_76
    :goto_76
    if-nez p1, :cond_96

    .line 2423
    iget-object p1, v6, Lads_mobile_sdk/hr;->d:Lads_mobile_sdk/xb0;

    iput-object v6, v0, Lads_mobile_sdk/ar;->a:Lads_mobile_sdk/hr;

    iput-object p2, v0, Lads_mobile_sdk/ar;->b:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/ar;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ar;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2424
    invoke-static {p1, v0}, Lads_mobile_sdk/xb0;->a(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_64 .. :try_end_89} :catchall_70

    if-ne p1, v1, :cond_8c

    :goto_8b
    return-object v1

    :cond_8c
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v6

    .line 2425
    :goto_90
    :try_start_90
    check-cast p2, Lads_mobile_sdk/qb0;
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_34

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    move-object v6, v0

    .line 2429
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Lads_mobile_sdk/qb0;->x()Lads_mobile_sdk/hj2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/hj2;->w()I

    move-result v0

    if-lez v0, :cond_df

    .line 2430
    invoke-virtual {p1}, Lads_mobile_sdk/qb0;->y()Lads_mobile_sdk/yp2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/yp2;->w()I

    move-result v0

    if-lez v0, :cond_df

    .line 2431
    invoke-virtual {p1}, Lads_mobile_sdk/qb0;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getConcatenatedSignalsMapMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_df

    .line 2433
    iget-object v0, v6, Lads_mobile_sdk/hr;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lads_mobile_sdk/qb0;->x()Lads_mobile_sdk/hj2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2434
    iget-object v0, v6, Lads_mobile_sdk/hr;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lads_mobile_sdk/qb0;->y()Lads_mobile_sdk/yp2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2435
    iget-object v0, v6, Lads_mobile_sdk/hr;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lads_mobile_sdk/qb0;->v()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2436
    iget-object p1, v6, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2437
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_db
    .catchall {:try_start_96 .. :try_end_db} :catchall_70

    .line 2551
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 2552
    :cond_df
    :try_start_df
    const-string p1, "test_pattern_matching_flag"

    sget-object v0, Lads_mobile_sdk/cr;->a:Lads_mobile_sdk/cr;

    invoke-virtual {v6, p1, v0}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_df .. :try_end_e9} :catchall_70

    const-string v0, ""

    if-nez p1, :cond_ee

    move-object p1, v0

    .line 2553
    :cond_ee
    :try_start_ee
    const-string v1, "test_preprocessing_flag"

    sget-object v2, Lads_mobile_sdk/dr;->a:Lads_mobile_sdk/dr;

    invoke-virtual {v6, v1, v2}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_fb

    move-object v1, v0

    .line 2555
    :cond_fb
    const-string v2, "test_concatenated_signals_flag"

    sget-object v3, Lads_mobile_sdk/br;->a:Lads_mobile_sdk/br;

    invoke-virtual {v6, v2, v3}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_108

    goto :goto_109

    :cond_108
    move-object v0, v2

    .line 2557
    :goto_109
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 2558
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 2559
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 2561
    iget-object v2, v6, Lads_mobile_sdk/hr;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    .line 2562
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/hj2;->a([B)Lads_mobile_sdk/hj2;

    move-result-object p1

    .line 2563
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2566
    iget-object p1, v6, Lads_mobile_sdk/hr;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2567
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lads_mobile_sdk/yp2;->a([B)Lads_mobile_sdk/yp2;

    move-result-object v1

    .line 2568
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2571
    iget-object p1, v6, Lads_mobile_sdk/hr;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2572
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->asMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "asMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2668
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2669
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2670
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_163
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_188

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2671
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 2672
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2674
    check-cast v2, Ljava/util/Map$Entry;

    .line 2675
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 2773
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_163

    .line 2774
    :cond_188
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2779
    iget-object p1, v6, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_190
    .catchall {:try_start_ee .. :try_end_190} :catchall_70

    goto/16 :goto_6d

    .line 2781
    :goto_192
    :try_start_192
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_194
    .catchall {:try_start_192 .. :try_end_194} :catchall_34

    .line 2870
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 2871
    :goto_198
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 7

    .line 1194
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lads_mobile_sdk/hr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1749
    const-string v0, "message"

    const-string v1, "Flags have not been initialized!"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1824
    invoke-static {v1, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1825
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1827
    sget-object v2, Lads_mobile_sdk/au;->a:Lads_mobile_sdk/bu;

    .line 1828
    sget-object v3, Lads_mobile_sdk/bu;->b:Lads_mobile_sdk/bu;

    if-eq v2, v3, :cond_3d

    .line 1829
    sget-object v3, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-eq v2, v3, :cond_3d

    .line 1834
    sget-object v3, Lads_mobile_sdk/bu;->a:Lads_mobile_sdk/bu;

    if-ne v2, v3, :cond_3e

    .line 1835
    sget-object v2, Lads_mobile_sdk/sr3;->a:Lads_mobile_sdk/ur3;

    if-eqz v2, :cond_3e

    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 1836
    :cond_3d
    throw v0

    .line 1837
    :cond_3e
    :goto_3e
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 7

    .line 3391
    iget-object v0, p0, Lads_mobile_sdk/hr;->b:Landroid/content/Context;

    const-string v1, "GoogleMobileAds"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3392
    sget-object v1, Lads_mobile_sdk/er;->a:Lads_mobile_sdk/er;

    const-string v2, "gads:initialize_webview_before_dagger"

    invoke-virtual {p0, v2, v1}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "early_webview_init_profiles"

    const-string v3, "early_webview_init_count"

    if-eqz v1, :cond_5b

    .line 3393
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3468
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3470
    sget-object v4, Lads_mobile_sdk/fr;->a:Lads_mobile_sdk/fr;

    const-string v5, "gads:initialize_webview_before_dagger:count"

    invoke-virtual {p0, v5, v4}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_36

    :cond_35
    const/4 v4, 0x5

    .line 3471
    :goto_36
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3550
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3551
    sget-object v1, Lads_mobile_sdk/gr;->a:Lads_mobile_sdk/gr;

    const-string v3, "gads:initialize_webview_before_dagger:profiles"

    invoke-virtual {p0, v3, v1}, Lads_mobile_sdk/hr;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4a

    const-string v1, ""

    .line 3552
    :cond_4a
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 3632
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3633
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5a
    return-void

    .line 3718
    :cond_5b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3806
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3807
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3808
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3899
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 5

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_b
    iget-object v1, p0, Lads_mobile_sdk/hr;->j:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_10

    goto :goto_16

    :cond_10
    const-string v1, "flagJson"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    .line 3
    :goto_16
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-nez p1, :cond_1d

    return-object v0

    :cond_1d
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_22

    return-object p1

    :catchall_22
    return-object v0
.end method
