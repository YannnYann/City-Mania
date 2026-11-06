###### Class com.ironsource.B9 (com.ironsource.B9)
.class public final Lcom/ironsource/B9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/d0<",
        "Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/r1;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/ironsource/r1;Ljava/util/concurrent/Executor;)V
    .registers 4

    const-string v0, "analytics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/B9;->a:Lcom/ironsource/r1;

    .line 3
    iput-object p2, p0, Lcom/ironsource/B9;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ironsource/R9;Lcom/ironsource/g2;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/B9;->b(Lcom/ironsource/R9;Lcom/ironsource/g2;)Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/ironsource/R9;Lcom/ironsource/g2;)Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;
    .registers 16

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionDataReporter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/ironsource/D9;

    .line 3
    new-instance v3, Lcom/ironsource/c0;

    new-instance v0, Lcom/ironsource/Hc;

    invoke-direct {v0}, Lcom/ironsource/Hc;-><init>()V

    invoke-direct {v3, v0}, Lcom/ironsource/c0;-><init>(Lcom/ironsource/Gc;)V

    .line 5
    iget-object v5, p0, Lcom/ironsource/B9;->a:Lcom/ironsource/r1;

    .line 6
    invoke-static {}, Lcom/ironsource/C9;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    const/16 v11, 0xf0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v4, p2

    .line 7
    invoke-direct/range {v1 .. v12}, Lcom/ironsource/D9;-><init>(Lcom/ironsource/R9;Lcom/ironsource/b0;Lcom/ironsource/h2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    new-instance p1, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;

    invoke-direct {p1, v1}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;-><init>(Lcom/ironsource/D9;)V

    return-object p1
.end method
