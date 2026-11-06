###### Class com.facebook.ads.redexgen.X.C3130qv (com.facebook.ads.redexgen.X.qv)
.class public final Lcom/facebook/ads/redexgen/X/qv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/qu;
    }
.end annotation


# static fields
.field public static A0A:[B


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Landroid/hardware/SensorManager;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A09:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/qu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/qv;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 3

    .line 109607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109608
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A03:I

    .line 109609
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A02:F

    .line 109610
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A09:Ljava/util/Set;

    .line 109611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/qv;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    .line 109612
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/qv;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .registers 7

    .line 109613
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qv;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Hi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A07:Landroid/hardware/SensorManager;

    .line 109614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A07:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    if-nez v0, :cond_2a

    .line 109615
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qv;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109616
    :cond_2a
    const/4 v4, 0x0

    .line 109617
    .local v0, "supported":Z
    :try_start_2b
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/qv;->A07:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A07:Landroid/hardware/SensorManager;

    .line 109618
    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 109619
    const/4 v0, 0x3

    invoke-virtual {v2, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    .line 109620
    goto :goto_4c
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_39

    .line 109621
    .local v2, "e":Ljava/lang/Exception;
    :catch_39
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qv;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    const/16 v2, 0x15

    const/16 v1, 0x15

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109622
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    if-nez v4, :cond_57

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A07:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_57

    .line 109623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A07:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 109624
    :cond_57
    return-void
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/qv;->A0A:[B

    return-void

    :array_a
    .array-data 1
        0x77t
        0x41t
        0x4at
        0x57t
        0x4bt
        0x56t
        0x57t
        0x4t
        0x4at
        0x4bt
        0x50t
        0x4t
        0x57t
        0x51t
        0x54t
        0x54t
        0x4bt
        0x56t
        0x50t
        0x41t
        0x40t
        0x11t
        0x2at
        0x23t
        0x29t
        0x2bt
        0x2ct
        0x25t
        0x62t
        0x2ct
        0x2dt
        0x36t
        0x62t
        0x31t
        0x37t
        0x32t
        0x32t
        0x2dt
        0x30t
        0x36t
        0x27t
        0x26t
        0x15t
        0x3t
        0x8t
        0x15t
        0x9t
        0x14t
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/qu;)V
    .registers 3

    .line 109625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A09:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109626
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qv;->A01()V

    .line 109627
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A09:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109628
    return-void

    .line 109629
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A09:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109630
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 109631
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    .line 109632
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    .line 109633
    return-void

    .line 109634
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 109635
    .local v2, "now":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A04:J

    sub-long v8, v2, v0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    cmp-long v0, v8, v5

    if-lez v0, :cond_1b

    .line 109636
    iput v7, p0, Lcom/facebook/ads/redexgen/X/qv;->A03:I

    .line 109637
    :cond_1b
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A06:J

    sub-long v8, v2, v0

    const-wide/16 v5, 0x64

    cmp-long v0, v8, v5

    if-lez v0, :cond_93

    .line 109638
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/qv;->A06:J

    sub-long v0, v2, v5

    .line 109639
    .local v4, "diff":J
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v7

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    add-float/2addr v6, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v5, v5, v10

    add-float/2addr v6, v5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/qv;->A00:F

    sub-float/2addr v6, v5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/qv;->A01:F

    sub-float/2addr v6, v5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/qv;->A02:F

    sub-float/2addr v6, v5

    .line 109640
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    long-to-float v5, v0

    div-float/2addr v6, v5

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v0

    .line 109641
    .local v6, "speed":F
    const/high16 v0, 0x44480000    # 800.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_7f

    .line 109642
    iget v1, p0, Lcom/facebook/ads/redexgen/X/qv;->A03:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/facebook/ads/redexgen/X/qv;->A03:I

    const/4 v0, 0x3

    if-lt v1, v0, :cond_7d

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A05:J

    sub-long v8, v2, v0

    const-wide/16 v5, 0x3e8

    cmp-long v0, v8, v5

    if-lez v0, :cond_7d

    .line 109643
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/qv;->A05:J

    .line 109644
    iput v7, p0, Lcom/facebook/ads/redexgen/X/qv;->A03:I

    .line 109645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A09:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109646
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/internal/util/rageshake/ShakeDetector$OnShakeListener;>;"
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 109647
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/qu;->AH2()V

    goto :goto_6d

    .line 109648
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/internal/util/rageshake/ShakeDetector$OnShakeListener;>;"
    :cond_7d
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/qv;->A04:J

    .line 109649
    :cond_7f
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/qv;->A06:J

    .line 109650
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A00:F

    .line 109651
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A01:F

    .line 109652
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/qv;->A02:F

    .line 109653
    .end local v4    # "diff":J
    .end local v6    # "speed":F
    :cond_93
    return-void
.end method
