###### Class gatewayprotocol.v1.ClientInfoKt (gatewayprotocol.v1.ClientInfoKt)
.class public final Lgatewayprotocol/v1/ClientInfoKt;
.super Ljava/lang/Object;
.source "ClientInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/ClientInfoKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/ClientInfoKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoKt;->INSTANCE:Lgatewayprotocol/v1/ClientInfoKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.ClientInfoKt.Dsl (gatewayprotocol.v1.ClientInfoKt$Dsl)
.class public final Lgatewayprotocol/v1/ClientInfoKt$Dsl;
.super Ljava/lang/Object;
.source "ClientInfoKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->Companion:Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;-><init>(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method public final clearAdQualitySdkVersion()V
    .registers 2

    .line 544
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearAdQualitySdkVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearCustomMediationName()V
    .registers 2

    .line 220
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearCustomMediationName()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearGameId()V
    .registers 2

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearGameId()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearIsFidAvailable()V
    .registers 2

    .line 472
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearIsFidAvailable()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearMediationAdapterVersion()V
    .registers 2

    .line 508
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearMediationAdapterVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearMediationProvider()V
    .registers 2

    .line 195
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearMediationVersion()V
    .registers 2

    .line 256
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearMediationVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearOfferwallVersion()V
    .registers 2

    .line 436
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearOfferwallVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearOmidPartnerVersion()V
    .registers 2

    .line 292
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearOmidPartnerVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearOmidVersion()V
    .registers 2

    .line 328
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearOmidVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearPlatform()V
    .registers 2

    .line 163
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearScarVersionName()V
    .registers 2

    .line 400
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearScarVersionName()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearSdkDevelopmentPlatform()V
    .registers 2

    .line 364
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearSdkDevelopmentPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearSdkVersion()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearSdkVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearSdkVersionName()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearSdkVersionName()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final clearTest()V
    .registers 2

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->clearTest()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final getAdQualitySdkVersion()Ljava/lang/String;
    .registers 3

    .line 531
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdQualitySdkVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCustomMediationName()Ljava/lang/String;
    .registers 3

    .line 207
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getCustomMediationName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCustomMediationName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .registers 3

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getGameId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGameId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIsFidAvailable()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getIsFidAvailable()Z

    move-result v0

    return v0
.end method

.method public final getMediationAdapterVersion()Ljava/lang/String;
    .registers 3

    .line 495
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getMediationAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMediationAdapterVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 3

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    const-string v1, "getMediationProvider(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMediationProviderValue()I
    .registers 2

    .line 182
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getMediationProviderValue()I

    move-result v0

    return v0
.end method

.method public final getMediationVersion()Ljava/lang/String;
    .registers 3

    .line 243
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMediationVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOfferwallVersion()Ljava/lang/String;
    .registers 3

    .line 423
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getOfferwallVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOfferwallVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOmidPartnerVersion()Ljava/lang/String;
    .registers 3

    .line 279
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getOmidPartnerVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOmidPartnerVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOmidVersion()Ljava/lang/String;
    .registers 3

    .line 315
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getOmidVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOmidVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 3

    .line 143
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    const-string v1, "getPlatform(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPlatformValue()I
    .registers 2

    .line 150
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getPlatformValue()I

    move-result v0

    return v0
.end method

.method public final getScarVersionName()Ljava/lang/String;
    .registers 3

    .line 387
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getScarVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getScarVersionName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSdkDevelopmentPlatform()Ljava/lang/String;
    .registers 3

    .line 351
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getSdkDevelopmentPlatform()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSdkDevelopmentPlatform(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSdkVersion()I
    .registers 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getSdkVersion()I

    move-result v0

    return v0
.end method

.method public final getSdkVersionName()Ljava/lang/String;
    .registers 3

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSdkVersionName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTest()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->getTest()Z

    move-result v0

    return v0
.end method

.method public final hasAdQualitySdkVersion()Z
    .registers 2

    .line 555
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasAdQualitySdkVersion()Z

    move-result v0

    return v0
.end method

.method public final hasCustomMediationName()Z
    .registers 2

    .line 231
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasCustomMediationName()Z

    move-result v0

    return v0
.end method

.method public final hasIsFidAvailable()Z
    .registers 2

    .line 483
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasIsFidAvailable()Z

    move-result v0

    return v0
.end method

.method public final hasMediationAdapterVersion()Z
    .registers 2

    .line 519
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasMediationAdapterVersion()Z

    move-result v0

    return v0
.end method

.method public final hasMediationVersion()Z
    .registers 2

    .line 267
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasMediationVersion()Z

    move-result v0

    return v0
.end method

.method public final hasOfferwallVersion()Z
    .registers 2

    .line 447
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasOfferwallVersion()Z

    move-result v0

    return v0
.end method

.method public final hasOmidPartnerVersion()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasOmidPartnerVersion()Z

    move-result v0

    return v0
.end method

.method public final hasOmidVersion()Z
    .registers 2

    .line 339
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasOmidVersion()Z

    move-result v0

    return v0
.end method

.method public final hasScarVersionName()Z
    .registers 2

    .line 411
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasScarVersionName()Z

    move-result v0

    return v0
.end method

.method public final hasSdkDevelopmentPlatform()Z
    .registers 2

    .line 375
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->hasSdkDevelopmentPlatform()Z

    move-result v0

    return v0
.end method

.method public final setAdQualitySdkVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setAdQualitySdkVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setCustomMediationName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setCustomMediationName(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setGameId(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setIsFidAvailable(Z)V
    .registers 3

    .line 462
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setIsFidAvailable(Z)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setMediationAdapterVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setMediationAdapterVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setMediationProviderValue(I)V
    .registers 3

    .line 185
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setMediationProviderValue(I)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setMediationVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setMediationVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setOfferwallVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setOfferwallVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setOmidPartnerVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setOmidPartnerVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setOmidVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setOmidVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setPlatformValue(I)V
    .registers 3

    .line 153
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setPlatformValue(I)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setScarVersionName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setScarVersionName(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setSdkDevelopmentPlatform(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setSdkDevelopmentPlatform(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setSdkVersion(I)V
    .registers 3

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setSdkVersion(I)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setSdkVersionName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setSdkVersionName(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

.method public final setTest(Z)V
    .registers 3

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->setTest(Z)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.ClientInfoKt.Dsl.Companion (gatewayprotocol.v1.ClientInfoKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "ClientInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;)Lgatewayprotocol/v1/ClientInfoKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/ClientInfoKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;-><init>(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
