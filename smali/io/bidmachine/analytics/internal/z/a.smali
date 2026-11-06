###### Class io.bidmachine.analytics.internal.z.a (io.bidmachine.analytics.internal.z.a)
.class public final Lio/bidmachine/analytics/internal/z/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/z/a;

.field private static final b:Lio/bidmachine/analytics/internal/I/f;

.field private static final c:Lkotlinx/coroutines/CoroutineScope;

.field private static d:Ljava/util/Map;

.field private static e:Ljava/util/Map;

.field private static final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/analytics/internal/z/a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/z/a;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/z/a;->b:Lio/bidmachine/analytics/internal/I/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/I/f;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/z/a;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/z/a;->d:Ljava/util/Map;

    .line 6
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/z/a;->e:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/z/a;->f:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/H/c;)Ljava/util/Map;
    .registers 12

    .line 969
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getMonitorConfigList()Ljava/util/List;

    move-result-object v0

    .line 1084
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/bidmachine/analytics/MonitorConfig;

    .line 1086
    invoke-virtual {v3}, Lio/bidmachine/analytics/MonitorConfig;->isReportEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1201
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1203
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1204
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1205
    check-cast v3, Lio/bidmachine/analytics/MonitorConfig;

    .line 1206
    new-instance v4, Lio/bidmachine/analytics/internal/z/b;

    .line 1207
    sget-object v5, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object v5

    .line 1208
    new-instance v6, Lio/bidmachine/analytics/internal/z/b$b;

    .line 1210
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 1211
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getExtras()Lcom/explorestack/protobuf/Struct;

    move-result-object v8

    .line 1212
    invoke-direct {v6, v3, v7, v8}, Lio/bidmachine/analytics/internal/z/b$b;-><init>(Lio/bidmachine/analytics/MonitorConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V

    .line 1213
    invoke-direct {v4, v5, v6, p2}, Lio/bidmachine/analytics/internal/z/b;-><init>(Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/z/b$b;Lio/bidmachine/analytics/internal/H/c;)V

    .line 1330
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1332
    :cond_5b
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 1333
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1334
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1335
    move-object v1, v0

    check-cast v1, Lio/bidmachine/analytics/internal/z/b;

    .line 1336
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/z/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 1447
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_87
    return-object p2
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/H/e;)Ljava/util/Map;
    .registers 13

    .line 1448
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object v0

    .line 1553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1563
    check-cast v2, Lio/bidmachine/analytics/ReaderConfig;

    .line 1564
    invoke-virtual {v2}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e4

    goto :goto_85

    :sswitch_25
    const-string v4, "aints"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_85

    .line 1565
    :cond_2e
    new-instance v3, Lio/bidmachine/analytics/internal/D/c;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/D/c;-><init>(Ljava/io/File;)V

    goto :goto_94

    .line 1566
    :sswitch_40
    const-string v4, "apur"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto :goto_85

    .line 1570
    :cond_49
    new-instance v3, Lio/bidmachine/analytics/internal/D/e;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->d()Lio/bidmachine/analytics/internal/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/a/d;->c()Lio/bidmachine/analytics/internal/u/g;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/D/e;-><init>(Lio/bidmachine/analytics/internal/u/g;)V

    goto :goto_94

    .line 1571
    :sswitch_57
    const-string v4, "alog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_85

    .line 1574
    :cond_60
    new-instance v3, Lio/bidmachine/analytics/internal/D/d;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->d()Lio/bidmachine/analytics/internal/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/a/d;->b()Lio/bidmachine/analytics/internal/t/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/D/d;-><init>(Lio/bidmachine/analytics/internal/t/e;)V

    goto :goto_94

    .line 1575
    :sswitch_6e
    const-string v4, "aexs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    goto :goto_85

    .line 1577
    :cond_77
    new-instance v3, Lio/bidmachine/analytics/internal/D/a;

    invoke-direct {v3}, Lio/bidmachine/analytics/internal/D/a;-><init>()V

    goto :goto_94

    .line 1578
    :sswitch_7d
    const-string v4, "aapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    :goto_85
    const/4 v2, 0x0

    goto :goto_ad

    .line 1583
    :cond_87
    new-instance v3, Lio/bidmachine/analytics/internal/D/b;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->d()Lio/bidmachine/analytics/internal/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/a/d;->a()Lio/bidmachine/analytics/internal/s/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/D/b;-><init>(Lio/bidmachine/analytics/internal/s/b;)V

    .line 1586
    :goto_94
    new-instance v4, Lio/bidmachine/analytics/internal/z/c;

    .line 1587
    sget-object v5, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object v5

    .line 1588
    new-instance v6, Lio/bidmachine/analytics/internal/z/c$a;

    .line 1590
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 1591
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getExtras()Lcom/explorestack/protobuf/Struct;

    move-result-object v8

    .line 1592
    invoke-direct {v6, v2, v7, v8, v3}, Lio/bidmachine/analytics/internal/z/c$a;-><init>(Lio/bidmachine/analytics/ReaderConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/analytics/internal/C/a$a;)V

    .line 1593
    invoke-direct {v4, v5, v6, p3}, Lio/bidmachine/analytics/internal/z/c;-><init>(Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/z/c$a;Lio/bidmachine/analytics/internal/H/e;)V

    move-object v2, v4

    :goto_ad
    if-eqz v2, :cond_d

    .line 1697
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_b4
    const/16 p1, 0xa

    .line 1702
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 1703
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1704
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1705
    move-object v0, p3

    check-cast v0, Lio/bidmachine/analytics/internal/z/c;

    .line 1706
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/z/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 1808
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    :cond_e2
    return-object p2

    nop

    :sswitch_data_e4
    .sparse-switch
        0x2d9220 -> :sswitch_7d
        0x2da21f -> :sswitch_6e
        0x2dbb43 -> :sswitch_57
        0x2dcb0c -> :sswitch_40
        0x5884e45 -> :sswitch_25
    .end sparse-switch
