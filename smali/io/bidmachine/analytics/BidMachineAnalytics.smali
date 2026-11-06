###### Class io.bidmachine.analytics.BidMachineAnalytics (io.bidmachine.analytics.BidMachineAnalytics)
.class public final Lio/bidmachine/analytics/BidMachineAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

.field private static final a:Lkotlin/Lazy;

.field private static b:Ljava/lang/String;

.field private static c:Lio/bidmachine/analytics/internal/b/a;

.field private static d:Lio/bidmachine/analytics/internal/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-direct {v0}, Lio/bidmachine/analytics/BidMachineAnalytics;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics$b;->a:Lio/bidmachine/analytics/BidMachineAnalytics$b;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->a:Lkotlin/Lazy;

    .line 5
    const-string v0, ""

    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/a/a;
    .registers 3

    monitor-enter p0

    .line 8
    :try_start_1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->d:Lio/bidmachine/analytics/internal/a/a;

    if-nez v0, :cond_f

    new-instance v0, Lio/bidmachine/analytics/internal/a/a;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/a/a;-><init>(Landroid/content/Context;)V

    .line 9
    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->d:Lio/bidmachine/analytics/internal/a/a;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw p1
.end method

.method private final a([B)Lio/bidmachine/analytics/internal/b/a;
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/c/a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/c/a;-><init>()V

    .line 2
    new-instance v1, Lio/bidmachine/analytics/internal/d/a;

    invoke-interface {v0}, Lio/bidmachine/analytics/internal/c/b;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/analytics/internal/d/a;-><init>([BLjava/lang/String;[BZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    new-instance p1, Lio/bidmachine/analytics/internal/b/a;

    invoke-direct {p1, v0, v1}, Lio/bidmachine/analytics/internal/b/a;-><init>(Lio/bidmachine/analytics/internal/c/b;Lio/bidmachine/analytics/internal/d/a;)V

    return-object p1
.end method

.method private final a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
    .registers 5

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/a/a;

    move-result-object p1

    .line 5
    sget-object v0, Lio/bidmachine/analytics/internal/z/a;->a:Lio/bidmachine/analytics/internal/z/a;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/z/a;->a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/AnalyticsConfig;)V

    .line 6
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/AnalyticsConfig;)V

    if-eqz p3, :cond_13

    .line 7
    invoke-interface {p3}, Lio/bidmachine/analytics/ConfigureListener;->onConfigured()V

    :cond_13
    return-void
.end method

.method public static final synthetic access$configureInternal(Lio/bidmachine/analytics/BidMachineAnalytics;Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/BidMachineAnalytics;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V

    return-void
.end method

.method public static final synthetic access$createEncryptionManager(Lio/bidmachine/analytics/BidMachineAnalytics;[B)Lio/bidmachine/analytics/internal/b/a;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->a([B)Lio/bidmachine/analytics/internal/b/a;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/h/e;->d(Lio/bidmachine/analytics/internal/a/a;)V

    return-void
.end method

.method public static synthetic getScope$bidmachine_android_sdk_j_3_8_0$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    sget-object v1, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-direct {v1, p0}, Lio/bidmachine/analytics/BidMachineAnalytics;->a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/a/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/analytics/internal/h/e;->c(Lio/bidmachine/analytics/internal/a/a;)V

    return-void
.end method


# virtual methods
.method public final configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V

    return-void
.end method

.method public final configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
    .registers 14

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 3
    sput-object v2, Lio/bidmachine/analytics/BidMachineAnalytics;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->initialize(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->b(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/analytics/BidMachineAnalytics;->getScope$bidmachine_android_sdk_j_3_8_0()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lio/bidmachine/analytics/BidMachineAnalytics$a;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/BidMachineAnalytics$a;-><init>(Lio/bidmachine/analytics/AnalyticsConfig;Ljava/lang/String;Landroid/content/Context;Lio/bidmachine/analytics/ConfigureListener;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v7, v0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getEncryptionManager$bidmachine_android_sdk_j_3_8_0()Lio/bidmachine/analytics/internal/b/a;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->c:Lio/bidmachine/analytics/internal/b/a;

    return-object v0
.end method

.method public final getImpData(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/g/a;->values()[Lio/bidmachine/analytics/internal/g/a;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/g/a;

    if-nez p1, :cond_11

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2
    :cond_11
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/g/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/h/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getScope$bidmachine_android_sdk_j_3_8_0()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getSessionId$bidmachine_android_sdk_j_3_8_0()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final setEncryptionManager$bidmachine_android_sdk_j_3_8_0(Lio/bidmachine/analytics/internal/b/a;)V
    .registers 2

    .line 1
    sput-object p1, Lio/bidmachine/analytics/BidMachineAnalytics;->c:Lio/bidmachine/analytics/internal/b/a;

    return-void
.end method

###### Class io.bidmachine.analytics.BidMachineAnalytics.a (io.bidmachine.analytics.BidMachineAnalytics$a)
.class final Lio/bidmachine/analytics/BidMachineAnalytics$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/bidmachine/analytics/AnalyticsConfig;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lio/bidmachine/analytics/ConfigureListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/AnalyticsConfig;Ljava/lang/String;Landroid/content/Context;Lio/bidmachine/analytics/ConfigureListener;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->c:Lio/bidmachine/analytics/AnalyticsConfig;

    iput-object p2, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->e:Landroid/content/Context;

    iput-object p4, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->f:Lio/bidmachine/analytics/ConfigureListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/BidMachineAnalytics$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/BidMachineAnalytics$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/BidMachineAnalytics$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/analytics/BidMachineAnalytics$a;

    iget-object v1, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->c:Lio/bidmachine/analytics/AnalyticsConfig;

    iget-object v2, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->e:Landroid/content/Context;

    iget-object v4, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->f:Lio/bidmachine/analytics/ConfigureListener;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/BidMachineAnalytics$a;-><init>(Lio/bidmachine/analytics/AnalyticsConfig;Ljava/lang/String;Landroid/content/Context;Lio/bidmachine/analytics/ConfigureListener;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/BidMachineAnalytics$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->a:I

    if-nez v0, :cond_6e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->c:Lio/bidmachine/analytics/AnalyticsConfig;

    :try_start_10
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getBpk()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->access$createEncryptionManager(Lio/bidmachine/analytics/BidMachineAnalytics;[B)Lio/bidmachine/analytics/internal/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->setEncryptionManager$bidmachine_android_sdk_j_3_8_0(Lio/bidmachine/analytics/internal/b/a;)V

    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_36

    :catchall_2b
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :goto_36
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move-object v0, p1

    check-cast v0, Lkotlin/Unit;

    .line 9
    :cond_3f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 12
    iget-object p1, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->e:Landroid/content/Context;

    iget-object v0, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->c:Lio/bidmachine/analytics/AnalyticsConfig;

    iget-object v1, p0, Lio/bidmachine/analytics/BidMachineAnalytics$a;->f:Lio/bidmachine/analytics/ConfigureListener;

    .line 13
    :try_start_48
    sget-object v2, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-static {v2, p1, v0, v1}, Lio/bidmachine/analytics/BidMachineAnalytics;->access$configureInternal(Lio/bidmachine/analytics/BidMachineAnalytics;Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V

    .line 14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_54

    goto :goto_5f

    :catchall_54
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    :goto_5f
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    move-object v0, p1

    check-cast v0, Lkotlin/Unit;

    .line 19
    :cond_68
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 23
    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.analytics.BidMachineAnalytics.b (io.bidmachine.analytics.BidMachineAnalytics$b)
.class final Lio/bidmachine/analytics/BidMachineAnalytics$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/BidMachineAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/BidMachineAnalytics$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/analytics/BidMachineAnalytics$b;

    invoke-direct {v0}, Lio/bidmachine/analytics/BidMachineAnalytics$b;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics$b;->a:Lio/bidmachine/analytics/BidMachineAnalytics$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/BidMachineAnalytics$b;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
