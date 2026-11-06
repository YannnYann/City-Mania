###### Class gatewayprotocol.v1.ClientInfoOuterClass (gatewayprotocol.v1.ClientInfoOuterClass)
.class public final Lgatewayprotocol/v1/ClientInfoOuterClass;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;,
        Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;,
        Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;,
        Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
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

###### Class gatewayprotocol.v1.ClientInfoOuterClass.AnonymousClass1 (gatewayprotocol.v1.ClientInfoOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/ClientInfoOuterClass$1;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass;
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

    .line 3009
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.ClientInfoOuterClass.ClientInfo (gatewayprotocol.v1.ClientInfoOuterClass$ClientInfo)
.class public final Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_QUALITY_SDK_VERSION_FIELD_NUMBER:I = 0x10

.field public static final CUSTOM_MEDIATION_NAME_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

.field public static final GAME_ID_FIELD_NUMBER:I = 0x3

.field public static final IS_FID_AVAILABLE_FIELD_NUMBER:I = 0xe

.field public static final MEDIATION_ADAPTER_VERSION_FIELD_NUMBER:I = 0xf

.field public static final MEDIATION_PROVIDER_FIELD_NUMBER:I = 0x6

.field public static final MEDIATION_VERSION_FIELD_NUMBER:I = 0x8

.field public static final OFFERWALL_VERSION_FIELD_NUMBER:I = 0xd

.field public static final OMID_PARTNER_VERSION_FIELD_NUMBER:I = 0x9

.field public static final OMID_VERSION_FIELD_NUMBER:I = 0xa

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FIELD_NUMBER:I = 0x5

.field public static final SCAR_VERSION_NAME_FIELD_NUMBER:I = 0xc

.field public static final SDK_DEVELOPMENT_PLATFORM_FIELD_NUMBER:I = 0xb

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x1

.field public static final SDK_VERSION_NAME_FIELD_NUMBER:I = 0x2

.field public static final TEST_FIELD_NUMBER:I = 0x4


# instance fields
.field private adQualitySdkVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private customMediationName_:Ljava/lang/String;

.field private gameId_:Ljava/lang/String;

.field private isFidAvailable_:Z

.field private mediationAdapterVersion_:Ljava/lang/String;

.field private mediationProvider_:I

.field private mediationVersion_:Ljava/lang/String;

.field private offerwallVersion_:Ljava/lang/String;

.field private omidPartnerVersion_:Ljava/lang/String;

.field private omidVersion_:Ljava/lang/String;

.field private platform_:I

.field private scarVersionName_:Ljava/lang/String;

.field private sdkDevelopmentPlatform_:Ljava/lang/String;

.field private sdkVersionName_:Ljava/lang/String;

.field private sdkVersion_:I

.field private test_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 3076
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;-><init>()V

    .line 3079
    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    .line 3080
    const-class v1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 661
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    .line 664
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    .line 665
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    .line 666
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    .line 667
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    .line 668
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    .line 669
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    .line 670
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    .line 671
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    .line 672
    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 1

    .line 656
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersion(I)V

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearTest()V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setPlatformValue(I)V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearPlatform()V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationProviderValue(I)V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearMediationProvider()V

    return-void
.end method

.method public static synthetic access$1700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setCustomMediationName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearCustomMediationName()V

    return-void
.end method

.method public static synthetic access$1900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearSdkVersion()V

    return-void
.end method

.method public static synthetic access$2000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearMediationVersion()V

    return-void
.end method

.method public static synthetic access$2200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidPartnerVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearOmidPartnerVersion()V

    return-void
.end method

.method public static synthetic access$2500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidPartnerVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearOmidVersion()V

    return-void
.end method

.method public static synthetic access$2800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOmidVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkDevelopmentPlatform(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersionName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearSdkDevelopmentPlatform()V

    return-void
.end method

.method public static synthetic access$3100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkDevelopmentPlatformBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setScarVersionName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearScarVersionName()V

    return-void
.end method

.method public static synthetic access$3400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setScarVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOfferwallVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearOfferwallVersion()V

    return-void
.end method

.method public static synthetic access$3700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setOfferwallVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Z)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setIsFidAvailable(Z)V

    return-void
