###### Class ads_mobile_sdk.sp1 (ads_mobile_sdk.sp1)
.class public final Lads_mobile_sdk/sp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/zd3;

.field public final c:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/zd3;)V
    .registers 5

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedSettingsDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/sp1;->a:Lads_mobile_sdk/ex0;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/sp1;->b:Lads_mobile_sdk/zd3;

    .line 31
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/hardware/SensorManager;

    if-eqz p2, :cond_23

    check-cast p1, Landroid/hardware/SensorManager;

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iput-object p1, p0, Lads_mobile_sdk/sp1;->c:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/sp1;)Lads_mobile_sdk/ex0;
    .registers 1

    .line 22
    iget-object p0, p0, Lads_mobile_sdk/sp1;->a:Lads_mobile_sdk/ex0;

    return-object p0
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->D:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/pp1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/pp1;

    iget v1, v0, Lads_mobile_sdk/pp1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/pp1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/pp1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/pp1;-><init>(Lads_mobile_sdk/sp1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/pp1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, v0, Lads_mobile_sdk/pp1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v5, :cond_36

    if-ne v2, v3, :cond_2e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c4

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v2, v0, Lads_mobile_sdk/pp1;->a:Lads_mobile_sdk/sp1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lads_mobile_sdk/sp1;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const-string v2, "key"

    const-string v6, "gads:is_device_held:enabled"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v6, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 55
    iget-object p1, p0, Lads_mobile_sdk/sp1;->b:Lads_mobile_sdk/zd3;

    iput-object p0, v0, Lads_mobile_sdk/pp1;->a:Lads_mobile_sdk/sp1;

    iput v5, v0, Lads_mobile_sdk/pp1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p1, v0}, Lads_mobile_sdk/zd3;->b(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6b

    goto :goto_c3

    :cond_6b
    move-object v2, p0

    .line 57
    :goto_6c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_75

    goto :goto_dc

    .line 62
    :cond_75
    iget-object p1, v2, Lads_mobile_sdk/sp1;->c:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_d1

    invoke-virtual {p1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_80

    goto :goto_d1

    .line 65
    :cond_80
    iput-object v4, v0, Lads_mobile_sdk/pp1;->a:Lads_mobile_sdk/sp1;

    iput v3, v0, Lads_mobile_sdk/pp1;->d:I

    .line 66
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 72
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 73
    new-instance v6, Lads_mobile_sdk/rp1;

    invoke-direct {v6, v2, v3}, Lads_mobile_sdk/rp1;-><init>(Lads_mobile_sdk/sp1;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 105
    new-instance v7, Lads_mobile_sdk/qp1;

    invoke-direct {v7, v2, v6}, Lads_mobile_sdk/qp1;-><init>(Lads_mobile_sdk/sp1;Lads_mobile_sdk/rp1;)V

    invoke-virtual {v3, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 106
    iget-object v2, v2, Lads_mobile_sdk/sp1;->c:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_a7

    .line 107
    invoke-virtual {v2, v6, p1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 110
    :cond_a7
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->isActive()Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 132
    :cond_b4
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 133
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_c1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_c1
    if-ne p1, v1, :cond_c4

    :goto_c3
    return-object v1

    .line 134
    :cond_c4
    :goto_c4
    check-cast p1, Ljava/lang/Boolean;

    .line 144
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/op1;

    invoke-direct {v1, p1}, Lads_mobile_sdk/op1;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 145
    :cond_d1
    :goto_d1
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/op1;

    invoke-direct {v0, v4}, Lads_mobile_sdk/op1;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 146
    :cond_dc
    :goto_dc
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/op1;

    invoke-direct {v0, v4}, Lads_mobile_sdk/op1;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