.end method

.method private final a(Lio/bidmachine/analytics/internal/H/c;Ljava/lang/String;Ljava/util/List;)V
    .registers 10

    .line 1912
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->c:Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lio/bidmachine/analytics/internal/z/a;->b:Lio/bidmachine/analytics/internal/I/f;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/I/f;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/bidmachine/analytics/internal/z/a$a;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p3, v2}, Lio/bidmachine/analytics/internal/z/a$a;-><init>(Lio/bidmachine/analytics/internal/H/c;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/H/e;Ljava/util/List;Ljava/util/List;)V
    .registers 10

    .line 1913
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->c:Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lio/bidmachine/analytics/internal/z/a;->b:Lio/bidmachine/analytics/internal/I/f;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/I/f;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/bidmachine/analytics/internal/z/a$b;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p3, v2}, Lio/bidmachine/analytics/internal/z/a$b;-><init>(Lio/bidmachine/analytics/internal/H/e;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .registers 14

    .line 1809
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->f:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1810
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1910
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/bidmachine/analytics/internal/g/d;

    .line 1911
    sget-object v1, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    const/16 v10, 0x3b

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v11}, Lio/bidmachine/analytics/internal/g/d;->a(Lio/bidmachine/analytics/internal/g/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/g/h;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/g/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/g/d;)V

    move-object p1, v5

    goto :goto_d

    :cond_2f
    return-void
.end method