.end method

.method public static synthetic access$3900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearIsFidAvailable()V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearSdkVersionName()V

    return-void
.end method

.method public static synthetic access$4000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationAdapterVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearMediationAdapterVersion()V

    return-void
.end method

.method public static synthetic access$4200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setMediationAdapterVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setAdQualitySdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$4400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearAdQualitySdkVersion()V

    return-void
.end method

.method public static synthetic access$4500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setAdQualitySdkVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setGameId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    .line 656
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->clearGameId()V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setGameIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Z)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->setTest(Z)V

    return-void
.end method

.method private clearAdQualitySdkVersion()V
    .registers 2

    .line 1752
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1753
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearCustomMediationName()V
    .registers 2

    .line 1070
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1071
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getCustomMediationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private clearGameId()V
    .registers 2

    .line 830
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private clearIsFidAvailable()V
    .registers 2

    .line 1608
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    const/4 v0, 0x0

    .line 1609
    iput-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->isFidAvailable_:Z

    return-void
.end method

.method private clearMediationAdapterVersion()V
    .registers 2

    .line 1673
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1674
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationAdapterVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearMediationProvider()V
    .registers 2

    const/4 v0, 0x0

    .line 1006
    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private clearMediationVersion()V
    .registers 2

    .line 1149
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1150
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOfferwallVersion()V
    .registers 2

    .line 1544
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1545
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOfferwallVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOmidPartnerVersion()V
    .registers 2

    .line 1228
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1229
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidPartnerVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearOmidVersion()V
    .registers 2

    .line 1307
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1308
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearPlatform()V
    .registers 2

    const/4 v0, 0x0

    .line 944
    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private clearScarVersionName()V
    .registers 2

    .line 1465
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1466
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getScarVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkDevelopmentPlatform()V
    .registers 2

    .line 1386
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1387
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkDevelopmentPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 710
    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return-void
.end method

.method private clearSdkVersionName()V
    .registers 2

    .line 763
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private clearTest()V
    .registers 2

    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 1

    .line 3085
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 1

    .line 1847
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 1850
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1823
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1830
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1786
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1793
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1835
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1842
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1810
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1773
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1780
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1798
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1805
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
            ">;"
        }
    .end annotation

    .line 3091
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdQualitySdkVersion(Ljava/lang/String;)V
    .registers 3

    .line 1740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1741
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1742
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private setAdQualitySdkVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1765
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1766
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    .line 1767
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setCustomMediationName(Ljava/lang/String;)V
    .registers 3

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1060
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1083
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1084
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    .line 1085
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setGameId(Ljava/lang/String;)V
    .registers 2

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setGameIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 842
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 843
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setIsFidAvailable(Z)V
    .registers 3

    .line 1597
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1598
    iput-boolean p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->isFidAvailable_:Z

    return-void
.end method

.method private setMediationAdapterVersion(Ljava/lang/String;)V
    .registers 3

    .line 1661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1663
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediationAdapterVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1686
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1687
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    .line 1688
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .registers 2

    .line 994
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private setMediationProviderValue(I)V
    .registers 2

    .line 983
    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private setMediationVersion(Ljava/lang/String;)V
    .registers 3

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1139
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1162
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1163
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    .line 1164
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setOfferwallVersion(Ljava/lang/String;)V
    .registers 3

    .line 1532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1534
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOfferwallVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1557
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1558
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    .line 1559
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setOmidPartnerVersion(Ljava/lang/String;)V
    .registers 3

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1218
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOmidPartnerVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1241
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1242
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    .line 1243
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setOmidVersion(Ljava/lang/String;)V
    .registers 3

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1296
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1297
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOmidVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1320
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1321
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    .line 1322
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V
    .registers 2

    .line 932
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private setPlatformValue(I)V
    .registers 2

    .line 921
    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private setScarVersionName(Ljava/lang/String;)V
    .registers 3

    .line 1453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1454
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1455
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setScarVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1478
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1479
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    .line 1480
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setSdkDevelopmentPlatform(Ljava/lang/String;)V
    .registers 3

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1375
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    .line 1376
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    return-void
.end method

.method private setSdkDevelopmentPlatformBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1399
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1400
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    .line 1401
    iget p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setSdkVersion(I)V
    .registers 2

    .line 699
    iput p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return-void
.end method

.method private setSdkVersionName(Ljava/lang/String;)V
    .registers 2

    .line 750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 775
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 776
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setTest(Z)V
    .registers 2

    .line 871
    iput-boolean p1, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    .line 3009
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_74

    .line 3069
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_12
    return-object v1

    :pswitch_13
    const/4 v0, 0x1

    .line 3063
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3048
    :pswitch_19
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_34

    .line 3050
    const-class v1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    monitor-enter v1

    .line 3051
    :try_start_20
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_30

    .line 3053
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3056
    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_32

    .line 3058
    :cond_30
    :goto_30
    monitor-exit v1

    return-object v0

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw v0

    :cond_34
    return-object v0

    .line 3045
    :pswitch_35
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0

    .line 3017
    :pswitch_38
    const-string v2, "bitField0_"

    const-string v3, "sdkVersion_"

    const-string v4, "sdkVersionName_"

    const-string v5, "gameId_"

    const-string v6, "test_"

    const-string v7, "platform_"

    const-string v8, "mediationProvider_"

    const-string v9, "customMediationName_"

    const-string v10, "mediationVersion_"

    const-string v11, "omidPartnerVersion_"

    const-string v12, "omidVersion_"

    const-string v13, "sdkDevelopmentPlatform_"

    const-string v14, "scarVersionName_"

    const-string v15, "offerwallVersion_"

    const-string v16, "isFidAvailable_"

    const-string v17, "mediationAdapterVersion_"

    const-string v18, "adQualitySdkVersion_"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    .line 3036
    const-string v1, "\u0000\u0010\u0000\u0001\u0001\u0010\u0010\u0000\u0000\u0000\u0001\u000b\u0002\u0208\u0003\u0208\u0004\u0007\u0005\u000c\u0006\u000c\u0007\u1208\u0000\u0008\u1208\u0001\t\u1208\u0002\n\u1208\u0003\u000b\u1208\u0004\u000c\u1208\u0005\r\u1208\u0006\u000e\u1007\u0007\u000f\u1208\u0008\u0010\u1208\t"

    .line 3041
    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3014
    :pswitch_67
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;-><init>(Lgatewayprotocol/v1/ClientInfoOuterClass$1;)V

    return-object v0

    .line 3011
    :pswitch_6d
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;-><init>()V

    return-object v0

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAdQualitySdkVersion()Ljava/lang/String;
    .registers 2

    .line 1715
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdQualitySdkVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1728
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->adQualitySdkVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustomMediationName()Ljava/lang/String;
    .registers 2

    .line 1033
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1046
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .line 792
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 805
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFidAvailable()Z
    .registers 2

    .line 1586
    iget-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->isFidAvailable_:Z

    return v0
.end method

.method public getMediationAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 1636
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationAdapterVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1649
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationAdapterVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    .line 971
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    if-nez v0, :cond_a

    .line 972
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    :cond_a
    return-object v0
.end method

.method public getMediationProviderValue()I
    .registers 2

    .line 959
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .registers 2

    .line 1112
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1125
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOfferwallVersion()Ljava/lang/String;
    .registers 2

    .line 1507
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferwallVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1520
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->offerwallVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOmidPartnerVersion()Ljava/lang/String;
    .registers 2

    .line 1191
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOmidPartnerVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1204
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidPartnerVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOmidVersion()Ljava/lang/String;
    .registers 2

    .line 1270
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOmidVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1283
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->omidVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 2

    .line 909
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    if-nez v0, :cond_a

    .line 910
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    :cond_a
    return-object v0
.end method

.method public getPlatformValue()I
    .registers 2

    .line 897
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return v0
.end method

.method public getScarVersionName()Ljava/lang/String;
    .registers 2

    .line 1428
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getScarVersionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1441
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->scarVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkDevelopmentPlatform()Ljava/lang/String;
    .registers 2

    .line 1349
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkDevelopmentPlatformBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1362
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkDevelopmentPlatform_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()I
    .registers 2

    .line 687
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .registers 2

    .line 725
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 738
    iget-object v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Z
    .registers 2

    .line 859
    iget-boolean v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return v0
