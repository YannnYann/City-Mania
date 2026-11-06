###### Class com.ironsource.C3550ce (com.ironsource.ce)
.class public final Lcom/ironsource/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Gb;
.implements Lcom/ironsource/g6;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRewardedAdLoadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedAdLoadTask.kt\ncom/unity3d/ironsourceads/internal/load/rewarded/RewardedAdLoadTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

.field private final b:Lcom/ironsource/Hb;

.field private final c:Lcom/ironsource/U;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/U<",
            "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/x2;

.field private final e:Lcom/ironsource/Ac;

.field private final f:Lcom/ironsource/r1;

.field private final g:Lcom/ironsource/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/d0<",
            "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/ironsource/ig$c;

.field private final i:Ljava/util/concurrent/Executor;

.field private j:Lcom/ironsource/l5;

.field private k:Lcom/ironsource/ig;

.field private l:Lcom/ironsource/g2;

.field private m:Z


# direct methods
.method public static synthetic $r8$lambda$1pgHxUTfJ6PqpqVKIFvYdv523z0(Lcom/ironsource/ce;Lcom/ironsource/R9;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/ce;->a(Lcom/ironsource/ce;Lcom/ironsource/R9;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MAGsralhE-Rn3PiM4-foLJYl1ZI(Lcom/ironsource/ce;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/ce;->a(Lcom/ironsource/ce;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;Lcom/ironsource/Hb;Lcom/ironsource/U;Lcom/ironsource/x2;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/d0;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;",
            "Lcom/ironsource/Hb;",
            "Lcom/ironsource/U<",
            "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;",
            ">;",
            "Lcom/ironsource/x2;",
            "Lcom/ironsource/Ac;",
            "Lcom/ironsource/r1;",
            "Lcom/ironsource/d0<",
            "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;",
            ">;",
            "Lcom/ironsource/ig$c;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadTaskConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadTaskListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionResponseFetcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkLoadApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObjectFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskFinishedExecutor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    .line 3
    iput-object p2, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    .line 4
    iput-object p3, p0, Lcom/ironsource/ce;->c:Lcom/ironsource/U;

    .line 5
    iput-object p4, p0, Lcom/ironsource/ce;->d:Lcom/ironsource/x2;

    .line 6
    iput-object p5, p0, Lcom/ironsource/ce;->e:Lcom/ironsource/Ac;

    .line 7
    iput-object p6, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    .line 8
    iput-object p7, p0, Lcom/ironsource/ce;->g:Lcom/ironsource/d0;

    .line 9
    iput-object p8, p0, Lcom/ironsource/ce;->h:Lcom/ironsource/ig$c;

    .line 10
    iput-object p9, p0, Lcom/ironsource/ce;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;Lcom/ironsource/Hb;Lcom/ironsource/U;Lcom/ironsource/x2;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/d0;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_d

    .line 11
    new-instance v1, Lcom/ironsource/ig$d;

    invoke-direct {v1}, Lcom/ironsource/ig$d;-><init>()V

    move-object v10, v1

    goto :goto_f

    :cond_d
    move-object/from16 v10, p8

    :goto_f
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_27

    .line 12
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    invoke-virtual {v0}, Lcom/ironsource/V7;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    move-object v11, v0

    :goto_1a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    goto :goto_2a

    :cond_27
    move-object/from16 v11, p9

    goto :goto_1a

    .line 13
    :goto_2a
    invoke-direct/range {v2 .. v11}, Lcom/ironsource/ce;-><init>(Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;Lcom/ironsource/Hb;Lcom/ironsource/U;Lcom/ironsource/x2;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/d0;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final a(Landroid/os/Bundle;)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_4a

    .line 35
    :cond_3
    sget-object v0, Lcom/ironsource/V5;->a:Lcom/ironsource/V5;

    invoke-virtual {v0, p1}, Lcom/ironsource/V5;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    sget-object v3, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    new-instance v4, Lcom/ironsource/n1$l;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/ironsource/n1$l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/k1$c$a;->a(Lcom/ironsource/n1$l;)Lcom/ironsource/k1;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    invoke-interface {v1, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    goto :goto_11

    :cond_4a
    :goto_4a
    return-void
.end method

.method private static final a(Lcom/ironsource/ce;Lcom/ironsource/R9;)V
    .registers 5

    .line 20
    iget-boolean v0, p0, Lcom/ironsource/ce;->m:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/ironsource/ce;->m:Z

    .line 25
    iget-object v0, p0, Lcom/ironsource/ce;->k:Lcom/ironsource/ig;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/ironsource/ig;->cancel()V

    .line 28
    :cond_f
    new-instance v0, Lcom/ironsource/n1$f;

    iget-object v1, p0, Lcom/ironsource/ce;->j:Lcom/ironsource/l5;

    if-nez v1, :cond_1b

    const-string v1, "taskStartedTime"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1b
    invoke-static {v1}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/n1$f;-><init>(J)V

    .line 29
    sget-object v1, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    invoke-virtual {v1, v0}, Lcom/ironsource/k1$c$a;->a(Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 31
    iget-object v0, p0, Lcom/ironsource/ce;->l:Lcom/ironsource/g2;

    if-eqz v0, :cond_36

    const-string v1, "onAdInstanceLoadSuccess"

    invoke-virtual {v0, v1}, Lcom/ironsource/g2;->c(Ljava/lang/String;)V

    .line 33
    :cond_36
    iget-object v0, p0, Lcom/ironsource/ce;->g:Lcom/ironsource/d0;

    iget-object v1, p0, Lcom/ironsource/ce;->l:Lcom/ironsource/g2;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/ironsource/d0;->a(Lcom/ironsource/R9;Lcom/ironsource/g2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ironsourceads/rewarded/RewardedAd;

    .line 34
    iget-object p0, p0, Lcom/ironsource/ce;->c:Lcom/ironsource/U;

    invoke-interface {p0, p1}, Lcom/ironsource/U;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/ce;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 8

    .line 62
    iget-boolean v0, p0, Lcom/ironsource/ce;->m:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/ironsource/ce;->m:Z

    .line 67
    iget-object v0, p0, Lcom/ironsource/ce;->k:Lcom/ironsource/ig;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/ironsource/ig;->cancel()V

    .line 69
    :cond_f
    sget-object v0, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    .line 70
    new-instance v1, Lcom/ironsource/n1$j;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$j;-><init>(I)V

    .line 71
    new-instance v2, Lcom/ironsource/n1$k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/n1$k;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v3, Lcom/ironsource/n1$f;

    .line 73
    iget-object v4, p0, Lcom/ironsource/ce;->j:Lcom/ironsource/l5;

    if-nez v4, :cond_2f

    const-string v4, "taskStartedTime"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2f
    invoke-static {v4}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v4

    .line 74
    invoke-direct {v3, v4, v5}, Lcom/ironsource/n1$f;-><init>(J)V

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/k1$c$a;->a(Lcom/ironsource/n1$j;Lcom/ironsource/n1$k;Lcom/ironsource/n1$f;)Lcom/ironsource/k1;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 82
    iget-object v0, p0, Lcom/ironsource/ce;->l:Lcom/ironsource/g2;

    if-eqz v0, :cond_48

    const-string v1, "onAdInstanceLoadFail"

    invoke-virtual {v0, v1}, Lcom/ironsource/g2;->a(Ljava/lang/String;)V

    .line 84
    :cond_48
    iget-object p0, p0, Lcom/ironsource/ce;->c:Lcom/ironsource/U;

    invoke-interface {p0, p1}, Lcom/ironsource/U;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private final a(Ljava/lang/Exception;)V
    .registers 5

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 86
    sget-object v0, Lcom/ironsource/k1$d;->a:Lcom/ironsource/k1$d$a;

    .line 87
    new-instance v1, Lcom/ironsource/n1$k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$k;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/ironsource/k1$d$a;->a(Lcom/ironsource/n1$k;)Lcom/ironsource/k1;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 91
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/R9;)V
    .registers 4

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    iget-object v0, p0, Lcom/ironsource/ce;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ironsource/ce$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ce$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/ce;Lcom/ironsource/R9;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 19
    invoke-direct {p0, p1}, Lcom/ironsource/ce;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :try_start_5
    iget-object v0, p0, Lcom/ironsource/ce;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ironsource/ce$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ce$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/ce;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 61
    invoke-direct {p0, p1}, Lcom/ironsource/ce;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v0, p1}, Lcom/ironsource/z5;->c(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/ce;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public start()V
    .registers 10

    .line 1
    new-instance v0, Lcom/ironsource/l5;

    invoke-direct {v0}, Lcom/ironsource/l5;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ce;->j:Lcom/ironsource/l5;

    .line 3
    iget-object v0, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    .line 4
    new-instance v1, Lcom/ironsource/n1$s;

    iget-object v2, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    invoke-virtual {v2}, Lcom/ironsource/Hb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$s;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/ironsource/n1$n;

    iget-object v3, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    invoke-virtual {v3}, Lcom/ironsource/Hb;->g()Lcom/ironsource/x9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/x9;->c()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/ironsource/n1$n;-><init>(I)V

    .line 6
    new-instance v3, Lcom/ironsource/n1$b;

    iget-object v4, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    invoke-virtual {v4}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;->getAdId$mediationsdk_release()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ironsource/n1$b;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/ironsource/o1;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    .line 7
    invoke-interface {v0, v4}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 11
    sget-object v0, Lcom/ironsource/k1$c;->a:Lcom/ironsource/k1$c$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$c$a;->a()Lcom/ironsource/k1;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    invoke-interface {v0, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 13
    iget-object v0, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/ce;->a(Landroid/os/Bundle;)V

    .line 15
    iget-object v0, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    invoke-virtual {v0}, Lcom/ironsource/Hb;->h()J

    move-result-wide v2

    .line 17
    iget-object v0, p0, Lcom/ironsource/ce;->h:Lcom/ironsource/ig$c;

    .line 18
    new-instance v4, Lcom/ironsource/ig$b;

    invoke-direct {v4}, Lcom/ironsource/ig$b;-><init>()V

    invoke-virtual {v4, v2, v3}, Lcom/ironsource/ig$b;->b(J)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    invoke-interface {v0, v4}, Lcom/ironsource/ig$c;->a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/ironsource/ce;->k:Lcom/ironsource/ig;

    if-eqz v0, :cond_73

    .line 25
    new-instance v2, Lcom/ironsource/ce$a;

    invoke-direct {v2, p0}, Lcom/ironsource/ce$a;-><init>(Lcom/ironsource/ce;)V

    .line 26
    invoke-interface {v0, v2}, Lcom/ironsource/ig;->a(Lcom/ironsource/ig$a;)V

    .line 34
    :cond_73
    iget-object v0, p0, Lcom/ironsource/ce;->d:Lcom/ironsource/x2;

    invoke-interface {v0}, Lcom/ironsource/x2;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_80

    goto :goto_8f

    .line 35
    :cond_80
    const-string v0, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.error.ISException"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/ironsource/f8;

    invoke-virtual {v2}, Lcom/ironsource/f8;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/ce;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v0, 0x0

    .line 36
    :goto_8f
    check-cast v0, Lcom/ironsource/u2;

    if-nez v0, :cond_94

    return-void

    .line 41
    :cond_94
    iget-object v2, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    .line 42
    invoke-virtual {v0}, Lcom/ironsource/u2;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a8

    new-instance v4, Lcom/ironsource/n1$d;

    invoke-direct {v4, v3}, Lcom/ironsource/n1$d;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Lcom/ironsource/o1;

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 43
    :cond_a8
    invoke-virtual {v0}, Lcom/ironsource/u2;->f()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_ba

    new-instance v4, Lcom/ironsource/n1$m;

    invoke-direct {v4, v3}, Lcom/ironsource/n1$m;-><init>(Lorg/json/JSONObject;)V

    new-array v3, v1, [Lcom/ironsource/o1;

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 44
    :cond_ba
    invoke-virtual {v0}, Lcom/ironsource/u2;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cc

    .line 45
    new-instance v4, Lcom/ironsource/n1$g;

    invoke-direct {v4, v3}, Lcom/ironsource/n1$g;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Lcom/ironsource/o1;

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 49
    :cond_cc
    iget-object v2, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    invoke-virtual {v2}, Lcom/ironsource/Hb;->g()Lcom/ironsource/x9;

    move-result-object v2

    .line 50
    new-instance v3, Lcom/ironsource/f6;

    invoke-direct {v3}, Lcom/ironsource/f6;-><init>()V

    .line 51
    invoke-virtual {v3, p0}, Lcom/ironsource/f6;->a(Lcom/ironsource/g6;)V

    .line 53
    new-instance v4, Lcom/ironsource/tc;

    invoke-direct {v4}, Lcom/ironsource/tc;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/tc;->a()Ljava/util/Map;

    move-result-object v4

    .line 54
    sget-object v6, Lcom/ironsource/V5;->a:Lcom/ironsource/V5;

    iget-object v7, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    invoke-virtual {v7}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ironsource/V5;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    .line 56
    new-instance v7, Lcom/ironsource/S9;

    iget-object v8, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    invoke-virtual {v8}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v8

    invoke-interface {v8}, Lcom/ironsource/Jd;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/ironsource/S9;-><init>(Ljava/lang/String;Lcom/ironsource/Oc;)V

    .line 57
    sget-object v3, Lcom/ironsource/x9;->d:Lcom/ironsource/x9;

    invoke-virtual {v2, v3}, Lcom/ironsource/x9;->b(Lcom/ironsource/x9;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/ironsource/S9;->a(Z)Lcom/ironsource/S9;

    move-result-object v3

    .line 58
    iget-object v7, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    invoke-virtual {v7}, Lcom/ironsource/Hb;->i()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/ironsource/S9;->b(Z)Lcom/ironsource/S9;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/ironsource/S9;->c()Lcom/ironsource/S9;

    move-result-object v3

    .line 60
    iget-object v7, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    invoke-virtual {v7}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;->getAdId$mediationsdk_release()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/ironsource/S9;->a(Ljava/lang/String;)Lcom/ironsource/S9;

    move-result-object v3

    .line 61
    invoke-static {v4, v6}, Lkotlin/collections/MapsKt__MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/S9;->a(Ljava/util/Map;)Lcom/ironsource/S9;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/ironsource/S9;->a()Lcom/ironsource/R9;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    new-instance v6, Lcom/ironsource/n1$b;

    invoke-virtual {v3}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getId(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/ironsource/n1$b;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Lcom/ironsource/o1;

    aput-object v6, v1, v5

    invoke-interface {v4, v1}, Lcom/ironsource/r1;->a([Lcom/ironsource/o1;)V

    .line 66
    new-instance v1, Lcom/ironsource/Cc;

    iget-object v4, p0, Lcom/ironsource/ce;->b:Lcom/ironsource/Hb;

    invoke-virtual {v4}, Lcom/ironsource/Hb;->j()Z

    move-result v4

    invoke-direct {v1, v0, v4}, Lcom/ironsource/Cc;-><init>(Lcom/ironsource/u2;Z)V

    .line 69
    new-instance v4, Lcom/ironsource/w9;

    .line 70
    iget-object v5, p0, Lcom/ironsource/ce;->a:Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;

    invoke-virtual {v5}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ironsource/x9;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/ironsource/u2;->a()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-direct {v4, v5, v2, v6}, Lcom/ironsource/w9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    new-instance v2, Lcom/ironsource/g2;

    .line 76
    new-instance v5, Lcom/ironsource/mediationsdk/d;

    invoke-direct {v5}, Lcom/ironsource/mediationsdk/d;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/u2;->c()Lcom/ironsource/o2;

    move-result-object v0

    .line 77
    invoke-direct {v2, v4, v5, v0}, Lcom/ironsource/g2;-><init>(Lcom/ironsource/w9;Lcom/ironsource/mediationsdk/d;Lcom/ironsource/o2;)V

    .line 78
    iput-object v2, p0, Lcom/ironsource/ce;->l:Lcom/ironsource/g2;

    .line 82
    sget-object v0, Lcom/ironsource/k1$d;->a:Lcom/ironsource/k1$d$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$d$a;->c()Lcom/ironsource/k1$b;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/ce;->f:Lcom/ironsource/r1;

    invoke-virtual {v0, v2}, Lcom/ironsource/k1$b;->a(Lcom/ironsource/r1;)V

    .line 84
    iget-object v0, p0, Lcom/ironsource/ce;->e:Lcom/ironsource/Ac;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v3, v1}, Lcom/ironsource/Ac;->a(Lcom/ironsource/R9;Lcom/ironsource/Cc;)V

    return-void
.end method

###### Class com.ironsource.C3550ce.a (com.ironsource.ce$a)
.class public final Lcom/ironsource/ce$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/ce;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/ce;


# direct methods
.method public constructor <init>(Lcom/ironsource/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/ce$a;->a:Lcom/ironsource/ce;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/ce$a;->a:Lcom/ironsource/ce;

    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v1}, Lcom/ironsource/z5;->s()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ce;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

###### Class com.ironsource.ce$$ExternalSyntheticLambda0 (com.ironsource.ce$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/ce$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ce;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ce;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/ce;

    iput-object p2, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/ce;

    iget-object v1, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1}, Lcom/ironsource/ce;->$r8$lambda$MAGsralhE-Rn3PiM4-foLJYl1ZI(Lcom/ironsource/ce;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

###### Class com.ironsource.ce$$ExternalSyntheticLambda1 (com.ironsource.ce$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/ce$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ce;

.field public final synthetic f$1:Lcom/ironsource/R9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ce;Lcom/ironsource/R9;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ce;

    iput-object p2, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/R9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ce;

    iget-object v1, p0, Lcom/ironsource/ce$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/R9;

    invoke-static {v0, v1}, Lcom/ironsource/ce;->$r8$lambda$1pgHxUTfJ6PqpqVKIFvYdv523z0(Lcom/ironsource/ce;Lcom/ironsource/R9;)V

    return-void
.end method
