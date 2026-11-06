###### Class com.ironsource.C3776p6 (com.ironsource.p6)
.class public final Lcom/ironsource/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t6;


# instance fields
.field private final a:Lcom/ironsource/cb;

.field private b:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field private final c:Lcom/ironsource/t4;

.field private final d:J


# direct methods
.method public static synthetic $r8$lambda$GgNB3B19bMDuE-WdqEIoAMbwuMc(Lcom/ironsource/p6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/p6;->a(Lcom/ironsource/p6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/t4;)V
    .registers 5

    const-string v0, "adInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 4
    iput-object p3, p0, Lcom/ironsource/p6;->c:Lcom/ironsource/t4;

    .line 6
    invoke-interface {p3}, Lcom/ironsource/t4;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ironsource/p6;->d:J

    return-void
.end method

.method private static final a(Lcom/ironsource/p6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 2

    .line 8
    iget-object p0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {p0}, Lcom/ironsource/cb;->k()Lcom/ironsource/db;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lcom/ironsource/db;->onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_b
    return-void
.end method

.method private final d()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->c:Lcom/ironsource/t4;

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/p6;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "onAdExpired"

    invoke-static {v1, v4, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    sget-object v1, Lcom/ironsource/l6$a;->c:Lcom/ironsource/l6$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->a(Lcom/ironsource/l6$a;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/cb;->d()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/p0;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/md;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v2, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-direct {v1, v2, p2}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Lcom/unity3d/mediation/LevelPlayAdInfo;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 4
    iget-object p2, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    new-instance v2, Lcom/ironsource/r6;

    invoke-direct {v2, p2, v1}, Lcom/ironsource/r6;-><init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-virtual {p2, v2}, Lcom/ironsource/cb;->a(Lcom/ironsource/t6;)V

    .line 5
    iget-object p2, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {p2}, Lcom/ironsource/cb;->c()Lcom/ironsource/i6;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/i6;->a(Landroid/app/Activity;Lcom/ironsource/md;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    .line 10
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdDisplayFailed on loaded state with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public c()Lcom/ironsource/k0;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->l()Lcom/ironsource/M7;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/ironsource/M7;->g()Lcom/ironsource/t7;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/t7;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/L3;->d()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 5
    sget-object v1, Lcom/ironsource/k0$a;->c:Lcom/ironsource/k0$a$a;

    invoke-virtual {v0}, Lcom/ironsource/L3;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/k0$a$a;->a(Ljava/lang/String;)Lcom/ironsource/k0$a;

    move-result-object v0

    return-object v0

    .line 7
    :cond_25
    sget-object v0, Lcom/ironsource/k0$b;->a:Lcom/ironsource/k0$b;

    return-object v0
.end method

.method public loadAd()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/ironsource/p6;->d()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v2}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/pg;->a(Ljava/lang/Long;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    iget-object v1, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public onAdClicked()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdClicked on loaded state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdClosed on loaded state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdDisplayed on loaded state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 7

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdInfoChanged adInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v1, v2, p1}, Lcom/ironsource/pg;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 4
    iput-object p1, p0, Lcom/ironsource/p6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 5
    new-instance v1, Lcom/ironsource/p6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/p6$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/p6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    .line 2
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed on loaded state with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/p6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdLoaded on loaded state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.p6$$ExternalSyntheticLambda0 (com.ironsource.p6$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/p6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/p6;

.field public final synthetic f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/p6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p6$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/p6;

    iput-object p2, p0, Lcom/ironsource/p6$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/p6$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/p6;

    iget-object v1, p0, Lcom/ironsource/p6$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-static {v0, v1}, Lcom/ironsource/p6;->$r8$lambda$GgNB3B19bMDuE-WdqEIoAMbwuMc(Lcom/ironsource/p6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method
