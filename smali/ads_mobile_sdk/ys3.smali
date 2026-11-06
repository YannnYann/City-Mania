###### Class ads_mobile_sdk.ys3 (ads_mobile_sdk.ys3)
.class public abstract Lads_mobile_sdk/ys3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/hardware/Sensor;)V
.end method

.method public abstract a(Landroid/hardware/SensorEvent;)V
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 46
    invoke-virtual {p0, p1}, Lads_mobile_sdk/ys3;->a(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lads_mobile_sdk/ys3;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method
