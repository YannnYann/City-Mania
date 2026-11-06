###### Class gatewayprotocol.v1.TestDataKt (gatewayprotocol.v1.TestDataKt)
.class public final Lgatewayprotocol/v1/TestDataKt;
.super Ljava/lang/Object;
.source "TestDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TestDataKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/TestDataKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/TestDataKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/TestDataKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/TestDataKt;->INSTANCE:Lgatewayprotocol/v1/TestDataKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.TestDataKt.Dsl (gatewayprotocol.v1.TestDataKt$Dsl)
.class public final Lgatewayprotocol/v1/TestDataKt$Dsl;
.super Ljava/lang/Object;
.source "TestDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/TestDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataKt$Dsl;-><init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object v0
.end method

.method public final clearForceCampaignId()V
    .registers 2

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCampaignId()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final clearForceCountry()V
    .registers 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCountry()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final clearForceCountrySubdivision()V
    .registers 2

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCountrySubdivision()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final clearForceExchangeTestMode()V
    .registers 2

    .line 134
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceExchangeTestMode()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final clearForceGeoKey()V
    .registers 2

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceGeoKey()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final getForceCampaignId()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCampaignId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getForceCampaignId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getForceCountry()Ljava/lang/String;
    .registers 3

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getForceCountry(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getForceCountrySubdivision()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCountrySubdivision()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getForceCountrySubdivision(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getForceExchangeTestMode()I
    .registers 2

    .line 116
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceExchangeTestMode()I

    move-result v0

    return v0
.end method

.method public final getForceGeoKey()Ljava/lang/String;
    .registers 3

    .line 162
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceGeoKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getForceGeoKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasForceCampaignId()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCampaignId()Z

    move-result v0

    return v0
.end method

.method public final hasForceCountry()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCountry()Z

    move-result v0

    return v0
.end method

.method public final hasForceCountrySubdivision()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCountrySubdivision()Z

    move-result v0

    return v0
.end method

.method public final hasForceExchangeTestMode()Z
    .registers 2

    .line 150
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceExchangeTestMode()Z

    move-result v0

    return v0
.end method

.method public final hasForceGeoKey()Z
    .registers 2

    .line 186
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceGeoKey()Z

    move-result v0

    return v0
.end method

.method public final setForceCampaignId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCampaignId(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final setForceCountry(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCountry(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final setForceCountrySubdivision(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCountrySubdivision(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final setForceExchangeTestMode(I)V
    .registers 3

    .line 119
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceExchangeTestMode(I)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public final setForceGeoKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceGeoKey(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.TestDataKt.Dsl.Companion (gatewayprotocol.v1.TestDataKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "TestDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)Lgatewayprotocol/v1/TestDataKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/TestDataKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl;-><init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
