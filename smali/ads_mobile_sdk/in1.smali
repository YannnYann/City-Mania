###### Class ads_mobile_sdk.in1 (ads_mobile_sdk.in1)
.class public final Lads_mobile_sdk/in1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/jr0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/in1;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/in1;->b:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 14

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/in1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vn;

    iget-object v1, p0, Lads_mobile_sdk/in1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/j53;

    .line 3
    const-string v2, "appStatsTracker"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    const-string v2, "requestType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v2, v0, Lads_mobile_sdk/vn;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    :try_start_25
    iget-object v3, v0, Lads_mobile_sdk/vn;->h:Ljava/lang/Long;

    if-nez v3, :cond_3c

    .line 176
    iget-object v3, v0, Lads_mobile_sdk/vn;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 178
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lads_mobile_sdk/vn;->h:Ljava/lang/Long;

    goto :goto_3c

    :catchall_39
    move-exception v0

    goto/16 :goto_c0

    .line 181
    :cond_3c
    :goto_3c
    iget v3, v0, Lads_mobile_sdk/vn;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lads_mobile_sdk/vn;->d:I

    .line 182
    iget v3, v0, Lads_mobile_sdk/vn;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lads_mobile_sdk/vn;->f:I

    .line 184
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v3, v0, Lads_mobile_sdk/vn;->g:Ljava/util/SortedMap;

    .line 294
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5c

    const/4 v4, 0x0

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 407
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_5c
    check-cast v4, Ljava/lang/Integer;

    .line 411
    iget-object v3, v0, Lads_mobile_sdk/vn;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    const-string v5, "gads:enable_per_format_prior_requests_signal"

    .line 413
    const-string v6, "key"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v5, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 430
    iget-object v3, v0, Lads_mobile_sdk/vn;->g:Ljava/util/SortedMap;

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :goto_80
    move-object v11, v3

    goto :goto_87

    .line 432
    :cond_82
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_80

    .line 435
    :goto_87
    iget-object v3, v0, Lads_mobile_sdk/vn;->g:Ljava/util/SortedMap;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v1, v0, Lads_mobile_sdk/vn;->h:Ljava/lang/Long;

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lads_mobile_sdk/vn;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    :goto_a8
    move-wide v9, v5

    goto :goto_ad

    :cond_aa
    const-wide/16 v5, 0x0

    goto :goto_a8

    .line 440
    :goto_ad
    new-instance v5, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    .line 441
    iget v1, v0, Lads_mobile_sdk/vn;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 442
    iget v7, v0, Lads_mobile_sdk/vn;->d:I

    .line 443
    iget v8, v0, Lads_mobile_sdk/vn;->f:I

    .line 446
    iget v12, v0, Lads_mobile_sdk/vn;->e:I

    .line 447
    invoke-direct/range {v5 .. v12}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;-><init>(Ljava/lang/String;IIJLjava/util/Map;I)V
    :try_end_be
    .catchall {:try_start_25 .. :try_end_be} :catchall_39

    .line 448
    monitor-exit v2

    return-object v5

    :goto_c0
    monitor-exit v2

    throw v0
.end method
