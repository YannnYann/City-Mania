###### Class com.facebook.ads.internal.util.activity.ActivityUtils (com.facebook.ads.internal.util.activity.ActivityUtils)
.class public final Lcom/facebook/ads/internal/util/activity/ActivityUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pA;
    }
.end annotation


# static fields
.field public static A01:Landroid/content/Context;

.field public static A02:Lcom/facebook/ads/redexgen/X/Hh;

.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/pE;

.field public static final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pA;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 3335
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ouMPsLdF8VOzsynXqmRiTnVq9sCULlEK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RDluICFSUJyOT3sC2lXOFgStPQc7gg7Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UmtUlnThENixw5hdz8sG1KFdsGmJDk97"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fTn296Ch3TXxkAVBDyGQxp9TrJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IUqXVRs0X8uhoFuXuWrDHC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AqSoSQ8lTXl56yd6tw1FPxb5AEpw6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5ylHfIThOZnGyEtaFkstDkkPbeVs18fd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "i0x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3336
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    .line 3337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3338
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    .line 3339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/List;

    .line 3340
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pE;->A00()Lcom/facebook/ads/redexgen/X/pE;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05:Lcom/facebook/ads/redexgen/X/pE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 107339
    .local p1, "adsActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107340
    iput-object p1, p0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00:Ljava/lang/Class;

    .line 107341
    return-void
.end method

