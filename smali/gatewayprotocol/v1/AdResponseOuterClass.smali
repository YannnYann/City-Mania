###### Class gatewayprotocol.v1.AdResponseOuterClass (gatewayprotocol.v1.AdResponseOuterClass)
.class public final Lgatewayprotocol/v1/AdResponseOuterClass;
.super Ljava/lang/Object;
.source "AdResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;,
        Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

###### Class gatewayprotocol.v1.AdResponseOuterClass.AnonymousClass1 (gatewayprotocol.v1.AdResponseOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/AdResponseOuterClass$1;
.super Ljava/lang/Object;
.source "AdResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1157
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class gatewayprotocol.v1.AdResponseOuterClass.AdResponse (gatewayprotocol.v1.AdResponseOuterClass$AdResponse)
.class public final Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AdResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_DATA_FIELD_NUMBER:I = 0x6

.field public static final AD_DATA_REFRESH_TOKEN_FIELD_NUMBER:I = 0x5

.field public static final AD_DATA_VERSION_FIELD_NUMBER:I = 0x7

.field public static final CAMPAIGN_METADATA_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x8

.field public static final IMPRESSION_CONFIGURATION_FIELD_NUMBER:I = 0x2

.field public static final IMPRESSION_CONFIGURATION_VERSION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACKING_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final WEBVIEW_CONFIGURATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private adDataRefreshToken_:Lcom/google/protobuf/ByteString;

.field private adDataVersion_:I

.field private adData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

.field private error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

.field private impressionConfigurationVersion_:I

.field private impressionConfiguration_:Lcom/google/protobuf/ByteString;

.field private trackingToken_:Lcom/google/protobuf/ByteString;

