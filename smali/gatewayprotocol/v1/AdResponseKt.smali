###### Class gatewayprotocol.v1.AdResponseKt (gatewayprotocol.v1.AdResponseKt)
.class public final Lgatewayprotocol/v1/AdResponseKt;
.super Ljava/lang/Object;
.source "AdResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdResponseKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AdResponseKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdResponseKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdResponseKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdResponseKt;->INSTANCE:Lgatewayprotocol/v1/AdResponseKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AdResponseKt.Dsl (gatewayprotocol.v1.AdResponseKt$Dsl)
.class public final Lgatewayprotocol/v1/AdResponseKt$Dsl;
.super Ljava/lang/Object;
.source "AdResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object v0
.end method

.method public final clearAdData()V
    .registers 2

    .line 198
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearAdData()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearAdDataRefreshToken()V
    .registers 2

    .line 169
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearAdDataRefreshToken()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearAdDataVersion()V
    .registers 2

    .line 223
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearAdDataVersion()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearCampaignMetadata()V
    .registers 2

    .line 286
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearCampaignMetadata()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearError()V
    .registers 2

    .line 248
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearError()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearImpressionConfiguration()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearImpressionConfiguration()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearImpressionConfigurationVersion()V
    .registers 2

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearImpressionConfigurationVersion()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearTrackingToken()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearTrackingToken()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final clearWebviewConfiguration()V
    .registers 2

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->clearWebviewConfiguration()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final getAdData()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 183
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getAdData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdDataRefreshToken()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 156
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getAdDataRefreshToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdDataVersion()I
    .registers 2

    .line 210
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getAdDataVersion()I

    move-result v0

    return v0
.end method

.method public final getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3

    .line 273
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    const-string v1, "getCampaignMetadata(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCampaignMetadataOrNull(Lgatewayprotocol/v1/AdResponseKt$Dsl;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object p1, p1, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdResponseKtKt;->getCampaignMetadataOrNull(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3

    .line 235
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    const-string v1, "getError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorOrNull(Lgatewayprotocol/v1/AdResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object p1, p1, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdResponseKtKt;->getErrorOrNull(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object p1

    return-object p1
.end method

.method public final getImpressionConfiguration()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getImpressionConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getImpressionConfigurationVersion()I
    .registers 2

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getImpressionConfigurationVersion()I

    move-result v0

    return v0
.end method

.method public final getTrackingToken()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getTrackingToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .registers 3

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    const-string v1, "getWebviewConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWebviewConfigurationOrNull(Lgatewayprotocol/v1/AdResponseKt$Dsl;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p1, p1, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdResponseKtKt;->getWebviewConfigurationOrNull(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final hasCampaignMetadata()Z
    .registers 2

    .line 297
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->hasCampaignMetadata()Z

    move-result v0

    return v0
.end method

.method public final hasError()Z
    .registers 2

    .line 259
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->hasError()Z

    move-result v0

    return v0
.end method

.method public final hasWebviewConfiguration()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->hasWebviewConfiguration()Z

    move-result v0

    return v0
.end method

.method public final setAdData(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setAdData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setAdDataVersion(I)V
    .registers 3

    .line 213
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setAdDataVersion(I)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setImpressionConfiguration(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setImpressionConfiguration(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setImpressionConfigurationVersion(I)V
    .registers 3

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setImpressionConfigurationVersion(I)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setTrackingToken(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setTrackingToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

.method public final setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AdResponseKt.Dsl.Companion (gatewayprotocol.v1.AdResponseKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AdResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)Lgatewayprotocol/v1/AdResponseKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/AdResponseKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AdResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