.method public static declared-synchronized A00()Landroid/app/Activity;
    .registers 9

    const-class v8, Lcom/facebook/ads/internal/util/activity/ActivityUtils;

    monitor-enter v8

    .line 107342
    const/4 v6, 0x0

    .line 107343
    .local v1, "lastResumedActivity":Landroid/app/Activity;
    :try_start_4
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107344
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/Activity;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 107345
    .local v4, "state":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_e

    .line 107346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 107347
    :cond_2d
    const/4 v5, 0x0

    .line 107348
    .local v2, "refActivity":Landroid/app/Activity;
    const/4 v7, 0x1

    if-eqz v6, :cond_3a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge v1, v0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v1, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    .line 107349
    .local v4, "refActivityShouldBeFetched":Z
    :goto_3b
    if-eqz v1, :cond_41

    .line 107350
    invoke-static {}, Lcom/facebook/ads/redexgen/X/p7;->A00()Landroid/app/Activity;

    move-result-object v5

    .line 107351
    :cond_41
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02:Lcom/facebook/ads/redexgen/X/Hh;

    if-eqz v0, :cond_9b

    if-eqz v1, :cond_9b

    if-eq v6, v5, :cond_9b

    .line 107352
    const/16 v2, 0x13

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xcb

    const/4 v2, 0x5

    const/16 v0, 0x14

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xc

    const/4 v2, 0x7

    const/16 v0, 0x7c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107353
    .local v5, "deLogException":Lcom/facebook/ads/redexgen/X/lg;
    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/lg;->A05(I)V

    .line 107354
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02:Lcom/facebook/ads/redexgen/X/Hh;

    .line 107355
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v4

    const/16 v3, 0xd0

    const/16 v1, 0x8

    const/16 v0, 0x72

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    .line 107356
    invoke-interface {v4, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 107357
    .end local v5    # "deLogException":Lcom/facebook/ads/redexgen/X/lg;
    :cond_9b
    if-eqz v6, :cond_9f
    :try_end_9d
    .catchall {:try_start_4 .. :try_end_9d} :catchall_a1

    .line 107358
    monitor-exit v8

    return-object v6

    .line 107359
    :cond_9f
    monitor-exit v8

    return-object v5

    .line 107360
    .end local v1    # "lastResumedActivity":Landroid/app/Activity;
    .end local v2    # "refActivity":Landroid/app/Activity;
    .end local v4    # "refActivityShouldBeFetched":Z
    :catchall_a1
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3b

    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04:[Ljava/lang/String;

    const-string v1, "4AKSMNDzmxTAf23dNNcZP8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "cH1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_35

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xc

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0xec

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x36t
        0x3at
        0x5bt
        0x79t
        0x6et
        0x73t
        0x6ct
        0x73t
        0x6et
        0x63t
        0x20t
        0x3at
        0x5ct
        0x50t
        0x2t
        0x15t
        0x16t
        0x4at
        0x50t
        0x73t
        0x51t
        0x46t
        0x5bt
        0x44t
        0x5bt
        0x46t
        0x4bt
        0x12t
        0x56t
        0x5bt
        0x41t
        0x51t
        0x40t
        0x57t
        0x42t
        0x53t
        0x5ct
        0x51t
        0x5bt
        0x57t
        0x41t
        0x1ct
        0x37t
        0x6t
        0x6t
        0x35t
        0x19t
        0x18t
        0x2t
        0x13t
        0xet
        0x2t
        0x56t
        0x1ft
        0x5t
        0x56t
        0x18t
        0x19t
        0x2t
        0x56t
        0x37t
        0x6t
        0x6t
        0x1at
        0x1ft
        0x15t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x58t
        0x28t
        0x4t
        0x5t
        0x8t
        0x1et
        0x19t
        0x19t
        0xet
        0x5t
        0x1ft
        0x4bt
        0x6t
        0x4t
        0xft
        0x2t
        0xdt
        0x2t
        0x8t
        0xat
        0x1ft
        0x2t
        0x4t
        0x5t
        0x4bt
        0xet
        0x13t
        0x8t
        0xet
        0x1bt
        0x1ft
        0x2t
        0x4t
        0x5t
        0x4bt
        0x1ft
        0x3t
        0x19t
        0x4t
        0x1ct
        0x5t
        0xft
        0x1et
        0x19t
        0x2t
        0x5t
        0xct
        0x4bt
        0x19t
        0xet
        0xct
        0x2t
        0x18t
        0x1ft
        0xet
        0x19t
        0x2at
        0x8t
        0x1ft
        0x2t
        0x1dt
        0x2t
        0x1ft
        0x12t
        0x28t
        0xat
        0x7t
        0x7t
        0x9t
        0xat
        0x8t
        0x0t
        0x18t
        0x27t
        0x2t
        0x18t
        0x1ft
        0xet
        0x5t
        0xet
        0x19t
        0xat
        0x29t
        0x21t
        0x65t
        0x24t
        0x26t
        0x31t
        0x2ct
        0x33t
        0x2ct
        0x31t
        0x3ct
        0x65t
        0x36t
        0x31t
        0x24t
        0x31t
        0x20t
        0x7ft
        0x65t
        0x73t
        0x42t
        0x56t
        0x50t
        0x46t
        0x47t
        0x3t
        0x42t
        0x40t
        0x57t
        0x4at
        0x55t
        0x4at
        0x57t
        0x5at
        0x3t
        0x4at
        0x50t
        0x3t
        0x4dt
        0x4ct
        0x57t
        0x3t
        0x51t
        0x46t
        0x50t
        0x56t
        0x4et
        0x46t
        0x47t
        0xdt
        0x4at
        0x7dt
        0x6bt
        0x22t
        0x38t
        0x1ft
        0x1dt
        0xat
        0x21t
        0xbt
        0xat
        0x17t
        0x12t
        0x4t
        0x15t
        0xct
        0x51t
        0x50t
        0x7ft
        0x5dt
        0x4at
        0x57t
        0x48t
        0x57t
        0x4at
        0x47t
        0x7dt
        0x4ct
        0x5bt
        0x5ft
        0x4at
        0x5bt
        0x5at
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 5

    .line 107361
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/mv;->A1p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 107362
    return-void

    .line 107363
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_e

    .line 107364
    return-void

    .line 107365
    :cond_e
    new-instance v3, Lcom/facebook/ads/redexgen/X/p9;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/p9;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 107366
    .local v0, "pauseCheck":Ljava/lang/Runnable;
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/List;

    monitor-enter v1

    .line 107367
    :try_start_16
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107368
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_28

    .line 107369
    sget-object v0, Lcom/facebook/ads/redexgen/X/qV;->A01:Lcom/facebook/ads/redexgen/X/qV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qV;->A01()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107370
    return-void

    .line 107371
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static declared-synchronized A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hh;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .local p2, "adsActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v7, Lcom/facebook/ads/internal/util/activity/ActivityUtils;

    monitor-enter v7

    .line 107372
    :try_start_3
    sput-object p0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02:Lcom/facebook/ads/redexgen/X/Hh;

    .line 107373
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Landroid/content/Context;

    .line 107374
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_59

    .line 107375
    invoke-static {}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->getANActivityLifecycleCallbacksListener()Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;

    move-result-object v0

    .line 107376
    .local v1, "anActivityLifecycleCallbacksListener":Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;
    if-eqz v0, :cond_4c

    .line 107377
    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->getActivityStateMap()Ljava/util/Map;

    move-result-object v6

    .line 107378
    .local v2, "activityStateMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/Activity;Ljava/lang/Integer;>;"
    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_7c

    .line 107379
    :try_start_1c
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_44
    :try_end_22
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1c .. :try_end_22} :catch_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_46

    .line 107380
    :catch_22
    :try_start_22
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v5

    const/16 v2, 0xd0

    const/16 v1, 0x8

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/facebook/ads/redexgen/X/lf;->A02:I

    const/16 v3, 0x48

    const/16 v2, 0x50

    const/16 v0, 0x67

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;)V

    .line 107381
    invoke-interface {v5, v1, v4, v2}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 107382
    .end local v3
    :goto_44
    monitor-exit v6

    goto :goto_49
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0

    .line 107383
    :goto_49
    invoke-static {p0}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->unregisterActivityCallbacks(Landroid/content/Context;)V

    .line 107384
    .end local v2    # "activityStateMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/Activity;Ljava/lang/Integer;>;"
    :cond_4c
    new-instance v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;-><init>(Ljava/lang/Class;)V

    .line 107385
    .local v2, "activityUtils":Lcom/facebook/ads/internal/util/activity/ActivityUtils;
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_7a

    .line 107386
    :cond_59
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v5

    const/16 v2, 0xd8

    const/4 v1, 0x3

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/facebook/ads/redexgen/X/lf;->A0d:I

    const/16 v3, 0x2a

    const/16 v2, 0x1e

    const/16 v0, 0x7a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;)V

    .line 107387
    invoke-interface {v5, v1, v4, v2}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V
    :try_end_7a
    .catchall {:try_start_48 .. :try_end_7a} :catchall_7c

    .line 107388
    :goto_7a
    monitor-exit v7

    return-void

    .line 107389
    .end local p1    # null:Ljava/lang/Class;
    .end local p2
    :catchall_7c
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 107390
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107391
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107392
    .local v1, "l":Lcom/facebook/ads/redexgen/X/pA;
    const/16 v2, 0xdb

    const/16 v1, 0x11

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107393
    :cond_29
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .line 107394
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107395
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 8

    .line 107396
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 107397
    .local v0, "oldActivityState":Ljava/lang/Integer;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_65

    .line 107398
    :cond_11
    const/16 v2, 0xac

    const/16 v1, 0x1f

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x98

    const/16 v1, 0x14

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107399
    .local v1, "deLogException":Lcom/facebook/ads/redexgen/X/lg;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/lg;->A05(I)V

    .line 107400
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A02:Lcom/facebook/ads/redexgen/X/Hh;

    .line 107401
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x8

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    .line 107402
    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 107403
    .end local v1    # "deLogException":Lcom/facebook/ads/redexgen/X/lg;
    :cond_65
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00:Ljava/lang/Class;

    if-eq v1, v0, :cond_a4

    .line 107405
    sget-object v2, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/List;

    monitor-enter v2

    .line 107406
    :try_start_7a
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107407
    .local v2, "pauseListenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A07:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107408
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_a1

    .line 107409
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 107410
    .local v3, "r":Ljava/lang/Runnable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/qV;->A01:Lcom/facebook/ads/redexgen/X/qV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qV;->A01()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107411
    .end local v3    # "r":Ljava/lang/Runnable;
    goto :goto_8b

    .line 107412
    .end local v2    # "pauseListenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_a1
    move-exception v0

    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v0

    .line 107413
    :cond_a4
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05:Lcom/facebook/ads/redexgen/X/pE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pE;->A01()V

    .line 107414
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 107415
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107416
    sget-object v0, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05:Lcom/facebook/ads/redexgen/X/pE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pE;->A02()V

    .line 107417
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 107418
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 107419
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107420
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 107421
    sget-object v1, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A08:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107422
    return-void
.end method
