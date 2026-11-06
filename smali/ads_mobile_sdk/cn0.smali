###### Class ads_mobile_sdk.cn0 (ads_mobile_sdk.cn0)
.class public final Lads_mobile_sdk/cn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[J


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x13

    .line 280
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    .line 281
    sput-object v0, Lads_mobile_sdk/cn0;->f:[J

    return-void

    :array_a
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;)V
    .registers 5

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    .line 47
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lads_mobile_sdk/mm0;->b:Lads_mobile_sdk/mm0;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lads_mobile_sdk/om0;->b:Lads_mobile_sdk/om0;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    return-void
.end method

.method public static a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    return-object p5

    .line 471
    :cond_7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_35

    .line 527
    new-instance p3, Ljava/util/ArrayList;

    const/16 p5, 0xa

    invoke-static {p2, p5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p5

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    .line 529
    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    int-to-long v0, p5

    .line 530
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    .line 587
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 588
    :cond_35
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 p5, 0x0

    :goto_3a
    if-ge p5, p2, :cond_59

    .line 589
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_59

    .line 590
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, p7

    cmp-long v0, p0, v0

    if-gtz v0, :cond_56

    .line 592
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_56
    add-int/lit8 p5, p5, 0x1

    goto :goto_3a

    :cond_59
    return-object p6
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/nm0;
    .registers 15

    .line 106
    iget-object v0, p0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const-string v1, "gads:available_memory_tier:enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 125
    sget-object v0, Lads_mobile_sdk/nm0;->b:Lads_mobile_sdk/nm0;

    return-object v0

    .line 126
    :cond_1f
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 127
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 128
    iget-object v0, p0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 130
    const-string v5, "gads:device_tier:available_memory_thresholds_gb"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v2, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {v0, v5, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const-wide/16 v0, 0x1

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 187
    sget-object v7, Lads_mobile_sdk/nm0;->d:Lads_mobile_sdk/nm0;

    sget-object v8, Lads_mobile_sdk/nm0;->e:Lads_mobile_sdk/nm0;

    sget-object v9, Lads_mobile_sdk/nm0;->f:Lads_mobile_sdk/nm0;

    sget-object v10, Lads_mobile_sdk/nm0;->g:Lads_mobile_sdk/nm0;

    sget-object v11, Lads_mobile_sdk/nm0;->h:Lads_mobile_sdk/nm0;

    sget-object v12, Lads_mobile_sdk/nm0;->i:Lads_mobile_sdk/nm0;

    sget-object v13, Lads_mobile_sdk/nm0;->j:Lads_mobile_sdk/nm0;

    filled-new-array/range {v7 .. v13}, [Lads_mobile_sdk/nm0;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 197
    sget-object v8, Lads_mobile_sdk/nm0;->c:Lads_mobile_sdk/nm0;

    .line 198
    sget-object v9, Lads_mobile_sdk/nm0;->k:Lads_mobile_sdk/nm0;

    const-wide/32 v10, 0x40000000

    .line 199
    invoke-static/range {v3 .. v11}, Lads_mobile_sdk/cn0;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/nm0;

    return-object v0
.end method

.method public final a(I)Lads_mobile_sdk/om0;
    .registers 11

    int-to-long v0, p1

    .line 401
    iget-object p1, p0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 403
    const-string v3, "key"

    const-string v4, "gads:device_tier:available_processor_thresholds"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    sget-object v3, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {p1, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    const-wide/16 v3, 0x2

    .line 452
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {p1, v3, v4, v5, v6}, [Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 458
    sget-object p1, Lads_mobile_sdk/om0;->d:Lads_mobile_sdk/om0;

    sget-object v4, Lads_mobile_sdk/om0;->e:Lads_mobile_sdk/om0;

    sget-object v5, Lads_mobile_sdk/om0;->f:Lads_mobile_sdk/om0;

    sget-object v6, Lads_mobile_sdk/om0;->g:Lads_mobile_sdk/om0;

    sget-object v7, Lads_mobile_sdk/om0;->h:Lads_mobile_sdk/om0;

    filled-new-array {p1, v4, v5, v6, v7}, [Lads_mobile_sdk/om0;

    move-result-object p1

    .line 459
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 466
    sget-object v5, Lads_mobile_sdk/om0;->c:Lads_mobile_sdk/om0;

    .line 467
    sget-object v6, Lads_mobile_sdk/om0;->i:Lads_mobile_sdk/om0;

    const-wide/16 v7, 0x1

    .line 468
    invoke-static/range {v0 .. v8}, Lads_mobile_sdk/cn0;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;

    move-result-object p1

    .line 469
    check-cast p1, Lads_mobile_sdk/om0;

    return-object p1
.end method

.method public final b()V
    .registers 21

    move-object/from16 v0, p0

    .line 78
    iget-object v1, v0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/mm0;->b:Lads_mobile_sdk/mm0;

    if-eq v1, v2, :cond_23

    .line 79
    iget-object v1, v0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lads_mobile_sdk/om0;->b:Lads_mobile_sdk/om0;

    if-eq v1, v2, :cond_23

    .line 80
    iget-object v1, v0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    return-void

    .line 86
    :cond_23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_39

    .line 87
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 88
    invoke-static {v1}, Lads_mobile_sdk/cn0$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v1

    :goto_37
    move-wide v3, v1

    goto :goto_46

    .line 89
    :cond_39
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/cn0;->e:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 90
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    goto :goto_37

    .line 92
    :goto_46
    iget-object v1, v0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    iget-object v2, v0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 95
    const-string v6, "gads:device_tier:advertised_memory_thresholds_gb"

    const-string v12, "key"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "defaultValue"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v7, Lads_mobile_sdk/yr;->h:Lads_mobile_sdk/or;

    invoke-virtual {v2, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    const-wide/16 v6, 0x1

    .line 144
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v6, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-wide/16 v6, 0xc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 152
    sget-object v13, Lads_mobile_sdk/mm0;->d:Lads_mobile_sdk/mm0;

    sget-object v14, Lads_mobile_sdk/mm0;->e:Lads_mobile_sdk/mm0;

    sget-object v15, Lads_mobile_sdk/mm0;->f:Lads_mobile_sdk/mm0;

    sget-object v16, Lads_mobile_sdk/mm0;->g:Lads_mobile_sdk/mm0;

    sget-object v17, Lads_mobile_sdk/mm0;->h:Lads_mobile_sdk/mm0;

    sget-object v18, Lads_mobile_sdk/mm0;->i:Lads_mobile_sdk/mm0;

    sget-object v19, Lads_mobile_sdk/mm0;->j:Lads_mobile_sdk/mm0;

    filled-new-array/range {v13 .. v19}, [Lads_mobile_sdk/mm0;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 162
    sget-object v8, Lads_mobile_sdk/mm0;->c:Lads_mobile_sdk/mm0;

    .line 163
    sget-object v9, Lads_mobile_sdk/mm0;->k:Lads_mobile_sdk/mm0;

    const-wide/32 v10, 0x40000000

    .line 164
    invoke-static/range {v3 .. v11}, Lads_mobile_sdk/cn0;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Enum;Ljava/lang/Enum;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/mm0;

    .line 165
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 166
    iget-object v1, v0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    iget-object v2, v0, Lads_mobile_sdk/cn0;->a:Lads_mobile_sdk/ex0;

    const/4 v5, 0x7

    .line 169
    const-string v6, "gads:device_tier:advertised_memory_granularity"

    invoke-static {v2, v6, v12, v5}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 170
    sget-object v7, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_114

    .line 171
    sget-object v7, Lads_mobile_sdk/cn0;->f:[J

    const/16 v8, 0x13

    if-lt v2, v8, :cond_10c

    goto :goto_114

    :cond_10c
    if-gtz v2, :cond_10f

    goto :goto_115

    .line 177
    :cond_10f
    aget-wide v5, v7, v2

    .line 178
    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    goto :goto_115

    :cond_114
    :goto_114
    move-wide v3, v5

    .line 179
    :goto_115
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 184
    iget-object v2, v0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/cn0;->a(I)Lads_mobile_sdk/om0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
