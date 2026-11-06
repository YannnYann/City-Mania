###### Class io.bidmachine.BidMachine (io.bidmachine.BidMachine)
.class public Lio/bidmachine/BidMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "BidMachine"

.field private static final TAG:Ljava/lang/String; = "BidMachine"

.field public static final VERSION:Ljava/lang/String; = "3.8.0"


# direct methods
.method public static synthetic $r8$lambda$CNr5LcTLWw5Y3V2orORkUdWjLoA(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getBidToken - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FAak0yqFK0g7Zekzgz6LDkydgGY(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/bidmachine/BidTokenCallback;->onCollected(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVdm7bFxtPSP2qa8QnNFrcPOHVE(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setEndpoint - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GZtfVVqHrcU4fe3Gq1Te-aFJj_k(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setUSPrivacyString - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KhNmDkluTpYptoaL9r-cRUDg4qY(Z)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setConsentStatus - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MgnFJglBsh5iUNLk7JHtwC3VKfQ(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/Utils;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setGPP - %s, [%s]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PDQbZHZk_TbfEGkxhkQOnW-gdUw(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setSubjectToGDPR - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PcBJHJSdUlrT_FxLENSrDY0bMAo(Ljava/lang/String;Ljava/util/List;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 3

    .line 1
    invoke-virtual {p2, p0}, Lio/bidmachine/internal/A;->c(Ljava/lang/String;)Lio/bidmachine/internal/A;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/A;->a(Ljava/util/List;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fyKvJL_PR_0fEqkEggPnGTYRlG0(Ljava/lang/Boolean;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lio/bidmachine/internal/A;->b(Ljava/lang/Boolean;)Lio/bidmachine/internal/A;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/bidmachine/internal/A;->c(Ljava/lang/Boolean;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h7zkoBu-vBCaecNI2hq3qMS_dus(Ljava/lang/Boolean;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lio/bidmachine/internal/A;->d(Ljava/lang/Boolean;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ixXCQwHv4Xx7Bbyi3Ij9qT839WY(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "initialize - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lxGMAz0ktRQFEQ_Aa-PS8mK-uI0(ZLio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/internal/A;->a(Ljava/lang/Boolean;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nqYig_aspZaW0m35IRTyId7kkag(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNonPersonalized - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pDjTosAH2HCzKwixObGxFEvmXv0(ZLjava/lang/String;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/bidmachine/internal/A;->a(Ljava/lang/Boolean;)Lio/bidmachine/internal/A;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/A;->b(Ljava/lang/String;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$poe_E1s6ajXvhqTiCxoqTSXI6tQ(Ljava/lang/String;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lio/bidmachine/internal/A;->a(Ljava/lang/String;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ttz16AKJp49GUwM6GdLcuFOSLVU(Z)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setTestMode - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u9iZ3QJ9miOA_mrj7CDXnSJRk3I(ZLjava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setConsentConfig - %s, %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uNK05JV-KAwm03DPQUOVOH8PHL4(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setCoppa - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xBPbgt64W9rau2L1RE9Izjek0JY(Ljava/lang/Boolean;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lio/bidmachine/internal/A;->c(Ljava/lang/Boolean;)Lio/bidmachine/internal/A;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lio/bidmachine/o;->a(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    const-string v0, "BidMachine"

    invoke-static {v0, p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-object p0
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdsFormat;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-virtual {p1}, Lio/bidmachine/AdsFormat;->toAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/BidTokenCallback;)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2, p0, p1}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;-><init>(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V

    invoke-static {v0}, Lio/bidmachine/BidTokenTaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getBidToken(Landroid/content/Context;Lio/bidmachine/AdsFormat;Lio/bidmachine/BidTokenCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-virtual {p1}, Lio/bidmachine/AdsFormat;->toAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/BidTokenCallback;)V

    return-void
.end method

.method public static getExtrasParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/ExtraParamsManager;->getPublic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .registers 5

    .line 2
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 3
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/k;->a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public static isInitialized()Z
    .registers 1

    .line 1
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->s()Z

    move-result v0

    return v0
.end method

.method public static registerAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "BidMachine"

    const-string v1, "registerAdRequestListener"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/k;->a(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 3
    const-string v0, "BidMachine"

    const-string v1, "registerNetworks with JSON string"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lio/bidmachine/NetworkRegistry;->registerNetworks(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V
    .registers 5

    .line 5
    const-string v0, "BidMachine"

    const-string v1, "registerNetworks with JSON string"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2}, Lio/bidmachine/NetworkRegistry;->registerNetworks(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V

    return-void
.end method

.method public static varargs registerNetworks([Lio/bidmachine/NetworkConfig;)V
    .registers 3

    .line 1
    const-string v0, "BidMachine"

    const-string v1, "registerNetworks with NetworkConfig array"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerNetworks([Lio/bidmachine/NetworkConfig;)V

    return-void
.end method

.method public static setConsentConfig(ZLjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;-><init>(ZLjava/lang/String;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setConsentStatus(Z)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda14;-><init>(Z)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setCoppa(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Boolean;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static setGPP(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/Debugger;->isLoggingLock()Z

    move-result v0

    const-string v1, "BidMachine"

    if-eqz v0, :cond_e

    .line 2
    const-string p0, "setLoggingEnabled skipped"

    invoke-static {v1, p0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lio/bidmachine/core/Logger;->setLoggingEnabled(Z)V

    .line 7
    const-string v0, "setLoggingEnabled - true"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    .line 9
    :cond_1a
    const-string v0, "setLoggingEnabled - false"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lio/bidmachine/core/Logger;->setLoggingEnabled(Z)V

    .line 12
    :goto_23
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->setLoggingEnabled(Z)V

    return-void
.end method

.method public static setNonPersonalized(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Boolean;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setPublisher(Lio/bidmachine/Publisher;)V
    .registers 3

    .line 1
    const-string v0, "BidMachine"

    const-string v1, "setPublisher"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/k;->a(Lio/bidmachine/Publisher;)V

    return-void
.end method

.method public static setSubjectToGDPR(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Boolean;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .registers 3

    .line 1
    const-string v0, "BidMachine"

    const-string v1, "setTargetingParams"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/k;->a(Lio/bidmachine/TargetingParams;)V

    return-void
.end method

.method public static setTestMode(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/Debugger;->isTestModeLock()Z

    move-result v0

    const-string v1, "BidMachine"

    if-eqz v0, :cond_e

    .line 2
    const-string p0, "setTestMode skipped"

    invoke-static {v1, p0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_e
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/k;->a(Z)V

    return-void
.end method

.method public static setUSPrivacyString(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    const-string v1, "BidMachine"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->k()Lio/bidmachine/internal/x;

    move-result-object v0

    new-instance v1, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static unregisterAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "BidMachine"

    const-string v1, "unregisterAdRequestListener"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/k;->b(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda0 (io.bidmachine.BidMachine$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$uNK05JV-KAwm03DPQUOVOH8PHL4(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda1 (io.bidmachine.BidMachine$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Boolean;

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$fyKvJL_PR_0fEqkEggPnGTYRlG0(Ljava/lang/Boolean;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda10 (io.bidmachine.BidMachine$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda10;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda10;->f$0:Ljava/lang/String;

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$poe_E1s6ajXvhqTiCxoqTSXI6tQ(Ljava/lang/String;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda11 (io.bidmachine.BidMachine$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$nqYig_aspZaW0m35IRTyId7kkag(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda12 (io.bidmachine.BidMachine$$ExternalSyntheticLambda12)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Boolean;

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$xBPbgt64W9rau2L1RE9Izjek0JY(Ljava/lang/Boolean;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda13 (io.bidmachine.BidMachine$$ExternalSyntheticLambda13)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/BidTokenCallback;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lio/bidmachine/AdPlacementConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/BidTokenCallback;

    iput-object p2, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;->f$2:Lio/bidmachine/AdPlacementConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/BidTokenCallback;

    iget-object v1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda13;->f$2:Lio/bidmachine/AdPlacementConfig;

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachine;->$r8$lambda$FAak0yqFK0g7Zekzgz6LDkydgGY(Lio/bidmachine/BidTokenCallback;Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda14 (io.bidmachine.BidMachine$$ExternalSyntheticLambda14)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda14;->f$0:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda14;->f$0:Z

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$KhNmDkluTpYptoaL9r-cRUDg4qY(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda15 (io.bidmachine.BidMachine$$ExternalSyntheticLambda15)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda15;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda15;->f$0:Z

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$lxGMAz0ktRQFEQ_Aa-PS8mK-uI0(ZLio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda16 (io.bidmachine.BidMachine$$ExternalSyntheticLambda16)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$PDQbZHZk_TbfEGkxhkQOnW-gdUw(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda17 (io.bidmachine.BidMachine$$ExternalSyntheticLambda17)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Boolean;

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$h7zkoBu-vBCaecNI2hq3qMS_dus(Ljava/lang/Boolean;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda18 (io.bidmachine.BidMachine$$ExternalSyntheticLambda18)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda18;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda18;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$ixXCQwHv4Xx7Bbyi3Ij9qT839WY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda2 (io.bidmachine.BidMachine$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachine;->$r8$lambda$MgnFJglBsh5iUNLk7JHtwC3VKfQ(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda3 (io.bidmachine.BidMachine$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$PcBJHJSdUlrT_FxLENSrDY0bMAo(Ljava/lang/String;Ljava/util/List;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda4 (io.bidmachine.BidMachine$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$CNr5LcTLWw5Y3V2orORkUdWjLoA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda5 (io.bidmachine.BidMachine$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda5;->f$0:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda5;->f$0:Z

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$ttz16AKJp49GUwM6GdLcuFOSLVU(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda6 (io.bidmachine.BidMachine$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;->f$0:Z

    iput-object p2, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;->f$0:Z

    iget-object v1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachine;->$r8$lambda$u9iZ3QJ9miOA_mrj7CDXnSJRk3I(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda7 (io.bidmachine.BidMachine$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;->f$0:Z

    iput-object p2, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;->f$0:Z

    iget-object v1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    check-cast p1, Lio/bidmachine/internal/A;

    invoke-static {v0, v1, p1}, Lio/bidmachine/BidMachine;->$r8$lambda$pDjTosAH2HCzKwixObGxFEvmXv0(ZLjava/lang/String;Lio/bidmachine/internal/A;)Lio/bidmachine/internal/A;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda8 (io.bidmachine.BidMachine$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$GVdm7bFxtPSP2qa8QnNFrcPOHVE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.BidMachine$$ExternalSyntheticLambda9 (io.bidmachine.BidMachine$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/BidMachine$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachine$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->$r8$lambda$GZtfVVqHrcU4fe3Gq1Te-aFJj_k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
