###### Class com.ironsource.C3587ee (com.ironsource.ee)
.class public final Lcom/ironsource/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/U;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/U<",
        "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/hg;

.field private final b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;


# direct methods
.method public static synthetic $r8$lambda$TEwntW2XwZod62X1XCTqFt9rd4s(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/ee;->a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5BebCMGp3i3IOR5XFmJpU7tZH4(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/ee;->a(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;)V
    .registers 4

    const-string v0, "threadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/ee;->a:Lcom/ironsource/hg;

    .line 3
    iput-object p2, p0, Lcom/ironsource/ee;->b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;

    return-void
.end method

.method private static final a(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    .line 10
    iget-object p0, p0, Lcom/ironsource/ee;->b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;

    invoke-interface {p0, p1}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;->onRewardedAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V
    .registers 6

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 4
    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/rewarded/RewardedAd;->getAdInfo()Lcom/unity3d/ironsourceads/rewarded/RewardedAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RewardedAdLoaderListener.onRewardedAdLoaded adInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/ironsource/ee;->b:Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/rewarded/RewardedAdLoaderListener;->onRewardedAdLoaded(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RewardedAdLoaderListener.onRewardedAdLoadFailed error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/ee;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ee$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/ee$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;)V
    .registers 4

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/ee;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/ee$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/ee$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/unity3d/ironsourceads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/ee;->a(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;)V

    return-void
.end method

###### Class com.ironsource.ee$$ExternalSyntheticLambda0 (com.ironsource.ee$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/ee$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ironsourceads/rewarded/RewardedAd;

.field public final synthetic f$1:Lcom/ironsource/ee;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ironsourceads/rewarded/RewardedAd;

    iput-object p2, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/ee;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ironsourceads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/ee;

    invoke-static {v0, v1}, Lcom/ironsource/ee;->$r8$lambda$TEwntW2XwZod62X1XCTqFt9rd4s(Lcom/unity3d/ironsourceads/rewarded/RewardedAd;Lcom/ironsource/ee;)V

    return-void
.end method

###### Class com.ironsource.ee$$ExternalSyntheticLambda1 (com.ironsource.ee$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/ee$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ee;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ee;

    iput-object p2, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/ee;

    iget-object v1, p0, Lcom/ironsource/ee$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1}, Lcom/ironsource/ee;->$r8$lambda$l5BebCMGp3i3IOR5XFmJpU7tZH4(Lcom/ironsource/ee;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
