###### Class com.ironsource.adqualitysdk.sdk.i.C0371 (com.ironsource.adqualitysdk.sdk.i.ܫ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ܫ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic ﻛ:[F

.field public final synthetic ｋ:[F

.field public final synthetic ﾇ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final synthetic ﾒ:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;[F[F)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ﾒ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ﾇ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ｋ:[F

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ﻛ:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    return-void

    .line 9
    :cond_14
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ｋ:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    aput p1, v0, v3

    return-void

    .line 10
    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ﾇ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :cond_2b
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ﻛ:[F

    aget v4, p1, v3

    mul-float/2addr v4, v4

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v1, v4

    aget p1, p1, v2

    mul-float/2addr p1, p1

    add-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    aput p1, v0, v3

    return-void

    .line 18
    :cond_43
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;->ﾒ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
