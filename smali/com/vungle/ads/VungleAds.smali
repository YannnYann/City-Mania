###### Class com.vungle.ads.VungleAds (com.vungle.ads.VungleAds)
.class public final Lcom/vungle/ads/VungleAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/VungleAds$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/VungleAds$Companion;

.field public static final TAG:Ljava/lang/String; = "VungleAds"

.field public static a:Lcom/vungle/ads/internal/x2;

.field public static b:Lcom/vungle/ads/internal/u2;

.field public static final firstPartyData:Lcom/vungle/ads/fpd/FirstPartyData;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/VungleAds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleAds$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/x2;

    invoke-direct {v0}, Lcom/vungle/ads/internal/x2;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleAds;->a:Lcom/vungle/ads/internal/x2;

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/u2;

    invoke-direct {v0}, Lcom/vungle/ads/internal/u2;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleAds;->b:Lcom/vungle/ads/internal/u2;

    .line 5
    new-instance v0, Lcom/vungle/ads/fpd/FirstPartyData;

    invoke-direct {v0}, Lcom/vungle/ads/fpd/FirstPartyData;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleAds;->firstPartyData:Lcom/vungle/ads/fpd/FirstPartyData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitializer$cp()Lcom/vungle/ads/internal/u2;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/VungleAds;->b:Lcom/vungle/ads/internal/u2;

    return-object v0
.end method

.method public static final synthetic access$getVungleInternal$cp()Lcom/vungle/ads/internal/x2;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/VungleAds;->a:Lcom/vungle/ads/internal/x2;

    return-object v0
.end method

.method public static final deInit(Landroid/content/Context;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/VungleAds$Companion;->deInit(Landroid/content/Context;)V

    return-void
.end method

.method public static final getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/BidTokenCallback;)V
    .registers 3

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/VungleAds$Companion;->getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/BidTokenCallback;)V

    return-void
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleAds$Companion;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V
    .registers 4

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/VungleAds$Companion;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V

    return-void
.end method

.method public static final isInitialized()Z
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleAds$Companion;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static final isInline(Ljava/lang/String;)Z
    .registers 2

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/VungleAds$Companion;->isInline(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final setIntegrationName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/VungleAds$Companion;->setIntegrationName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.VungleAds.Companion (com.vungle.ads.VungleAds$Companion)
.class public final Lcom/vungle/ads/VungleAds$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/VungleAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/VungleAds$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final deInit(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/u2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/u2;->a()V

    return-void
.end method

.method public final getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/BidTokenCallback;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/x2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/vungle/ads/internal/x2;->a(Landroid/content/Context;Lcom/vungle/ads/BidTokenCallback;)V

    return-void
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getVungleInternal$cp()Lcom/vungle/ads/internal/x2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "7.7.9"

    return-object v0
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    :cond_17
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/u2;

    move-result-object v0

    const-string v1, "appContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/vungle/ads/internal/u2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/u2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/u2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isInline(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vungle/ads/internal/ConfigManager;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/model/j3;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/j3;->f()Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public final setIntegrationName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "integrationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/vungle/ads/VungleAds;->access$getInitializer$cp()Lcom/vungle/ads/internal/u2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/internal/u2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
