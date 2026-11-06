###### Class com.ironsource.C3665j3 (com.ironsource.j3)
.class public final Lcom/ironsource/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/U;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/U<",
        "Lcom/unity3d/ironsourceads/banner/BannerAdView;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/hg;

.field private final b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;


# direct methods
.method public static synthetic $r8$lambda$4HQJ46SgaKWr7oyJvTtkQuIVEhw(Lcom/unity3d/ironsourceads/banner/BannerAdView;Lcom/ironsource/j3;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/j3;->a(Lcom/unity3d/ironsourceads/banner/BannerAdView;Lcom/ironsource/j3;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8TqDQqqkjnD6ExUcTc438GvU6Rk(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/j3;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;)V
    .registers 4

    const-string v0, "threadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/j3;->a:Lcom/ironsource/hg;

    .line 3
    iput-object p2, p0, Lcom/ironsource/j3;->b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

    return-void
.end method

.method private static final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;)V
    .registers 5

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BannerAdLoaderListener.onBannerAdLoadFailed error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/ironsource/j3;->b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/banner/BannerAdView;Lcom/ironsource/j3;)V
    .registers 6

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/banner/BannerAdView;->getAdInfo()Lcom/unity3d/ironsourceads/banner/BannerAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BannerAdLoaderListener.onBannerAdLoaded adInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/ironsource/j3;->b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;->onBannerAdLoaded(Lcom/unity3d/ironsourceads/banner/BannerAdView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/j3;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/j3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/j3$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/unity3d/ironsourceads/banner/BannerAdView;)V
    .registers 4

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/j3;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/j3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/j3$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ironsourceads/banner/BannerAdView;Lcom/ironsource/j3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/unity3d/ironsourceads/banner/BannerAdView;

    invoke-virtual {p0, p1}, Lcom/ironsource/j3;->a(Lcom/unity3d/ironsourceads/banner/BannerAdView;)V

    return-void
.end method

###### Class com.ironsource.j3$$ExternalSyntheticLambda0 (com.ironsource.j3$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/j3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ironsourceads/banner/BannerAdView;

.field public final synthetic f$1:Lcom/ironsource/j3;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/banner/BannerAdView;Lcom/ironsource/j3;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ironsourceads/banner/BannerAdView;

    iput-object p2, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/j3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ironsourceads/banner/BannerAdView;

    iget-object v1, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/j3;

    invoke-static {v0, v1}, Lcom/ironsource/j3;->$r8$lambda$4HQJ46SgaKWr7oyJvTtkQuIVEhw(Lcom/unity3d/ironsourceads/banner/BannerAdView;Lcom/ironsource/j3;)V

    return-void
.end method

###### Class com.ironsource.j3$$ExternalSyntheticLambda1 (com.ironsource.j3$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/j3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field public final synthetic f$1:Lcom/ironsource/j3;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iput-object p2, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/j3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v1, p0, Lcom/ironsource/j3$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/j3;

    invoke-static {v0, v1}, Lcom/ironsource/j3;->$r8$lambda$8TqDQqqkjnD6ExUcTc438GvU6Rk(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;)V

    return-void
.end method
