###### Class ads_mobile_sdk.rp1 (ads_mobile_sdk.rp1)
.class public final Lads_mobile_sdk/rp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public final synthetic c:Lads_mobile_sdk/sp1;

.field public final synthetic d:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sp1;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rp1;->c:Lads_mobile_sdk/sp1;

    iput-object p2, p0, Lads_mobile_sdk/rp1;->d:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/rp1;->a:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Lads_mobile_sdk/sp1;->a(Lads_mobile_sdk/sp1;)Lads_mobile_sdk/ex0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->b0()I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/rp1;->b:I

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    if-eqz p1, :cond_b2

    .line 56
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b2

    .line 57
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v2, p1, v0

    .line 58
    aget v3, p1, v1

    const/4 v4, 0x2

    .line 59
    aget p1, p1, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v3, v2

    mul-float/2addr p1, p1

    add-float/2addr p1, v3

    float-to-double v2, p1

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 61
    iget-object v2, p0, Lads_mobile_sdk/rp1;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lads_mobile_sdk/rp1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v2, p0, Lads_mobile_sdk/rp1;->b:I

    if-lt p1, v2, :cond_b2

    .line 64
    iget-object p1, p0, Lads_mobile_sdk/rp1;->c:Lads_mobile_sdk/sp1;

    .line 65
    iget-object p1, p1, Lads_mobile_sdk/sp1;->c:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_3e

    .line 66
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    :cond_3e
    iget-object p1, p0, Lads_mobile_sdk/rp1;->d:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 73
    iget-object p1, p0, Lads_mobile_sdk/rp1;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/rp1;->a:Ljava/util/ArrayList;

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 114
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v5, v2

    mul-double/2addr v5, v5

    .line 115
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 156
    :cond_78
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->averageOfDouble(Ljava/lang/Iterable;)D

    move-result-wide v2

    .line 157
    iget-object p1, p0, Lads_mobile_sdk/rp1;->c:Lads_mobile_sdk/sp1;

    .line 158
    iget-object p1, p1, Lads_mobile_sdk/sp1;->a:Lads_mobile_sdk/ex0;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const-string v4, "key"

    const-string v5, "gads:is_device_held:variance_threshold"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 180
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    sget-object v6, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {p1, v5, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-lez p1, :cond_a4

    goto :goto_a5

    :cond_a4
    move v1, v0

    .line 181
    :goto_a5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lads_mobile_sdk/rp1;->d:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_b2
    return-void
.end method
