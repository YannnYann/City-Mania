###### Class gatewayprotocol.v1.AdViewerRequestKt (gatewayprotocol.v1.AdViewerRequestKt)
.class public final Lgatewayprotocol/v1/AdViewerRequestKt;
.super Ljava/lang/Object;
.source "AdViewerRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AdViewerRequestKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdViewerRequestKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdViewerRequestKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdViewerRequestKt;->INSTANCE:Lgatewayprotocol/v1/AdViewerRequestKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AdViewerRequestKt.Dsl (gatewayprotocol.v1.AdViewerRequestKt$Dsl)
.class public final Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;
.super Ljava/lang/Object;
.source "AdViewerRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object v0
.end method

.method public final clearCampaignState()V
    .registers 2

    .line 164
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->clearCampaignState()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final clearDynamicDeviceInfo()V
    .registers 2

    .line 128
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->clearDynamicDeviceInfo()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final clearImpressionOpportunityId()V
    .registers 2

    .line 200
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->clearImpressionOpportunityId()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final clearPayload()V
    .registers 2

    .line 225
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->clearPayload()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final clearSessionCounters()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->clearSessionCounters()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final clearStaticDeviceInfo()V
    .registers 2

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->clearStaticDeviceInfo()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .registers 3

    .line 151
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    const-string v1, "getCampaignState(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 3

    .line 115
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    const-string v1, "getDynamicDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 187
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getImpressionOpportunityId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPayload()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 212
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getPayload(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    const-string v1, "getSessionCounters(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 3

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    const-string v1, "getStaticDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasCampaignState()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->hasCampaignState()Z

    move-result v0

    return v0
.end method

.method public final hasDynamicDeviceInfo()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final hasSessionCounters()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public final hasStaticDeviceInfo()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final setPayload(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

.method public final setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AdViewerRequestKt.Dsl.Companion (gatewayprotocol.v1.AdViewerRequestKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AdViewerRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;)Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AdViewerRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
