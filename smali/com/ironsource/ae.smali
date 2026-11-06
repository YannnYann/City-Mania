###### Class com.ironsource.C3514ae (com.ironsource.ae)
.class public final Lcom/ironsource/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/h6;


# instance fields
.field private a:Lcom/ironsource/R9;

.field private b:Lcom/ironsource/b0;

.field private c:Lcom/ironsource/h2;

.field private d:Lcom/ironsource/r1;

.field private e:Lcom/ironsource/rc;

.field private f:Lcom/ironsource/hg;

.field private g:Lcom/ironsource/Q8;

.field private h:Lcom/ironsource/Q8$a;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/ae;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

.field private k:Lcom/ironsource/be;


# direct methods
.method public static synthetic $r8$lambda$4bbQpEKY-l0jfHSuZSqgMTSf8kU(Lcom/ironsource/ae;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/ae;->e(Lcom/ironsource/ae;)V

    return-void
.end method

.method public static synthetic $r8$lambda$697uVjHhqDepr4wS82hEWREn0r8(Lcom/ironsource/ae;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/ae;->c(Lcom/ironsource/ae;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9y6RU6et01moeQmudSMUrj-DpA(Lcom/ironsource/ae;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/ae;->a(Lcom/ironsource/ae;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGbmjks3-Oo0MvI3dzogZ9VWDEs(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/ae;->a(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OMWy5RWrB6jStHJmsK78Kmv-9c0(Lcom/ironsource/ae;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/ae;->b(Lcom/ironsource/ae;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WbCoyQu1Vr-Un9Xyk9zs_lG0K5M(Lcom/ironsource/ae;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/ae;->d(Lcom/ironsource/ae;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/R9;Lcom/ironsource/b0;Lcom/ironsource/h2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/R9;",
            "Lcom/ironsource/b0;",
            "Lcom/ironsource/h2;",
            "Lcom/ironsource/r1;",
            "Lcom/ironsource/rc;",
            "Lcom/ironsource/hg;",
            "Lcom/ironsource/Q8;",
            "Lcom/ironsource/Q8$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/ae;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adNetworkShow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionDataReporter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkDestroyAPI"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionDepthService"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionDepthServiceEditor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retainer"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    .line 3
    iput-object p2, p0, Lcom/ironsource/ae;->b:Lcom/ironsource/b0;

    .line 4
    iput-object p3, p0, Lcom/ironsource/ae;->c:Lcom/ironsource/h2;

    .line 5
    iput-object p4, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    .line 6
    iput-object p5, p0, Lcom/ironsource/ae;->e:Lcom/ironsource/rc;

    .line 7
    iput-object p6, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    .line 8
    iput-object p7, p0, Lcom/ironsource/ae;->g:Lcom/ironsource/Q8;

    .line 10
    iput-object p8, p0, Lcom/ironsource/ae;->h:Lcom/ironsource/Q8$a;

    .line 12
    iput-object p9, p0, Lcom/ironsource/ae;->i:Ljava/util/Map;

    .line 15
    new-instance p2, Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    invoke-virtual {p1}, Lcom/ironsource/R9;->f()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getInstanceId(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-virtual {p3}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object p3

    const-string p4, "getId(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/ae;->j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    .line 19
    new-instance p1, Lcom/ironsource/f6;

    invoke-direct {p1}, Lcom/ironsource/f6;-><init>()V

    .line 20
    iget-object p2, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-virtual {p2, p1}, Lcom/ironsource/R9;->a(Lcom/ironsource/Oc;)V

    .line 21
    invoke-virtual {p1, p0}, Lcom/ironsource/f6;->a(Lcom/ironsource/h6;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/R9;Lcom/ironsource/b0;Lcom/ironsource/h2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_d

    .line 22
    new-instance v1, Lcom/ironsource/sc;

    invoke-direct {v1}, Lcom/ironsource/sc;-><init>()V

    move-object v7, v1

    goto :goto_f

    :cond_d
    move-object/from16 v7, p5

    :goto_f
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_17

    .line 23
    sget-object v1, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    move-object v8, v1

    goto :goto_19

    :cond_17
    move-object/from16 v8, p6

    :goto_19
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_29

    .line 25
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->s()Lcom/ironsource/Q8;

    move-result-object v1

    move-object v9, v1

    goto :goto_2b

    :cond_29
    move-object/from16 v9, p7

    :goto_2b
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_43

    .line 27
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->a()Lcom/ironsource/L7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/L7;->i()Lcom/ironsource/Q8$a;

    move-result-object v0

    move-object v10, v0

    :goto_3a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p9

    goto :goto_46

    :cond_43
    move-object/from16 v10, p8

    goto :goto_3a

    .line 28
    :goto_46
    invoke-direct/range {v2 .. v11}, Lcom/ironsource/ae;-><init>(Lcom/ironsource/R9;Lcom/ironsource/b0;Lcom/ironsource/h2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Ljava/util/Map;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/ae;)V
    .registers 3

    .line 22
    sget-object v0, Lcom/ironsource/k1$d;->a:Lcom/ironsource/k1$d$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$d$a;->b()Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 23
    iget-object v0, p0, Lcom/ironsource/ae;->e:Lcom/ironsource/rc;

    iget-object p0, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-interface {v0, p0}, Lcom/ironsource/rc;->a(Lcom/ironsource/R9;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    .line 20
    iget-object p0, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/ironsource/be;->onRewardedAdFailedToShow(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_7
    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 11
    iget-object v0, p0, Lcom/ironsource/ae;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/ironsource/ae;->j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    invoke-virtual {v1}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    .line 13
    new-instance v1, Lcom/ironsource/n1$j;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ironsource/n1$j;-><init>(I)V

    .line 14
    new-instance v2, Lcom/ironsource/n1$k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/n1$k;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/k1$a$a;->a(Lcom/ironsource/n1$j;Lcom/ironsource/n1$k;)Lcom/ironsource/k1;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 19
    iget-object v0, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ae$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ae$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final b(Lcom/ironsource/ae;)V
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/ironsource/be;->onRewardedAdClicked()V

    :cond_7
    return-void
.end method

.method private static final c(Lcom/ironsource/ae;)V
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/ironsource/be;->onRewardedAdDismissed()V

    :cond_7
    return-void
.end method

.method private static final d(Lcom/ironsource/ae;)V
    .registers 1

    .line 3
    iget-object p0, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/ironsource/be;->onUserEarnedReward()V

    :cond_7
    return-void
.end method

.method private static final e(Lcom/ironsource/ae;)V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/ironsource/be;->onRewardedAdShown()V

    :cond_7
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 21
    iget-object v0, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ae$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ironsource/ae$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/ae;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/hg;->a(Lcom/ironsource/hg;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/ae;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/ironsource/ae;->j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    invoke-virtual {v1}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/ironsource/ae;->b:Lcom/ironsource/b0;

    iget-object v1, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-interface {v0, v1}, Lcom/ironsource/b0;->a(Lcom/ironsource/R9;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 5
    sget-object p1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p1}, Lcom/ironsource/z5;->t()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 8
    :cond_24
    sget-object v0, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ironsource/o1;

    invoke-virtual {v0, v1}, Lcom/ironsource/k1$a$a;->d([Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/ae;->b:Lcom/ironsource/b0;

    iget-object v1, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-interface {v0, p1, v1}, Lcom/ironsource/b0;->a(Landroid/app/Activity;Lcom/ironsource/R9;)V

    return-void
.end method

.method public final a(Lcom/ironsource/be;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    return-void
.end method

.method public final a(Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/ae;->j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 10
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/z5;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/ae;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public final b()Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ae;->j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    return-object v0
.end method

.method public final c()Lcom/ironsource/be;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ae;->k:Lcom/ironsource/be;

    return-object v0
.end method

.method public final d()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ae;->b:Lcom/ironsource/b0;

    iget-object v1, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-interface {v0, v1}, Lcom/ironsource/b0;->a(Lcom/ironsource/R9;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    invoke-virtual {v1, v0}, Lcom/ironsource/k1$a$a;->a(Z)Lcom/ironsource/k1;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v1, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    return v0
.end method

.method public final finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/ae;->a()V

    return-void
.end method

.method public onAdInstanceDidBecomeVisible()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ironsource/o1;

    invoke-virtual {v0, v1}, Lcom/ironsource/k1$a$a;->f([Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    return-void
.end method

.method public onAdInstanceDidClick()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$a$a;->a()Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ae$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/ironsource/ae$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/ae;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdInstanceDidDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/ae;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/ironsource/ae;->j:Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    invoke-virtual {v1}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ironsource/o1;

    invoke-virtual {v0, v1}, Lcom/ironsource/k1$a$a;->a([Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ae$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ironsource/ae$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/ae;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdInstanceDidReward(Ljava/lang/String;I)V
    .registers 9

    .line 1
    new-instance p1, Lcom/ironsource/n1$u;

    const-string p2, "Virtual Item"

    invoke-direct {p1, p2}, Lcom/ironsource/n1$u;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/ironsource/n1$t;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/ironsource/n1$t;-><init>(I)V

    .line 3
    new-instance v1, Lcom/ironsource/n1$q;

    const-string v2, "DefaultRewardedVideo"

    invoke-direct {v1, v2}, Lcom/ironsource/n1$q;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/ironsource/n1$y;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/ironsource/ae;->a:Lcom/ironsource/R9;

    invoke-virtual {v5}, Lcom/ironsource/R9;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getTransId(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {v2, v3}, Lcom/ironsource/n1$y;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object v3, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/ironsource/o1;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v0

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v2, v4, p1

    invoke-virtual {v3, v4}, Lcom/ironsource/k1$a$a;->c([Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {p1, p2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 12
    iget-object p1, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    new-instance p2, Lcom/ironsource/ae$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/ironsource/ae$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/ae;)V

    invoke-interface {p1, p2}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdInstanceDidShow()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/ae;->g:Lcom/ironsource/Q8;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v0, v1}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    .line 2
    sget-object v2, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    new-instance v3, Lcom/ironsource/n1$w;

    invoke-direct {v3, v0}, Lcom/ironsource/n1$w;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ironsource/o1;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v2, v0}, Lcom/ironsource/k1$a$a;->b([Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/ironsource/ae;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/ae;->h:Lcom/ironsource/Q8$a;

    invoke-interface {v0, v1}, Lcom/ironsource/Q8$a;->b(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/ae;->c:Lcom/ironsource/h2;

    const-string v1, "onAdInstanceDidShow"

    invoke-interface {v0, v1}, Lcom/ironsource/h2;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/ae;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ae$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/ironsource/ae$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/ae;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.ae$$ExternalSyntheticLambda0 (com.ironsource.ae$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/ae;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/ae;

    invoke-static {v0}, Lcom/ironsource/ae;->$r8$lambda$F9y6RU6et01moeQmudSMUrj-DpA(Lcom/ironsource/ae;)V

    return-void
.end method

###### Class com.ironsource.ae$$ExternalSyntheticLambda1 (com.ironsource.ae$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ae;

    iput-object p2, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ae;

    iget-object v1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1}, Lcom/ironsource/ae;->$r8$lambda$HGbmjks3-Oo0MvI3dzogZ9VWDEs(Lcom/ironsource/ae;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

###### Class com.ironsource.ae$$ExternalSyntheticLambda2 (com.ironsource.ae$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/ae;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/ae;

    invoke-static {v0}, Lcom/ironsource/ae;->$r8$lambda$697uVjHhqDepr4wS82hEWREn0r8(Lcom/ironsource/ae;)V

    return-void
.end method

###### Class com.ironsource.ae$$ExternalSyntheticLambda3 (com.ironsource.ae$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/ae;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/ae;

    invoke-static {v0}, Lcom/ironsource/ae;->$r8$lambda$4bbQpEKY-l0jfHSuZSqgMTSf8kU(Lcom/ironsource/ae;)V

    return-void
.end method

###### Class com.ironsource.ae$$ExternalSyntheticLambda4 (com.ironsource.ae$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/ae;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/ae;

    invoke-static {v0}, Lcom/ironsource/ae;->$r8$lambda$OMWy5RWrB6jStHJmsK78Kmv-9c0(Lcom/ironsource/ae;)V

    return-void
.end method

###### Class com.ironsource.ae$$ExternalSyntheticLambda5 (com.ironsource.ae$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/ironsource/ae$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ae;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/ae;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/ae$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/ae;

    invoke-static {v0}, Lcom/ironsource/ae;->$r8$lambda$WbCoyQu1Vr-Un9Xyk9zs_lG0K5M(Lcom/ironsource/ae;)V

    return-void
.end method
