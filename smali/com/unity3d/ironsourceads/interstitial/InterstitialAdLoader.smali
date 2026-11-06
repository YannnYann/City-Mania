###### Class com.unity3d.ironsourceads.interstitial.InterstitialAdLoader (com.unity3d.ironsourceads.interstitial.InterstitialAdLoader)
.class public final Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;

.field private static final a:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$5ZVNh6n5uGb1Eb3qpNxY62vs1Yc(Lcom/ironsource/Gb;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->a(Lcom/ironsource/Gb;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;

    invoke-direct {v0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;-><init>()V

    sput-object v0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->INSTANCE:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;

    .line 1
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    invoke-virtual {v0}, Lcom/ironsource/V7;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/Gb;)V
    .registers 1

    .line 1
    invoke-interface {p0}, Lcom/ironsource/Gb;->start()V

    return-void
.end method

.method public static final loadAd(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;)V
    .registers 11

    const-string v0, "adRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/pc$a;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/e1;

    move-result-object v5

    .line 6
    new-instance v2, Lcom/ironsource/I9;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/ironsource/I9;-><init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    sget-object p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->INSTANCE:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;

    sget-object p1, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v2}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->internalLoadAd$mediationsdk_release(Ljava/util/concurrent/Executor;Lcom/ironsource/Jb;)V

    return-void
.end method


# virtual methods
.method public final internalLoadAd$mediationsdk_release(Ljava/util/concurrent/Executor;Lcom/ironsource/Jb;)V
    .registers 4

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadTaskProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lcom/ironsource/Jb;->a()Lcom/ironsource/Gb;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Gb;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.unity3d.ironsourceads.interstitial.InterstitialAdLoader$$ExternalSyntheticLambda0 (com.unity3d.ironsourceads.interstitial.InterstitialAdLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Gb;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Gb;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Gb;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Gb;

    invoke-static {v0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoader;->$r8$lambda$5ZVNh6n5uGb1Eb3qpNxY62vs1Yc(Lcom/ironsource/Gb;)V

    return-void
.end method