.method private final a(Ljava/util/Map;)V
    .registers 3

    .line 847
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 967
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/z/b;

    .line 968
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/z/b;->a()V

    goto :goto_8

    :cond_18
    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .registers 10

    .line 1
    monitor-enter p0

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->c()Lio/bidmachine/analytics/internal/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/a/c;->e()Lio/bidmachine/analytics/internal/H/c;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/a/a;->c()Lio/bidmachine/analytics/internal/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/c;->g()Lio/bidmachine/analytics/internal/H/e;

    move-result-object v1

    .line 6
    sget-object v2, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    sget-object v3, Lio/bidmachine/analytics/internal/z/a;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lio/bidmachine/analytics/internal/z/a;->a(Ljava/util/Map;)V

    .line 8
    invoke-direct {v2, p2, v0}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/H/c;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lio/bidmachine/analytics/internal/z/a;->d:Ljava/util/Map;

    .line 9
    invoke-direct {v2, p1, p2, v1}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/H/e;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lio/bidmachine/analytics/internal/z/a;->e:Ljava/util/Map;

    .line 11
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/bidmachine/analytics/internal/z/a;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getMonitorConfigList()Ljava/util/List;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 128
    check-cast v6, Lio/bidmachine/analytics/MonitorConfig;

    .line 129
    invoke-virtual {v6}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :catchall_56
    move-exception p1

    goto/16 :goto_e9

    .line 242
    :cond_59
    invoke-direct {v2, v0, p1, v4}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/H/c;Ljava/lang/String;Ljava/util/List;)V

    .line 247
    sget-object p1, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    .line 249
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object v0

    .line 359
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 361
    check-cast v3, Lio/bidmachine/analytics/ReaderConfig;

    .line 362
    invoke-virtual {v3}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 475
    :cond_83
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object p2

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_94
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 590
    check-cast v3, Lio/bidmachine/analytics/ReaderConfig;

    .line 591
    invoke-virtual {v3}, Lio/bidmachine/analytics/ReaderConfig;->getRules()Ljava/util/List;

    move-result-object v3

    .line 706
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 708
    :cond_a8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 710
    check-cast v3, Ljava/util/List;

    .line 711
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ca
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 713
    check-cast v6, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 714
    invoke-static {v6}, Lio/bidmachine/analytics/internal/g/f;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v6

    .line 835
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 837
    :cond_de
    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_b1

    .line 838
    :cond_e2
    invoke-direct {p1, v1, v2, p2}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/H/e;Ljava/util/List;Ljava/util/List;)V

    .line 845
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e7
    .catchall {:try_start_1 .. :try_end_e7} :catchall_56

    .line 846
    monitor-exit p0

    return-void

    :goto_e9
    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/bidmachine/analytics/internal/g/d;)V
    .registers 4

    .line 1914
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/d;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1916
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1918
    :cond_12
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/z/b;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/z/b;->b(Lio/bidmachine/analytics/internal/g/d;)V

    :cond_23
    return-void
.end method

.method public final a(Lio/bidmachine/analytics/internal/g/e;)V
    .registers 3

    .line 1919
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/analytics/internal/z/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 1920
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/z/c;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/z/c;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    return-void
.end method

###### Class io.bidmachine.analytics.internal.z.a.C1158a (io.bidmachine.analytics.internal.z.a$a)
.class final Lio/bidmachine/analytics/internal/z/a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/H/c;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/H/c;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/H/c;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/a$a;->b:Lio/bidmachine/analytics/internal/H/c;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/a$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/a$a;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/a$a;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/a$a;->b:Lio/bidmachine/analytics/internal/H/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/a$a;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/z/a$a;-><init>(Lio/bidmachine/analytics/internal/H/c;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/a$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/z/a$a;->a:I

    if-nez v0, :cond_16

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/a$a;->b:Lio/bidmachine/analytics/internal/H/c;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/a$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/a$a;->d:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/analytics/internal/H/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.analytics.internal.z.a.b (io.bidmachine.analytics.internal.z.a$b)
.class final Lio/bidmachine/analytics/internal/z/a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/H/e;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/H/e;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/H/e;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/a$b;->b:Lio/bidmachine/analytics/internal/H/e;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/a$b;->c:Ljava/util/List;

    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/a$b;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/a$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/a$b;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/a$b;->b:Lio/bidmachine/analytics/internal/H/e;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/a$b;->c:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/a$b;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/z/a$b;-><init>(Lio/bidmachine/analytics/internal/H/e;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/a$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/z/a$b;->a:I

    if-nez v0, :cond_16

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/a$b;->b:Lio/bidmachine/analytics/internal/H/e;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/a$b;->c:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/a$b;->d:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/analytics/internal/H/e;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
