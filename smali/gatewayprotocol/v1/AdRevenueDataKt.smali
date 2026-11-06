###### Class gatewayprotocol.v1.AdRevenueDataKt (gatewayprotocol.v1.AdRevenueDataKt)
.class public final Lgatewayprotocol/v1/AdRevenueDataKt;
.super Ljava/lang/Object;
.source "AdRevenueDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AdRevenueDataKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdRevenueDataKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdRevenueDataKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdRevenueDataKt;->INSTANCE:Lgatewayprotocol/v1/AdRevenueDataKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AdRevenueDataKt.Dsl (gatewayprotocol.v1.AdRevenueDataKt$Dsl)
.class public final Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;
.super Ljava/lang/Object;
.source "AdRevenueDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRevenueDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->Companion:Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;-><init>(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    return-object v0
.end method

.method public final clearAdFormat()V
    .registers 2

    .line 268
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearAdFormat()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final clearAdUnitId()V
    .registers 2

    .line 189
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearAdUnitId()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final clearCountryCode()V
    .registers 2

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearCountryCode()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final clearEventId()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearEventId()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final clearNetworkName()V
    .registers 2

    .line 153
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearNetworkName()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final clearRevenue()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearRevenue()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final clearThirdPartyAdPlacementId()V
    .registers 2

    .line 225
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->clearThirdPartyAdPlacementId()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 3

    .line 248
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    const-string v1, "getAdFormat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdFormatValue()I
    .registers 2

    .line 255
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 3

    .line 176
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdUnitId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .registers 3

    .line 104
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCountryCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEventId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getEventId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getEventId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNetworkName()Ljava/lang/String;
    .registers 3

    .line 140
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNetworkName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRevenue()D
    .registers 3

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getRevenue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getThirdPartyAdPlacementId()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThirdPartyAdPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAdUnitId()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->hasAdUnitId()Z

    move-result v0

    return v0
.end method

.method public final hasCountryCode()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->hasCountryCode()Z

    move-result v0

    return v0
.end method

.method public final hasNetworkName()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->hasNetworkName()Z

    move-result v0

    return v0
.end method

.method public final hasRevenue()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->hasRevenue()Z

    move-result v0

    return v0
.end method

.method public final hasThirdPartyAdPlacementId()Z
    .registers 2

    .line 236
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->hasThirdPartyAdPlacementId()Z

    move-result v0

    return v0
.end method

.method public final setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setAdFormatValue(I)V
    .registers 3

    .line 258
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setAdFormatValue(I)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setAdUnitId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setCountryCode(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setEventId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setEventId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setNetworkName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setNetworkName(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setRevenue(D)V
    .registers 4

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setRevenue(D)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

.method public final setThirdPartyAdPlacementId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->setThirdPartyAdPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AdRevenueDataKt.Dsl.Companion (gatewayprotocol.v1.AdRevenueDataKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AdRevenueDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;)Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;-><init>(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
