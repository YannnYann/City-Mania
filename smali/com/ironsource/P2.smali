###### Class com.ironsource.P2 (com.ironsource.P2)
.class public final Lcom/ironsource/P2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/O2;


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
    iput-object p1, p0, Lcom/ironsource/P2;->a:Lcom/ironsource/r1;

    .line 3
    iput-object p2, p0, Lcom/ironsource/P2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/R9;Lcom/ironsource/k8;Lcom/ironsource/g2;)Lcom/unity3d/ironsourceads/banner/BannerAdView;
    .registers 17

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionDataReporter"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/ironsource/W2;

    iget-object v5, p0, Lcom/ironsource/P2;->a:Lcom/ironsource/r1;

    const/16 v11, 0x1f0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v12}, Lcom/ironsource/W2;-><init>(Lcom/ironsource/R9;Lcom/ironsource/k8;Lcom/ironsource/g2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Lcom/ironsource/D7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    new-instance p1, Lcom/unity3d/ironsourceads/banner/BannerAdView;

    invoke-direct {p1, v1}, Lcom/unity3d/ironsourceads/banner/BannerAdView;-><init>(Lcom/ironsource/W2;)V

    return-object p1
.end method
