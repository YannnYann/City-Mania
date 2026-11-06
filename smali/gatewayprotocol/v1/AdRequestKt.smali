###### Class gatewayprotocol.v1.AdRequestKt (gatewayprotocol.v1.AdRequestKt)
.class public final Lgatewayprotocol/v1/AdRequestKt;
.super Ljava/lang/Object;
.source "AdRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdRequestKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AdRequestKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdRequestKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdRequestKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdRequestKt;->INSTANCE:Lgatewayprotocol/v1/AdRequestKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AdRequestKt.Dsl (gatewayprotocol.v1.AdRequestKt$Dsl)
.class public final Lgatewayprotocol/v1/AdRequestKt$Dsl;
.super Ljava/lang/Object;
.source "AdRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;,
        Lgatewayprotocol/v1/AdRequestKt$Dsl$ExtrasProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
    .registers 3

    .line 33
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    return-object v0
.end method

.method public final clearAdFormat()V
    .registers 2

    .line 461
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearAdFormat()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearAdRequestType()V
    .registers 2

    .line 380
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearBannerSize()V
    .registers 2

    .line 416
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearCampaignState()V
    .registers 2

    .line 165
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearCampaignState()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearDynamicDeviceInfo()V
    .registers 2

    .line 129
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearDynamicDeviceInfo()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final synthetic clearExtras(Lcom/google/protobuf/kotlin/DslMap;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iget-object p1, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearExtras()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearImpressionOpportunityId()V
    .registers 2

    .line 201
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearImpressionOpportunityId()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearMediationAdUnitId()V
    .registers 2

    .line 497
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearMediationAdUnitId()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearMediationInfo()V
    .registers 2

    .line 618
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearMediationInfo()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearPlacementId()V
    .registers 2

    .line 226
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearPlacementId()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearRequestImpressionConfiguration()V
    .registers 2

    .line 251
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearRequestImpressionConfiguration()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearScarSignal()V
    .registers 2

    .line 276
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearScarSignal()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearSessionCounters()V
    .registers 2

    .line 57
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearSessionCounters()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearStaticDeviceInfo()V
    .registers 2

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearStaticDeviceInfo()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearTcf()V
    .registers 2

    .line 337
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearTcf()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final clearWebviewVersion()V
    .registers 2

    .line 301
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->clearWebviewVersion()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 3

    .line 441
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    const-string v1, "getAdFormat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdFormatValue()I
    .registers 2

    .line 448
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public final getAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;
    .registers 3

    .line 360
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;

    move-result-object v0

    const-string v1, "getAdRequestType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdRequestTypeValue()I
    .registers 2

    .line 367
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getAdRequestTypeValue()I

    move-result v0

    return v0
.end method

.method public final getBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;
    .registers 3

    .line 403
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    move-result-object v0

    const-string v1, "getBannerSize(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBannerSizeOrNull(Lgatewayprotocol/v1/AdRequestKt$Dsl;)Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object p1, p1, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdRequestKtKt;->getBannerSizeOrNull(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestOrBuilder;)Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .registers 3

    .line 152
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    const-string v1, "getCampaignState(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 3

    .line 116
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    const-string v1, "getDynamicDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getExtrasMap()Lcom/google/protobuf/kotlin/DslMap;
    .registers 4

    .line 527
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 528
    iget-object v1, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getExtrasMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getExtrasMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 188
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getImpressionOpportunityId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMediationAdUnitId()Ljava/lang/String;
    .registers 3

    .line 484
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMediationAdUnitId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMediationInfo()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .registers 3

    .line 605
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getMediationInfo()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    const-string v1, "getMediationInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMediationInfoOrNull(Lgatewayprotocol/v1/AdRequestKt$Dsl;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    iget-object p1, p1, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdRequestKtKt;->getMediationInfoOrNull(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestOrBuilder;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 3

    .line 213
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRequestImpressionConfiguration()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getRequestImpressionConfiguration()Z

    move-result v0

    return v0
.end method

.method public final getScarSignal()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 263
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getScarSignal()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getScarSignal(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 3

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    const-string v1, "getSessionCounters(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 3

    .line 80
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    const-string v1, "getStaticDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTcf()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 324
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getTcf()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getTcf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWebviewVersion()I
    .registers 2

    .line 288
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getWebviewVersion()I

    move-result v0

    return v0
.end method

.method public final hasAdFormat()Z
    .registers 2

    .line 472
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasAdFormat()Z

    move-result v0

    return v0
.end method

.method public final hasAdRequestType()Z
    .registers 2

    .line 391
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasAdRequestType()Z

    move-result v0

    return v0
.end method

.method public final hasBannerSize()Z
    .registers 2

    .line 427
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasBannerSize()Z

    move-result v0

    return v0
.end method

.method public final hasCampaignState()Z
    .registers 2

    .line 176
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasCampaignState()Z

    move-result v0

    return v0
.end method

.method public final hasDynamicDeviceInfo()Z
    .registers 2

    .line 140
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final hasMediationAdUnitId()Z
    .registers 2

    .line 508
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasMediationAdUnitId()Z

    move-result v0

    return v0
.end method

.method public final hasMediationInfo()Z
    .registers 2

    .line 629
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasMediationInfo()Z

    move-result v0

    return v0
.end method

.method public final hasSessionCounters()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public final hasStaticDeviceInfo()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final hasTcf()Z
    .registers 2

    .line 348
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasTcf()Z

    move-result v0

    return v0
.end method

.method public final hasWebviewVersion()Z
    .registers 2

    .line 312
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->hasWebviewVersion()Z

    move-result v0

    return v0
.end method

.method public final synthetic putAllExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->putAllExtras(Ljava/util/Map;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final putExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/AdRequestKt$Dsl$ExtrasProxy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->putExtras(Ljava/lang/String;Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final synthetic removeExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->removeExtras(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setAdFormatValue(I)V
    .registers 3

    .line 451
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setAdFormatValue(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setAdRequestType(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setAdRequestType(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setAdRequestTypeValue(I)V
    .registers 3

    .line 370
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setAdRequestTypeValue(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final synthetic setExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/AdRequestKt$Dsl$ExtrasProxy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lgatewayprotocol/v1/AdRequestKt$Dsl;->putExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setMediationAdUnitId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setMediationAdUnitId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setPlacementId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setRequestImpressionConfiguration(Z)V
    .registers 3

    .line 241
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setRequestImpressionConfiguration(Z)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setScarSignal(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setScarSignal(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setTcf(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setTcf(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

.method public final setWebviewVersion(I)V
    .registers 3

    .line 291
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->setWebviewVersion(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AdRequestKt.Dsl.Companion (gatewayprotocol.v1.AdRequestKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AdRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRequestKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;)Lgatewayprotocol/v1/AdRequestKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lgatewayprotocol/v1/AdRequestKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AdRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class gatewayprotocol.v1.AdRequestKt.Dsl.ExtrasProxy (gatewayprotocol.v1.AdRequestKt$Dsl$ExtrasProxy)
.class public final Lgatewayprotocol/v1/AdRequestKt$Dsl$ExtrasProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "AdRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRequestKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtrasProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 516
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
