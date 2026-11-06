###### Class ads_mobile_sdk.ix0 (ads_mobile_sdk.ix0)
.class public final Lads_mobile_sdk/ix0;
.super Lads_mobile_sdk/ys3;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public e:Landroid/hardware/SensorManager;

.field public f:Landroid/hardware/Sensor;

.field public g:F

.field public h:F

.field public i:J

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lads_mobile_sdk/gx0;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 6

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lads_mobile_sdk/ys3;-><init>()V

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/ix0;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    .line 40
    iput-object p3, p0, Lads_mobile_sdk/ix0;->c:Lads_mobile_sdk/tx;

    .line 41
    iput-object p4, p0, Lads_mobile_sdk/ix0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 47
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide p1

    sget-object p3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, p3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/ix0;->i:J

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 83
    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v0, p0, Lads_mobile_sdk/ix0;->n:Z

    if-eqz v0, :cond_28

    .line 85
    iget-object v0, p0, Lads_mobile_sdk/ix0;->e:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v0, "sensorManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_2c

    .line 86
    :cond_13
    :goto_13
    iget-object v2, p0, Lads_mobile_sdk/ix0;->f:Landroid/hardware/Sensor;

    if-nez v2, :cond_1d

    const-string v2, "gyroscope"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    .line 87
    :cond_1d
    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lads_mobile_sdk/ix0;->n:Z

    .line 89
    const-string v0, "Stopped listening for flick gestures."

    .line 90
    invoke-static {v0, v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_11

    .line 92
    monitor-exit p0

    return-void

    .line 93
    :goto_2c
    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/hardware/Sensor;)V
    .registers 3

    .line 94
    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/hardware/SensorEvent;)V
    .registers 13

    .line 95
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    const-string v1, "gads:inspector:flick_enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_112

    .line 234
    :cond_23
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/ix0;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 236
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 237
    iget-wide v4, p0, Lads_mobile_sdk/ix0;->i:J

    iget-object v6, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0xbb8

    .line 238
    invoke-static {v7, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    const-string v3, "gads:inspector:flick_reset_time_ms"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v6, v3, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 240
    invoke-static {v4, v5, v6, v7}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_6d

    .line 243
    iput v4, p0, Lads_mobile_sdk/ix0;->j:I

    .line 244
    iput-wide v0, p0, Lads_mobile_sdk/ix0;->i:J

    .line 245
    iput-boolean v4, p0, Lads_mobile_sdk/ix0;->k:Z

    .line 246
    iput-boolean v4, p0, Lads_mobile_sdk/ix0;->l:Z

    .line 247
    iget v3, p0, Lads_mobile_sdk/ix0;->h:F

    iput v3, p0, Lads_mobile_sdk/ix0;->g:F

    .line 248
    :cond_6d
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget p1, p1, v3

    const/4 v5, 0x4

    int-to-float v5, v5

    mul-float/2addr p1, v5

    .line 249
    iget v5, p0, Lads_mobile_sdk/ix0;->h:F

    add-float/2addr v5, p1

    iput v5, p0, Lads_mobile_sdk/ix0;->h:F

    .line 250
    iget p1, p0, Lads_mobile_sdk/ix0;->g:F

    iget-object v6, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    const-string v7, "gads:inspector:flick_rotation_threshold"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v8, 0x42340000    # 45.0f

    .line 274
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    sget-object v10, Lads_mobile_sdk/yr;->e:Lads_mobile_sdk/mr;

    invoke-virtual {v6, v7, v9, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    add-float/2addr v6, p1

    cmpl-float p1, v5, v6

    if-lez p1, :cond_a4

    .line 275
    iget p1, p0, Lads_mobile_sdk/ix0;->h:F

    iput p1, p0, Lads_mobile_sdk/ix0;->g:F

    .line 276
    iput-boolean v3, p0, Lads_mobile_sdk/ix0;->l:Z

    goto :goto_c9

    .line 277
    :cond_a4
    iget p1, p0, Lads_mobile_sdk/ix0;->h:F

    iget v5, p0, Lads_mobile_sdk/ix0;->g:F

    iget-object v6, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v5, v2

    cmpg-float p1, p1, v5

    if-gez p1, :cond_c9

    .line 302
    iget p1, p0, Lads_mobile_sdk/ix0;->h:F

    iput p1, p0, Lads_mobile_sdk/ix0;->g:F

    .line 303
    iput-boolean v3, p0, Lads_mobile_sdk/ix0;->k:Z

    .line 305
    :cond_c9
    :goto_c9
    iget p1, p0, Lads_mobile_sdk/ix0;->h:F

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_d6

    const/4 p1, 0x0

    .line 306
    iput p1, p0, Lads_mobile_sdk/ix0;->h:F

    .line 307
    iput p1, p0, Lads_mobile_sdk/ix0;->g:F

    .line 309
    :cond_d6
    iget-boolean p1, p0, Lads_mobile_sdk/ix0;->k:Z

    if-eqz p1, :cond_112

    iget-boolean p1, p0, Lads_mobile_sdk/ix0;->l:Z

    if-eqz p1, :cond_112

    .line 310
    const-string p1, "Flick detected."

    const/4 v2, 0x0

    .line 311
    invoke-static {p1, v2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    iput-wide v0, p0, Lads_mobile_sdk/ix0;->i:J

    .line 313
    iget p1, p0, Lads_mobile_sdk/ix0;->j:I

    add-int/2addr p1, v3

    iput p1, p0, Lads_mobile_sdk/ix0;->j:I

    .line 314
    iput-boolean v4, p0, Lads_mobile_sdk/ix0;->k:Z

    .line 315
    iput-boolean v4, p0, Lads_mobile_sdk/ix0;->l:Z

    .line 316
    iget-object v5, p0, Lads_mobile_sdk/ix0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/hx0;

    invoke-direct {p1, p0, v2}, Lads_mobile_sdk/hx0;-><init>(Lads_mobile_sdk/ix0;Lkotlin/coroutines/Continuation;)V

    .line 317
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 318
    const-string v0, "<this>"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_112
    :goto_112
    return-void
.end method

.method public final b()V
    .registers 9

    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    const-string v1, "gads:inspector:flick_enabled"

    .line 61
    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_32

    if-nez v0, :cond_1f

    .line 78
    monitor-exit p0

    return-void

    .line 81
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lads_mobile_sdk/ix0;->a:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    const/4 v2, 0x4

    .line 82
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    goto :goto_35

    :catchall_32
    move-exception v0

    goto :goto_7e

    :cond_34
    move-object v2, v1

    .line 84
    :goto_35
    iget-boolean v3, p0, Lads_mobile_sdk/ix0;->n:Z

    if-nez v3, :cond_7a

    if-eqz v0, :cond_7a

    if-eqz v2, :cond_7a

    .line 85
    iput-object v0, p0, Lads_mobile_sdk/ix0;->e:Landroid/hardware/SensorManager;

    .line 86
    iput-object v2, p0, Lads_mobile_sdk/ix0;->f:Landroid/hardware/Sensor;

    .line 91
    iget-object v3, p0, Lads_mobile_sdk/ix0;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    const-string v4, "gads:inspector:flick_reset_time_ms"

    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v6, 0xbb8

    invoke-static {v6, v5}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    const-string v7, "key"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {v5, v6}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v3, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 94
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMicroseconds-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    .line 95
    invoke-virtual {v0, p0, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lads_mobile_sdk/ix0;->n:Z

    .line 102
    const-string v0, "Listening for flick gestures."

    .line 103
    invoke-static {v0, v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_7a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7c
    .catchall {:try_start_1f .. :try_end_7c} :catchall_32

    .line 105
    monitor-exit p0

    return-void

    .line 106
    :goto_7e
    monitor-exit p0

    throw v0
.end method
