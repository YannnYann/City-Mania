###### Class com.ironsource.C3833s6 (com.ironsource.s6)
.class public final Lcom/ironsource/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t6;


# instance fields
.field private final a:Lcom/ironsource/cb;

.field private final b:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public static synthetic $r8$lambda$B9CbF2aamBDNtNaT5MK-X4yHnU0(Lcom/ironsource/s6;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/s6;->b(Lcom/ironsource/s6;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uv7ojG6DYW3kORyK9RrRBNv8SZI(Lcom/ironsource/s6;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/s6;->a(Lcom/ironsource/s6;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method

.method private static final a(Lcom/ironsource/s6;)V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->k()Lcom/ironsource/db;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, p0}, Lcom/ironsource/db;->onAdClicked(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_d
    return-void
.end method

.method private static final b(Lcom/ironsource/s6;)V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->k()Lcom/ironsource/db;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, p0}, Lcom/ironsource/db;->onAdClosed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdExpired on shown state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 2
    iget-object p2, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {p2}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x276

    .line 4
    const-string v2, "Ad is already shown"

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    iget-object v0, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    .line 12
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdDisplayFailed on shown state with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public c()Lcom/ironsource/k0;
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/k0$a;

    const-string v1, "ad is shown"

    invoke-direct {v0, v1}, Lcom/ironsource/k0$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadAd()V
    .registers 7

    .line 1
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 2
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v2}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x275

    .line 4
    const-string v4, "Load is called while ad is shown"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/cb;->a(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdError;JILjava/lang/Object;)V

    return-void
.end method

.method public onAdClicked()V
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdClicked adInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v0

    new-instance v1, Lcom/ironsource/s6$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/ironsource/s6$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/s6;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdClosed()V
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/s6;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdClosed adInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    sget-object v1, Lcom/ironsource/l6$a;->b:Lcom/ironsource/l6$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->a(Lcom/ironsource/l6$a;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v0

    new-instance v1, Lcom/ironsource/s6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ironsource/s6$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/s6;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdDisplayed on shown state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdInfoChanged on shown state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    .line 2
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed on shown state with error: "

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
    iget-object p1, p0, Lcom/ironsource/s6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdLoaded on shown state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.s6$$ExternalSyntheticLambda0 (com.ironsource.s6$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/s6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/s6;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/s6;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/s6$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/s6;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/s6$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/s6;

    invoke-static {v0}, Lcom/ironsource/s6;->$r8$lambda$B9CbF2aamBDNtNaT5MK-X4yHnU0(Lcom/ironsource/s6;)V

    return-void
.end method

###### Class com.ironsource.s6$$ExternalSyntheticLambda1 (com.ironsource.s6$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/s6$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/s6;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/s6;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/s6$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/s6;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/s6$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/s6;

    invoke-static {v0}, Lcom/ironsource/s6;->$r8$lambda$Uv7ojG6DYW3kORyK9RrRBNv8SZI(Lcom/ironsource/s6;)V

    return-void
.end method
