###### Class com.unity3d.ads.core.domain.AndroidTestDataInfo (com.unity3d.ads.core.domain.AndroidTestDataInfo)
.class public final Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;
.super Ljava/lang/Object;
.source "AndroidTestDataInfo.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetTestDataInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidTestDataInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidTestDataInfo.kt\ncom/unity3d/ads/core/domain/AndroidTestDataInfo\n+ 2 TestDataKt.kt\ngatewayprotocol/v1/TestDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n10#2:19\n1#3:20\n1#3:21\n*S KotlinDebug\n*F\n+ 1 AndroidTestDataInfo.kt\ncom/unity3d/ads/core/domain/AndroidTestDataInfo\n*L\n10#1:19\n10#1:20\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;

.field public static final EXCHANGE_TEST_MODE:Ljava/lang/String; = "ExchangeTestMode"


# instance fields
.field private final androidManifestIntPropertyReader:Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->Companion:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;)V
    .registers 3

    const-string v0, "androidManifestIntPropertyReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->androidManifestIntPropertyReader:Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;

    return-void
.end method


# virtual methods
.method public invoke()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 4

    .line 10
    sget-object v0, Lgatewayprotocol/v1/TestDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->newBuilder()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)Lgatewayprotocol/v1/TestDataKt$Dsl;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->androidManifestIntPropertyReader:Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;

    const-string v2, "ExchangeTestMode"

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader;->getPropertyByName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl;->setForceExchangeTestMode(I)V

    .line 10
    :cond_20
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataKt$Dsl;->_build()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceExchangeTestMode()Z

    move-result v1

    if-eqz v1, :cond_2b

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.AndroidTestDataInfo.Companion (com.unity3d.ads.core.domain.AndroidTestDataInfo$Companion)
.class public final Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;
.super Ljava/lang/Object;
.source "AndroidTestDataInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo$Companion;-><init>()V

    return-void
.end method