.end method

.method public hasAdQualitySdkVersion()Z
    .registers 2

    .line 1703
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomMediationName()Z
    .registers 3

    .line 1021
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasIsFidAvailable()Z
    .registers 2

    .line 1574
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationAdapterVersion()Z
    .registers 2

    .line 1624
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasMediationVersion()Z
    .registers 2

    .line 1100
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasOfferwallVersion()Z
    .registers 2

    .line 1495
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasOmidPartnerVersion()Z
    .registers 2

    .line 1179
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasOmidVersion()Z
    .registers 2

    .line 1258
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasScarVersionName()Z
    .registers 2

    .line 1416
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasSdkDevelopmentPlatform()Z
    .registers 2

    .line 1337
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.ClientInfo.Builder (gatewayprotocol.v1.ClientInfoOuterClass$ClientInfo$Builder)
.class public final Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1867
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$000()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ClientInfoOuterClass$1;)V
    .registers 2

    .line 1860
    invoke-direct {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdQualitySdkVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2982
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2983
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$4400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearCustomMediationName()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2282
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2283
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearGameId()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearIsFidAvailable()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2835
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearMediationAdapterVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2901
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2902
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$4100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearMediationVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2364
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearOfferwallVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2768
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearOmidPartnerVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearOmidVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2150
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearScarVersionName()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2687
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearSdkDevelopmentPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2606
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2607
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearSdkVersion()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 1906
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearSdkVersionName()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1961
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public clearTest()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 2

    .line 2084
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2085
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public getAdQualitySdkVersion()Ljava/lang/String;
    .registers 2

    .line 2943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdQualitySdkVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getAdQualitySdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustomMediationName()Ljava/lang/String;
    .registers 2

    .line 2243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getCustomMediationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .line 1990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getGameIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFidAvailable()Z
    .registers 2

    .line 2810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getIsFidAvailable()Z

    move-result v0

    return v0
.end method

.method public getMediationAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 2862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationAdapterVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    .line 2191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProviderValue()I
    .registers 2

    .line 2165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationProviderValue()I

    move-result v0

    return v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .registers 2

    .line 2324
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2337
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getMediationVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOfferwallVersion()Ljava/lang/String;
    .registers 2

    .line 2729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOfferwallVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfferwallVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOfferwallVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOmidPartnerVersion()Ljava/lang/String;
    .registers 2

    .line 2405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidPartnerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOmidPartnerVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2418
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidPartnerVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOmidVersion()Ljava/lang/String;
    .registers 2

    .line 2486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOmidVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2499
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getOmidVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 2

    .line 2125
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformValue()I
    .registers 2

    .line 2099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getPlatformValue()I

    move-result v0

    return v0
.end method

.method public getScarVersionName()Ljava/lang/String;
    .registers 2

    .line 2648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getScarVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScarVersionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getScarVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkDevelopmentPlatform()Ljava/lang/String;
    .registers 2

    .line 2567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkDevelopmentPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkDevelopmentPlatformBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkDevelopmentPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()I
    .registers 2

    .line 1881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkVersion()I

    move-result v0

    return v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .registers 2

    .line 1921
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Z
    .registers 2

    .line 2059
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->getTest()Z

    move-result v0

    return v0
.end method

.method public hasAdQualitySdkVersion()Z
    .registers 2

    .line 2931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasAdQualitySdkVersion()Z

    move-result v0

    return v0
.end method

.method public hasCustomMediationName()Z
    .registers 2

    .line 2231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasCustomMediationName()Z

    move-result v0

    return v0
.end method

.method public hasIsFidAvailable()Z
    .registers 2

    .line 2798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasIsFidAvailable()Z

    move-result v0

    return v0
.end method

.method public hasMediationAdapterVersion()Z
    .registers 2

    .line 2850
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasMediationAdapterVersion()Z

    move-result v0

    return v0
.end method

.method public hasMediationVersion()Z
    .registers 2

    .line 2312
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasMediationVersion()Z

    move-result v0

    return v0
.end method

.method public hasOfferwallVersion()Z
    .registers 2

    .line 2717
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasOfferwallVersion()Z

    move-result v0

    return v0
.end method

.method public hasOmidPartnerVersion()Z
    .registers 2

    .line 2393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasOmidPartnerVersion()Z

    move-result v0

    return v0
.end method

.method public hasOmidVersion()Z
    .registers 2

    .line 2474
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasOmidVersion()Z

    move-result v0

    return v0
.end method

.method public hasScarVersionName()Z
    .registers 2

    .line 2636
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasScarVersionName()Z

    move-result v0

    return v0
.end method

.method public hasSdkDevelopmentPlatform()Z
    .registers 2

    .line 2555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->hasSdkDevelopmentPlatform()Z

    move-result v0

    return v0
.end method

.method public setAdQualitySdkVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2969
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2970
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$4300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdQualitySdkVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2997
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2998
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$4500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCustomMediationName(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2269
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2270
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2297
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGameId(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2016
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2017
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGameIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2044
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2045
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsFidAvailable(Z)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Z)V

    return-object p0
.end method

.method public setMediationAdapterVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2888
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2889
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$4000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediationAdapterVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2916
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2917
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$4200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    return-object p0
.end method

.method public setMediationProviderValue(I)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V

    return-object p0
.end method

.method public setMediationVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2000(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediationVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOfferwallVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2755
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2756
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOfferwallVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2783
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2784
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3700(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOmidPartnerVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOmidPartnerVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOmidVersion(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2512
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2600(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOmidVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2800(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V

    return-object p0
.end method

.method public setPlatformValue(I)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$1100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V

    return-object p0
.end method

.method public setScarVersionName(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2675
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3200(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setScarVersionNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3400(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSdkDevelopmentPlatform(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2594
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$2900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkDevelopmentPlatformBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2621
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$3100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSdkVersion(I)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 1893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$100(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;I)V

    return-object p0
.end method

.method public setSdkVersionName(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 1947
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1948
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$300(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 1975
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$500(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTest(Z)Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;
    .registers 3

    .line 2071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->access$900(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;Z)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.ClientInfoOrBuilder (gatewayprotocol.v1.ClientInfoOuterClass$ClientInfoOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfoOrBuilder;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdQualitySdkVersion()Ljava/lang/String;
.end method

.method public abstract getAdQualitySdkVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCustomMediationName()Ljava/lang/String;
.end method

.method public abstract getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGameId()Ljava/lang/String;
.end method

.method public abstract getGameIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIsFidAvailable()Z
.end method

.method public abstract getMediationAdapterVersion()Ljava/lang/String;
.end method

.method public abstract getMediationAdapterVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
.end method

.method public abstract getMediationProviderValue()I
.end method

.method public abstract getMediationVersion()Ljava/lang/String;
.end method

.method public abstract getMediationVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOfferwallVersion()Ljava/lang/String;
.end method

.method public abstract getOfferwallVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOmidPartnerVersion()Ljava/lang/String;
.end method

.method public abstract getOmidPartnerVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOmidVersion()Ljava/lang/String;
.end method

.method public abstract getOmidVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPlatform()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
.end method

.method public abstract getPlatformValue()I
.end method

.method public abstract getScarVersionName()Ljava/lang/String;
.end method

.method public abstract getScarVersionNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSdkDevelopmentPlatform()Ljava/lang/String;
.end method

.method public abstract getSdkDevelopmentPlatformBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSdkVersion()I
.end method

.method public abstract getSdkVersionName()Ljava/lang/String;
.end method

.method public abstract getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTest()Z
.end method

.method public abstract hasAdQualitySdkVersion()Z
.end method

.method public abstract hasCustomMediationName()Z
.end method

.method public abstract hasIsFidAvailable()Z
.end method

.method public abstract hasMediationAdapterVersion()Z
.end method

.method public abstract hasMediationVersion()Z
.end method

.method public abstract hasOfferwallVersion()Z
.end method

.method public abstract hasOmidPartnerVersion()Z
.end method

.method public abstract hasOmidVersion()Z
.end method

.method public abstract hasScarVersionName()Z
.end method

.method public abstract hasSdkDevelopmentPlatform()Z
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.MediationProvider (gatewayprotocol.v1.ClientInfoOuterClass$MediationProvider)
.class public final enum Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
.super Ljava/lang/Enum;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum MEDIATION_PROVIDER_ADMOB:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_ADMOB_VALUE:I = 0x2

.field public static final enum MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_CUSTOM_VALUE:I = 0x1

.field public static final enum MEDIATION_PROVIDER_LEVELPLAY:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_LEVELPLAY_VALUE:I = 0x4

.field public static final enum MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_MAX_VALUE:I = 0x3

.field public static final enum MEDIATION_PROVIDER_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 6

    .line 122
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    sget-object v1, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_ADMOB:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    sget-object v3, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    sget-object v4, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_LEVELPLAY:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    sget-object v5, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    filled-new-array/range {v0 .. v5}, [Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 127
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 135
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_CUSTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 143
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_ADMOB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_ADMOB:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 151
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_MAX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 159
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_LEVELPLAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_LEVELPLAY:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 160
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 122
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->$values()[Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->$VALUES:[Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 236
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 261
    iput p3, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_10
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_LEVELPLAY:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 225
    :cond_13
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 224
    :cond_16
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_ADMOB:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 223
    :cond_19
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 222
    :cond_1c
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation

    .line 233
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 246
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-static {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    .line 122
    const-class v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1

    .line 122
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->$VALUES:[Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 203
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    if-eq p0, v0, :cond_7

    .line 207
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->value:I

    return v0

    .line 204
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.MediationProvider.AnonymousClass1 (gatewayprotocol.v1.ClientInfoOuterClass$MediationProvider$1)
.class public Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$1;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 237
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$1;->findValueByNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    .line 240
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.MediationProvider.MediationProviderVerifier (gatewayprotocol.v1.ClientInfoOuterClass$MediationProvider$MediationProviderVerifier)
.class public final Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediationProviderVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 254
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.Platform (gatewayprotocol.v1.ClientInfoOuterClass$Platform)
.class public final enum Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
.super Ljava/lang/Enum;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$PlatformVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

.field public static final enum PLATFORM_ANDROID:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

.field public static final PLATFORM_ANDROID_VALUE:I = 0x1

.field public static final enum PLATFORM_IOS:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

.field public static final PLATFORM_IOS_VALUE:I = 0x2

.field public static final enum PLATFORM_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

.field public static final PLATFORM_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum PLATFORM_WEB:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

.field public static final PLATFORM_WEB_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 5

    .line 15
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    sget-object v1, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_ANDROID:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_IOS:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    sget-object v3, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_WEB:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    sget-object v4, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    filled-new-array {v0, v1, v2, v3, v4}, [Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 20
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    const-string v1, "PLATFORM_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 24
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    const-string v1, "PLATFORM_ANDROID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_ANDROID:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 28
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    const-string v1, "PLATFORM_IOS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_IOS:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 32
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    const-string v1, "PLATFORM_WEB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_WEB:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 33
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 15
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->$values()[Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->$VALUES:[Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 88
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput p3, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_d
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_WEB:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    return-object p0

    .line 77
    :cond_10
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_IOS:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    return-object p0

    .line 76
    :cond_13
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_ANDROID:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    return-object p0

    .line 75
    :cond_16
    sget-object p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_UNSPECIFIED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 98
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$PlatformVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {p0}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 2

    .line 15
    const-class v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 1

    .line 15
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->$VALUES:[Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 56
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    if-eq p0, v0, :cond_7

    .line 60
    iget v0, p0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->value:I

    return v0

    .line 57
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.Platform.AnonymousClass1 (gatewayprotocol.v1.ClientInfoOuterClass$Platform$1)
.class public Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$1;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$1;->findValueByNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
    .registers 2

    .line 92
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.ClientInfoOuterClass.Platform.PlatformVerifier (gatewayprotocol.v1.ClientInfoOuterClass$Platform$PlatformVerifier)
.class public final Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$PlatformVerifier;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$PlatformVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$PlatformVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform$PlatformVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 106
    invoke-static {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
