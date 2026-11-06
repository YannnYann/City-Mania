###### Class com.ironsource.H9 (com.ironsource.H9)
.class public final Lcom/ironsource/H9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/U;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/U<",
        "Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/hg;

.field private final b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;


# direct methods
.method public static synthetic $r8$lambda$KgpvW3b7k_OSQQrJryzwt2AuSNU(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/H9;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/H9;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/H9;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0A5v_R4dtzVEkqBAXMqOl8auFg(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/H9;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/H9;->a(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/H9;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;)V
    .registers 4

    const-string v0, "threadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/H9;->a:Lcom/ironsource/hg;

    .line 3
    iput-object p2, p0, Lcom/ironsource/H9;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

    return-void
.end method

.method private static final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/H9;)V
    .registers 5

    .line 9
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterstitialAdLoaderListener.onInterstitialAdLoadFailed error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lcom/ironsource/H9;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/H9;)V
    .registers 6

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 4
    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterstitialAdLoaderListener.onInterstitialAdLoaded adInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/ironsource/H9;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

    invoke-interface {p1, p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;->onInterstitialAdLoaded(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/H9;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/H9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/H9$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/H9;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V
    .registers 4

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/H9;->a:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/H9$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/H9$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/H9;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/H9;->a(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V

    return-void
.end method

###### Class com.ironsource.H9$$ExternalSyntheticLambda0 (com.ironsource.H9$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/H9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field public final synthetic f$1:Lcom/ironsource/H9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/H9;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iput-object p2, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/H9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v1, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/H9;

    invoke-static {v0, v1}, Lcom/ironsource/H9;->$r8$lambda$KgpvW3b7k_OSQQrJryzwt2AuSNU(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/H9;)V

    return-void
.end method

###### Class com.ironsource.H9$$ExternalSyntheticLambda1 (com.ironsource.H9$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/H9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;

.field public final synthetic f$1:Lcom/ironsource/H9;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/H9;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;

    iput-object p2, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/H9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;

    iget-object v1, p0, Lcom/ironsource/H9$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/H9;

    invoke-static {v0, v1}, Lcom/ironsource/H9;->$r8$lambda$_0A5v_R4dtzVEkqBAXMqOl8auFg(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/H9;)V

    return-void
.end method
