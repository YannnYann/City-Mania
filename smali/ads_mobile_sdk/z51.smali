###### Class ads_mobile_sdk.z51 (ads_mobile_sdk.z51)
.class public final Lads_mobile_sdk/z51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final a:[F

.field public final b:[F

.field public final synthetic c:Lads_mobile_sdk/b61;

.field public final synthetic d:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b61;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/z51;->c:Lads_mobile_sdk/b61;

    iput-object p2, p0, Lads_mobile_sdk/z51;->d:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    .line 5
    new-array p1, p1, [F

    iput-object p1, p0, Lads_mobile_sdk/z51;->a:[F

    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [F

    iput-object p1, p0, Lads_mobile_sdk/z51;->b:[F

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    if-eqz p1, :cond_89

    .line 63
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_89

    .line 64
    iget-object v0, p0, Lads_mobile_sdk/z51;->c:Lads_mobile_sdk/b61;

    .line 65
    iget-object v0, v0, Lads_mobile_sdk/b61;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_17

    .line 66
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    :cond_17
    iget-object v0, p0, Lads_mobile_sdk/z51;->d:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 70
    iget-object v0, p0, Lads_mobile_sdk/z51;->a:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 73
    iget-object p1, p0, Lads_mobile_sdk/z51;->a:[F

    iget-object v0, p0, Lads_mobile_sdk/z51;->b:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 76
    iget-object p1, p0, Lads_mobile_sdk/z51;->b:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    .line 77
    iget-object v0, p0, Lads_mobile_sdk/z51;->d:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lads_mobile_sdk/z51;->c:Lads_mobile_sdk/b61;

    .line 78
    iget-object v2, v1, Lads_mobile_sdk/b61;->a:Lads_mobile_sdk/ex0;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    const-string v3, "gads:hand_signal:right_roll_threshold"

    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x3dcccccd    # 0.1f

    .line 103
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->e:Lads_mobile_sdk/mr;

    invoke-virtual {v2, v3, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 104
    iget-object v1, v1, Lads_mobile_sdk/b61;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    const-string v3, "gads:hand_signal:left_roll_threshold"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x42333333    # -0.1f

    .line 128
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_79

    .line 129
    sget-object p1, Lads_mobile_sdk/w51;->d:Lads_mobile_sdk/w51;

    goto :goto_82

    :cond_79
    cmpg-float p1, p1, v1

    if-gez p1, :cond_80

    .line 130
    sget-object p1, Lads_mobile_sdk/w51;->c:Lads_mobile_sdk/w51;

    goto :goto_82

    .line 131
    :cond_80
    sget-object p1, Lads_mobile_sdk/w51;->e:Lads_mobile_sdk/w51;

    .line 132
    :goto_82
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_89
    return-void
.end method
