###### Class gatewayprotocol.v1.CampaignKt (gatewayprotocol.v1.CampaignKt)
.class public final Lgatewayprotocol/v1/CampaignKt;
.super Ljava/lang/Object;
.source "CampaignKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/CampaignKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/CampaignKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/CampaignKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/CampaignKt;->INSTANCE:Lgatewayprotocol/v1/CampaignKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.CampaignKt.Dsl (gatewayprotocol.v1.CampaignKt$Dsl)
.class public final Lgatewayprotocol/v1/CampaignKt$Dsl;
.super Ljava/lang/Object;
.source "CampaignKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/CampaignKt$Dsl;->Companion:Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    return-object v0
.end method

.method public final clearData()V
    .registers 2

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearData()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final clearDataVersion()V
    .registers 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearDataVersion()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final clearImpressionOpportunityId()V
    .registers 2

    .line 127
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearImpressionOpportunityId()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final clearLoadTimestamp()V
    .registers 2

    .line 152
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearLoadTimestamp()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final clearPlacementId()V
    .registers 2

    .line 102
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearPlacementId()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final clearShowTimestamp()V
    .registers 2

    .line 188
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->clearShowTimestamp()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final getData()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDataVersion()I
    .registers 2

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getDataVersion()I

    move-result v0

    return v0
.end method

.method public final getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 114
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getImpressionOpportunityId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLoadTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3

    .line 139
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getLoadTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    const-string v1, "getLoadTimestamp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 3

    .line 89
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShowTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->getShowTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    const-string v1, "getShowTimestamp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShowTimestampOrNull(Lgatewayprotocol/v1/CampaignKt$Dsl;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object p1, p1, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/CampaignKtKt;->getShowTimestampOrNull(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignOrBuilder;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object p1

    return-object p1
.end method

.method public final hasLoadTimestamp()Z
    .registers 2

    .line 163
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->hasLoadTimestamp()Z

    move-result v0

    return v0
.end method

.method public final hasShowTimestamp()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->hasShowTimestamp()Z

    move-result v0

    return v0
.end method

.method public final setData(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final setDataVersion(I)V
    .registers 3

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setDataVersion(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final setLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final setPlacementId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

.method public final setShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->setShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.CampaignKt.Dsl.Companion (gatewayprotocol.v1.CampaignKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "CampaignKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/CampaignKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/CampaignKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