.field private webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1215
    new-instance v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;-><init>()V

    .line 1218
    sput-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 1219
    const-class v1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 148
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->trackingToken_:Lcom/google/protobuf/ByteString;

    .line 149
    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfiguration_:Lcom/google/protobuf/ByteString;

    .line 150
    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataRefreshToken_:Lcom/google/protobuf/ByteString;

    .line 151
    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 1

    .line 142
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setTrackingToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearAdDataRefreshToken()V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setAdData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearAdData()V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;I)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setAdDataVersion(I)V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearAdDataVersion()V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method public static synthetic access$1700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method public static synthetic access$1800(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearError()V

    return-void
.end method

.method public static synthetic access$1900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearTrackingToken()V

    return-void
.end method

.method public static synthetic access$2000(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->mergeCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-void
.end method

.method public static synthetic access$2100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearCampaignMetadata()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setImpressionConfiguration(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearImpressionConfiguration()V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;I)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setImpressionConfigurationVersion(I)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearImpressionConfigurationVersion()V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->mergeWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->clearWebviewConfiguration()V

    return-void
.end method

.method private clearAdData()V
    .registers 2

    .line 417
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAdDataRefreshToken()V
    .registers 2

    .line 372
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataRefreshToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAdDataVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 455
    iput v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataVersion_:I

    return-void
.end method

.method private clearCampaignMetadata()V
    .registers 2

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 587
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method private clearError()V
    .registers 2

    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 521
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method private clearImpressionConfiguration()V
    .registers 2

    .line 229
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfiguration_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearImpressionConfigurationVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfigurationVersion_:I

    return-void
.end method

.method private clearTrackingToken()V
    .registers 2

    .line 190
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->trackingToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearWebviewConfiguration()V
    .registers 2

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 333
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 1

    .line 1224
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object v0
.end method

.method private mergeCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 4

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    if-eqz v0, :cond_22

    .line 571
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 572
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 573
    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->newBuilder(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    goto :goto_24

    .line 575
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 577
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method private mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 4

    .line 503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_22

    .line 505
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 506
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 507
    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    goto :goto_24

    .line 509
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 511
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method private mergeWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .registers 4

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    if-eqz v0, :cond_22

    .line 317
    invoke-static {}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 318
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 319
    invoke-static {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->newBuilder(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    goto :goto_24

    .line 321
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 323
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 1

    .line 667
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 670
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 606
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 613
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 593
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 600
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 618
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 625
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            ">;"
        }
    .end annotation

    .line 1230
    sget-object v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdData(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataRefreshToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setAdDataVersion(I)V
    .registers 2

    .line 444
    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataVersion_:I

    return-void
.end method

.method private setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .registers 2

    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 558
    iget p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method private setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 492
    iget p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method

.method private setImpressionConfiguration(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfiguration_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setImpressionConfigurationVersion(I)V
    .registers 2

    .line 256
    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfigurationVersion_:I

    return-void
.end method

.method private setTrackingToken(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->trackingToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V
    .registers 2

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    iput-object p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 304
    iget p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1157
    sget-object p2, Lgatewayprotocol/v1/AdResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_66

    .line 1208
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 1202
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1187
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 1189
    const-class p2, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    monitor-enter p2

    .line 1190
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 1192
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1195
    sput-object p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 1197
    :cond_31
    :goto_31
    monitor-exit p2

    return-object p1

    :goto_33
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_2e

    throw p1

    :cond_35
    return-object p1

    .line 1184
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object p1

    .line 1165
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "trackingToken_"

    const-string v2, "impressionConfiguration_"

    const-string v3, "impressionConfigurationVersion_"

    const-string v4, "webviewConfiguration_"

    const-string v5, "adDataRefreshToken_"

    const-string v6, "adData_"

    const-string v7, "adDataVersion_"

    const-string v8, "error_"

    const-string v9, "campaignMetadata_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    .line 1177
    const-string p2, "\u0000\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u0004\u0004\u1009\u0000\u0005\n\u0006\n\u0007\u0004\u0008\u1009\u0001\t\u1009\u0002"

    .line 1180
    sget-object p3, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1162
    :pswitch_5a
    new-instance p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;-><init>(Lgatewayprotocol/v1/AdResponseOuterClass$1;)V

    return-object p1

    .line 1159
    :pswitch_60
    new-instance p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-direct {p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;-><init>()V

    return-object p1

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5a
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAdData()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 389
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAdDataRefreshToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 348
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataRefreshToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAdDataVersion()I
    .registers 2

    .line 432
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->adDataVersion_:I

    return v0
.end method

.method public getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2

    .line 546
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->campaignMetadata_:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    .line 480
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getImpressionConfiguration()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 205
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfiguration_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getImpressionConfigurationVersion()I
    .registers 2

    .line 244
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->impressionConfigurationVersion_:I

    return v0
.end method

.method public getTrackingToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 166
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->trackingToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .registers 2

    .line 292
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->webviewConfiguration_:Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasCampaignMetadata()Z
    .registers 2

    .line 535
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasError()Z
    .registers 2

    .line 469
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasWebviewConfiguration()Z
    .registers 3

    .line 281
    iget v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.AdResponseOuterClass.AdResponse.Builder (gatewayprotocol.v1.AdResponseOuterClass$AdResponse$Builder)
.class public final Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 687
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$000()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdResponseOuterClass$1;)V
    .registers 2

    .line 680
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdData()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1300(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearAdDataRefreshToken()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearAdDataVersion()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 1003
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1500(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearCampaignMetadata()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 1145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$2100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearError()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 1074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1800(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearImpressionConfiguration()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 766
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$400(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearImpressionConfigurationVersion()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearTrackingToken()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 726
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$200(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearWebviewConfiguration()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 2

    .line 877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public getAdData()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAdDataRefreshToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAdDataVersion()I
    .registers 2

    .line 978
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataVersion()I

    move-result v0

    return v0
.end method

.method public getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .registers 2

    .line 1099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    .line 1028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionConfiguration()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 741
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionConfigurationVersion()I
    .registers 2

    .line 781
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfigurationVersion()I

    move-result v0

    return v0
.end method

.method public getTrackingToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 701
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .registers 2

    .line 831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasCampaignMetadata()Z
    .registers 2

    .line 1088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasCampaignMetadata()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .registers 2

    .line 1017
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasWebviewConfiguration()Z
    .registers 2

    .line 820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasWebviewConfiguration()Z

    move-result v0

    return v0
.end method

.method public mergeCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 1134
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$2000(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 1063
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public mergeWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$800(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public setAdData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1200(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1000(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAdDataVersion(I)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1400(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;I)V

    return-object p0
.end method

.method public setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 1122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 1109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 1051
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 1038
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setImpressionConfiguration(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 753
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$300(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setImpressionConfigurationVersion(I)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 793
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$500(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;I)V

    return-object p0
.end method

.method public setTrackingToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 713
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 854
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .registers 3

    .line 841
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.AdResponseOuterClass.AdResponseOrBuilder (gatewayprotocol.v1.AdResponseOuterClass$AdResponseOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;
.super Ljava/lang/Object;
.source "AdResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAdDataRefreshToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAdDataVersion()I
.end method

.method public abstract getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
.end method

.method public abstract getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
.end method

.method public abstract getImpressionConfiguration()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getImpressionConfigurationVersion()I
.end method

.method public abstract getTrackingToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
.end method

.method public abstract hasCampaignMetadata()Z
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasWebviewConfiguration()Z
.end method
