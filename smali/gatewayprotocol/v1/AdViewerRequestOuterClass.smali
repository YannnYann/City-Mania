###### Class gatewayprotocol.v1.AdViewerRequestOuterClass (gatewayprotocol.v1.AdViewerRequestOuterClass)
.class public final Lgatewayprotocol/v1/AdViewerRequestOuterClass;
.super Ljava/lang/Object;
.source "AdViewerRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;,
        Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;
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

###### Class gatewayprotocol.v1.AdViewerRequestOuterClass.AnonymousClass1 (gatewayprotocol.v1.AdViewerRequestOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;
.super Ljava/lang/Object;
.source "AdViewerRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestOuterClass;
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

    .line 943
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.AdViewerRequestOuterClass.AdViewerRequest (gatewayprotocol.v1.AdViewerRequestOuterClass$AdViewerRequest)
.class public final Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AdViewerRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewerRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_STATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

.field public static final DYNAMIC_DEVICE_INFO_FIELD_NUMBER:I = 0x3

.field public static final IMPRESSION_OPPORTUNITY_ID_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x6

.field public static final SESSION_COUNTERS_FIELD_NUMBER:I = 0x1

.field public static final STATIC_DEVICE_INFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

.field private dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

.field private impressionOpportunityId_:Lcom/google/protobuf/ByteString;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field private staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 998
    new-instance v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;-><init>()V

    .line 1001
    sput-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    .line 1002
    const-class v1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 125
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    .line 126
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 1

    .line 119
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearCampaignState()V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearImpressionOpportunityId()V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearPayload()V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearSessionCounters()V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearStaticDeviceInfo()V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->clearDynamicDeviceInfo()V

    return-void
.end method

.method private clearCampaignState()V
    .registers 2

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 390
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private clearDynamicDeviceInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 324
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private clearImpressionOpportunityId()V
    .registers 2

    .line 429
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPayload()V
    .registers 2

    .line 468
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSessionCounters()V
    .registers 2

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 192
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private clearStaticDeviceInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 258
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 1

    .line 1007
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object v0
.end method

.method private mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 4

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    if-eqz v0, :cond_22

    .line 374
    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getDefaultInstance()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 375
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 376
    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->newBuilder(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    goto :goto_24

    .line 378
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 380
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 4

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-eqz v0, :cond_22

    .line 308
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 309
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 310
    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    goto :goto_24

    .line 312
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 314
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 4

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-eqz v0, :cond_22

    .line 176
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 177
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 178
    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    goto :goto_24

    .line 180
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 182
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 4

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-eqz v0, :cond_22

    .line 242
    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 243
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 244
    invoke-static {v0}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->newBuilder(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    goto :goto_24

    .line 246
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 248
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 1

    .line 548
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 551
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 494
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 481
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 506
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
            ">;"
        }
    .end annotation

    .line 1013
    sget-object v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 2

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 361
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 2

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 295
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 2

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 163
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method

.method private setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 2

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 229
    iget p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 943
    sget-object p2, Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_60

    .line 991
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 985
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 970
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 972
    const-class p2, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    monitor-enter p2

    .line 973
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 975
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 978
    sput-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 980
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

    .line 967
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    return-object p1

    .line 951
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "sessionCounters_"

    const-string v2, "staticDeviceInfo_"

    const-string v3, "dynamicDeviceInfo_"

    const-string v4, "campaignState_"

    const-string v5, "impressionOpportunityId_"

    const-string v6, "payload_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 960
    const-string p2, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\n\u0006\n"

    .line 963
    sget-object p3, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 948
    :pswitch_54
    new-instance p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;-><init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;)V

    return-object p1

    .line 945
    :pswitch_5a
    new-instance p1, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-direct {p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;-><init>()V

    return-object p1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_54
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .registers 2

    .line 349
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->campaignState_:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getDefaultInstance()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 2

    .line 283
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->dynamicDeviceInfo_:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 405
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 444
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 2

    .line 151
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 2

    .line 217
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->staticDeviceInfo_:Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getDefaultInstance()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasCampaignState()Z
    .registers 2

    .line 338
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasDynamicDeviceInfo()Z
    .registers 2

    .line 272
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionCounters()Z
    .registers 3

    .line 140
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .registers 2

    .line 206
    iget v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.AdViewerRequestOuterClass.AdViewerRequest.Builder (gatewayprotocol.v1.AdViewerRequestOuterClass$AdViewerRequest$Builder)
.class public final Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdViewerRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 568
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$000()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;)V
    .registers 2

    .line 561
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCampaignState()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 780
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$900(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearImpressionOpportunityId()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 891
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearPayload()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearSessionCounters()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 2

    .line 709
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .registers 2

    .line 805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 2

    .line 734
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasCampaignState()Z
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasCampaignState()Z

    move-result v0

    return v0
.end method

.method public hasDynamicDeviceInfo()Z
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 840
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 769
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$800(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1000(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 815
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1000(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$700(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 744
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$700(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 878
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 918
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 919
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 615
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 602
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 686
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .registers 3

    .line 673
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.AdViewerRequestOuterClass.AdViewerRequestOrBuilder (gatewayprotocol.v1.AdViewerRequestOuterClass$AdViewerRequestOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;
.super Ljava/lang/Object;
.source "AdViewerRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdViewerRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
.end method

.method public abstract getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
.end method

.method public abstract getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPayload()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
.end method

.method public abstract getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
.end method

.method public abstract hasCampaignState()Z
.end method

.method public abstract hasDynamicDeviceInfo()Z
.end method

.method public abstract hasSessionCounters()Z
.end method

.method public abstract hasStaticDeviceInfo()Z
.end method
