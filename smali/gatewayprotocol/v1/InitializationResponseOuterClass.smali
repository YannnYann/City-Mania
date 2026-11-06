###### Class gatewayprotocol.v1.InitializationResponseOuterClass (gatewayprotocol.v1.InitializationResponseOuterClass)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$PlacementOrBuilder;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
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

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.AnonymousClass1 (gatewayprotocol.v1.InitializationResponseOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/InitializationResponseOuterClass$1;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
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

    .line 444
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.InitializationResponse (gatewayprotocol.v1.InitializationResponseOuterClass$InitializationResponse)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;,
        Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$ScarPlacementsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_OF_LAST_SHOWN_CAMPAIGNS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final MODULES_FIELD_NUMBER:I = 0x9

.field public static final NATIVE_CONFIGURATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_URL_OVERRIDES_FIELD_NUMBER:I = 0x8

.field public static final SCAR_ELIGIBLE_FORMATS_FIELD_NUMBER:I = 0x7

.field public static final SCAR_PLACEMENTS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_INITIALIZATION_COMPLETED_REQUEST_FIELD_NUMBER:I = 0x4

.field public static final UNIVERSAL_REQUEST_URL_FIELD_NUMBER:I = 0x2

.field private static final scarEligibleFormats_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private countOfLastShownCampaigns_:I

.field private error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

.field private modules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation
.end field

.field private nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

.field private requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation
.end field

.field private scarEligibleFormatsMemoizedSerializedSize:I

.field private scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

.field private scarPlacements_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end field

.field private triggerInitializationCompletedRequest_:Z

.field private universalRequestUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1577
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 3115
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;-><init>()V

    .line 3118
    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 3119
    const-class v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1165
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1472
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    .line 1166
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    .line 1167
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    .line 1168
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1169
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$1300()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 1

    .line 1160
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-void
.end method

.method public static synthetic access$1500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->mergeNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-void
.end method

.method public static synthetic access$1600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearNativeConfiguration()V

    return-void
.end method

.method public static synthetic access$1700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/String;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setUniversalRequestUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1800(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearUniversalRequestUrl()V

    return-void
.end method

.method public static synthetic access$1900(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setUniversalRequestUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method public static synthetic access$2100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method public static synthetic access$2200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearError()V

    return-void
.end method

.method public static synthetic access$2300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Z)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setTriggerInitializationCompletedRequest(Z)V

    return-void
.end method

.method public static synthetic access$2400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearTriggerInitializationCompletedRequest()V

    return-void
.end method

.method public static synthetic access$2500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setCountOfLastShownCampaigns(I)V

    return-void
.end method

.method public static synthetic access$2600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearCountOfLastShownCampaigns()V

    return-void
.end method

.method public static synthetic access$2700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Ljava/util/Map;
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getMutableScarPlacementsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2800(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 3

    .line 1160
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setScarEligibleFormats(ILgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-void
.end method

.method public static synthetic access$2900(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addScarEligibleFormats(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-void
.end method

.method public static synthetic access$3000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addAllScarEligibleFormats(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$3100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearScarEligibleFormats()V

    return-void
.end method

.method public static synthetic access$3200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;II)V
    .registers 3

    .line 1160
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setScarEligibleFormatsValue(II)V

    return-void
.end method

.method public static synthetic access$3300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addScarEligibleFormatsValue(I)V

    return-void
.end method

.method public static synthetic access$3400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addAllScarEligibleFormatsValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$3500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 3

    .line 1160
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-void
.end method

.method public static synthetic access$3600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addRequestUrlOverrides(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-void
.end method

.method public static synthetic access$3700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 3

    .line 1160
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-void
.end method

.method public static synthetic access$3800(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addAllRequestUrlOverrides(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$3900(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearRequestUrlOverrides()V

    return-void
.end method

.method public static synthetic access$4000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->removeRequestUrlOverrides(I)V

    return-void
.end method

.method public static synthetic access$4100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 3

    .line 1160
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->setModules(ILgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-void
.end method

.method public static synthetic access$4200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addModules(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-void
.end method

.method public static synthetic access$4300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 3

    .line 1160
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addModules(ILgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-void
.end method

.method public static synthetic access$4400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->addAllModules(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$4500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    .line 1160
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->clearModules()V

    return-void
.end method

.method public static synthetic access$4600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V
    .registers 2

    .line 1160
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->removeModules(I)V

    return-void
.end method

.method private addAllModules(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;)V"
        }
    .end annotation

    .line 2014
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureModulesIsMutable()V

    .line 2015
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllRequestUrlOverrides(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;)V"
        }
    .end annotation

    .line 1874
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureRequestUrlOverridesIsMutable()V

    .line 1875
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllScarEligibleFormats(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;)V"
        }
    .end annotation

    .line 1697
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureScarEligibleFormatsIsMutable()V

    .line 1698
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    .line 1699
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private addAllScarEligibleFormatsValue(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1747
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureScarEligibleFormatsIsMutable()V

    .line 1748
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1749
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private addModules(ILgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 4

    .line 2001
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2002
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureModulesIsMutable()V

    .line 2003
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addModules(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 3

    .line 1988
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1989
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureModulesIsMutable()V

    .line 1990
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 4

    .line 1860
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1861
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureRequestUrlOverridesIsMutable()V

    .line 1862
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRequestUrlOverrides(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 3

    .line 1846
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1847
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureRequestUrlOverridesIsMutable()V

    .line 1848
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addScarEligibleFormats(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 3

    .line 1683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1684
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureScarEligibleFormatsIsMutable()V

    .line 1685
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addScarEligibleFormatsValue(I)V
    .registers 3

    .line 1734
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureScarEligibleFormatsIsMutable()V

    .line 1735
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearCountOfLastShownCampaigns()V
    .registers 2

    const/4 v0, 0x0

    .line 1456
    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->countOfLastShownCampaigns_:I

    return-void
.end method

.method private clearError()V
    .registers 2

    const/4 v0, 0x0

    .line 1379
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 1380
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private clearModules()V
    .registers 2

    .line 2026
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNativeConfiguration()V
    .registers 2

    const/4 v0, 0x0

    .line 1234
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 1235
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private clearRequestUrlOverrides()V
    .registers 2

    .line 1887
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearScarEligibleFormats()V
    .registers 2

    .line 1710
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearTriggerInitializationCompletedRequest()V
    .registers 2

    const/4 v0, 0x0

    .line 1418
    iput-boolean v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->triggerInitializationCompletedRequest_:Z

    return-void
.end method

.method private clearUniversalRequestUrl()V
    .registers 2

    .line 1299
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    .line 1300
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getUniversalRequestUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-void
.end method

.method private ensureModulesIsMutable()V
    .registers 3

    .line 1960
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1961
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1963
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method private ensureRequestUrlOverridesIsMutable()V
    .registers 3

    .line 1816
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1817
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1819
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method private ensureScarEligibleFormatsIsMutable()V
    .registers 3

    .line 1653
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    .line 1654
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1656
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 1

    .line 3124
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0
.end method

.method private getMutableScarPlacementsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .line 1571
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetMutableScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableScarPlacements()Lcom/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1480
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    .line 1482
    :cond_10
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .line 1475
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 4

    .line 1362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1363
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_22

    .line 1364
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 1365
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 1366
    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    goto :goto_24

    .line 1368
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 1370
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private mergeNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 4

    .line 1217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    if-eqz v0, :cond_22

    .line 1219
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 1220
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 1221
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    goto :goto_24

    .line 1223
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 1225
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 1

    .line 2117
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2120
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2093
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2100
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2056
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2063
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2105
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2112
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2087
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2043
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2050
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2068
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2075
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
            ">;"
        }
    .end annotation

    .line 3130
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeModules(I)V
    .registers 3

    .line 2036
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureModulesIsMutable()V

    .line 2037
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeRequestUrlOverrides(I)V
    .registers 3

    .line 1898
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureRequestUrlOverridesIsMutable()V

    .line 1899
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCountOfLastShownCampaigns(I)V
    .registers 2

    .line 1445
    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->countOfLastShownCampaigns_:I

    return-void
.end method

.method private setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 1349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1350
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 1351
    iget p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private setModules(ILgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 4

    .line 1976
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1977
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureModulesIsMutable()V

    .line 1978
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 2

    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1205
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 1206
    iget p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private setRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 4

    .line 1833
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1834
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureRequestUrlOverridesIsMutable()V

    .line 1835
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setScarEligibleFormats(ILgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 4

    .line 1670
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1671
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureScarEligibleFormatsIsMutable()V

    .line 1672
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setScarEligibleFormatsValue(II)V
    .registers 4

    .line 1722
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->ensureScarEligibleFormatsIsMutable()V

    .line 1723
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTriggerInitializationCompletedRequest(Z)V
    .registers 2

    .line 1407
    iput-boolean p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->triggerInitializationCompletedRequest_:Z

    return-void
.end method

.method private setUniversalRequestUrl(Ljava/lang/String;)V
    .registers 3

    .line 1287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    .line 1289
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-void
.end method

.method private setUniversalRequestUrlBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1312
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1313
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    .line 1314
    iget p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsScarPlacements(Ljava/lang/String;)Z
    .registers 3

    .line 1500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1501
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    .line 3054
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_6c

    .line 3108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object v0

    :pswitch_13
    const/4 p1, 0x1

    .line 3102
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3087
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 3089
    const-class v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    monitor-enter v1

    .line 3090
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 3092
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-direct {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3095
    sput-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 3097
    :cond_31
    :goto_31
    monitor-exit v1

    return-object p1

    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_2e

    throw p1

    :cond_35
    return-object p1

    .line 3084
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p1

    .line 3062
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "nativeConfiguration_"

    const-string v2, "universalRequestUrl_"

    const-string v3, "error_"

    const-string v4, "triggerInitializationCompletedRequest_"

    const-string v5, "countOfLastShownCampaigns_"

    const-string v6, "scarPlacements_"

    sget-object v7, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$ScarPlacementsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const-string v8, "scarEligibleFormats_"

    const-string v9, "requestUrlOverrides_"

    const-class v10, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    const-string v11, "modules_"

    const-class v12, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    .line 3077
    const-string v0, "\u0000\t\u0000\u0001\u0001\t\t\u0001\u0003\u0000\u0001\u1009\u0000\u0002\u1208\u0001\u0003\u1009\u0002\u0004\u0007\u0005\u0004\u00062\u0007,\u0008\u001b\t\u001b"

    .line 3080
    sget-object v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v1, v0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3059
    :pswitch_60
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;

    invoke-direct {p1, v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V

    return-object p1

    .line 3056
    :pswitch_66
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;-><init>()V

    return-object p1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_66
        :pswitch_60
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getCountOfLastShownCampaigns()I
    .registers 2

    .line 1433
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->countOfLastShownCampaigns_:I

    return v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    .line 1339
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getModules(I)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3

    .line 1946
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p1
.end method

.method public getModulesCount()I
    .registers 2

    .line 1935
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getModulesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getModulesOrBuilder(I)Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;
    .registers 3

    .line 1957
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;

    return-object p1
.end method

.method public getModulesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1924
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->modules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2

    .line 1194
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getRequestUrlOverrides(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3

    .line 1801
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p1
.end method

.method public getRequestUrlOverridesCount()I
    .registers 2

    .line 1789
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestUrlOverridesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation

    .line 1765
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequestUrlOverridesOrBuilder(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;
    .registers 3

    .line 1813
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;

    return-object p1
.end method

.method public getRequestUrlOverridesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1777
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->requestUrlOverrides_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getScarEligibleFormats(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 3

    .line 1622
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1623
    sget-object p1, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_e
    return-object p1
.end method

.method public getScarEligibleFormatsCount()I
    .registers 2

    .line 1609
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getScarEligibleFormatsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;"
        }
    .end annotation

    .line 1596
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getScarEligibleFormatsValue(I)I
    .registers 3

    .line 1649
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getScarEligibleFormatsValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1636
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->scarEligibleFormats_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getScarPlacements()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1509
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacementsCount()I
    .registers 2

    .line 1487
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public getScarPlacementsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .line 1522
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1521
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacementsOrDefault(Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 5

    .line 1538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1540
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1541
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    :cond_14
    return-object p2
.end method

.method public getScarPlacementsOrThrow(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 4

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1556
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1557
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1560
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    .line 1558
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getTriggerInitializationCompletedRequest()Z
    .registers 2

    .line 1395
    iget-boolean v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->triggerInitializationCompletedRequest_:Z

    return v0
.end method

.method public getUniversalRequestUrl()Ljava/lang/String;
    .registers 2

    .line 1262
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getUniversalRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1275
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .line 1328
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasNativeConfiguration()Z
    .registers 3

    .line 1183
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasUniversalRequestUrl()Z
    .registers 2

    .line 1250
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.InitializationResponse.AnonymousClass1 (gatewayprotocol.v1.InitializationResponseOuterClass$InitializationResponse$1)
.class public Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$1;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    .line 1582
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    if-nez p1, :cond_c

    .line 1583
    sget-object p1, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1579
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$1;->convert(Ljava/lang/Integer;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.InitializationResponse.Builder (gatewayprotocol.v1.InitializationResponseOuterClass$InitializationResponse$Builder)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2133
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1300()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V
    .registers 2

    .line 2126
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllModules(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;"
        }
    .end annotation

    .line 3018
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRequestUrlOverrides(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;"
        }
    .end annotation

    .line 2866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3800(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllScarEligibleFormats(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;"
        }
    .end annotation

    .line 2646
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllScarEligibleFormatsValue(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;"
        }
    .end annotation

    .line 2730
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addModules(ILgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 3004
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3005
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 3006
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    .line 3005
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public addModules(ILgatewayprotocol/v1/ModuleOuterClass$Module;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public addModules(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public addModules(Lgatewayprotocol/v1/ModuleOuterClass$Module;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public addRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2853
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    .line 2852
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public addRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2823
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2824
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public addRequestUrlOverrides(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public addRequestUrlOverrides(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public addScarEligibleFormats(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2631
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2632
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2900(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-object p0
.end method

.method public addScarEligibleFormatsValue(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V

    return-object p0
.end method

.method public clearCountOfLastShownCampaigns()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2435
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearError()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearModules()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 3030
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3031
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearNativeConfiguration()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearRequestUrlOverrides()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2879
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3900(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearScarEligibleFormats()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearScarPlacements()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearTriggerInitializationCompletedRequest()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2395
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public clearUniversalRequestUrl()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 2

    .line 2269
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2270
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1800(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public containsScarPlacements(Ljava/lang/String;)Z
    .registers 3

    .line 2456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCountOfLastShownCampaigns()I
    .registers 2

    .line 2410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getCountOfLastShownCampaigns()I

    move-result v0

    return v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    .line 2309
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getModules(I)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3

    .line 2928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getModules(I)Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object p1

    return-object p1
.end method

.method public getModulesCount()I
    .registers 2

    .line 2918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getModulesCount()I

    move-result v0

    return v0
.end method

.method public getModulesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation

    .line 2906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2907
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getModulesList()Ljava/util/List;

    move-result-object v0

    .line 2906
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2

    .line 2157
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrlOverrides(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3

    .line 2769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getRequestUrlOverrides(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    move-result-object p1

    return-object p1
.end method

.method public getRequestUrlOverridesCount()I
    .registers 2

    .line 2758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getRequestUrlOverridesCount()I

    move-result v0

    return v0
.end method

.method public getRequestUrlOverridesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation

    .line 2745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2746
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getRequestUrlOverridesList()Ljava/util/List;

    move-result-object v0

    .line 2745
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScarEligibleFormats(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 3

    .line 2603
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarEligibleFormats(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method

.method public getScarEligibleFormatsCount()I
    .registers 2

    .line 2590
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarEligibleFormatsCount()I

    move-result v0

    return v0
.end method

.method public getScarEligibleFormatsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;"
        }
    .end annotation

    .line 2578
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarEligibleFormatsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScarEligibleFormatsValue(I)I
    .registers 3

    .line 2687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarEligibleFormatsValue(I)I

    move-result p1

    return p1
.end method

.method public getScarEligibleFormatsValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2673
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2674
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarEligibleFormatsValueList()Ljava/util/List;

    move-result-object v0

    .line 2673
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacements()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2486
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacementsCount()I
    .registers 2

    .line 2443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getScarPlacementsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .line 2497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2498
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    .line 2497
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacementsOrDefault(Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 5

    .line 2514
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2516
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    .line 2517
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getScarPlacementsOrThrow(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 4

    .line 2530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2532
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    .line 2533
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2536
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    .line 2534
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getTriggerInitializationCompletedRequest()Z
    .registers 2

    .line 2370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getTriggerInitializationCompletedRequest()Z

    move-result v0

    return v0
.end method

.method public getUniversalRequestUrl()Ljava/lang/String;
    .registers 2

    .line 2230
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getUniversalRequestUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniversalRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2243
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getUniversalRequestUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .line 2298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasNativeConfiguration()Z
    .registers 2

    .line 2146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->hasNativeConfiguration()Z

    move-result v0

    return v0
.end method

.method public hasUniversalRequestUrl()Z
    .registers 2

    .line 2218
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->hasUniversalRequestUrl()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public mergeNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2192
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-object p0
.end method

.method public putAllScarPlacements(Ljava/util/Map;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;"
        }
    .end annotation

    .line 2563
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putScarPlacements(Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2549
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2550
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2551
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeModules(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 3042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4600(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V

    return-object p0
.end method

.method public removeRequestUrlOverrides(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V

    return-object p0
.end method

.method public removeScarPlacements(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2476
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCountOfLastShownCampaigns(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2422
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2423
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;I)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2319
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2000(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setModules(ILgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2952
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2954
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    .line 2953
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public setModules(ILgatewayprotocol/v1/ModuleOuterClass$Module;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$4100(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2180
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2181
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-object p0
.end method

.method public setNativeConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2168
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1400(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-object p0
.end method

.method public setRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2795
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    .line 2797
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    .line 2796
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public setRequestUrlOverrides(ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2781
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3500(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public setScarEligibleFormats(ILgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2800(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;ILgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-object p0
.end method

.method public setScarEligibleFormatsValue(II)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 4

    .line 2701
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2702
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$3200(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;II)V

    return-object p0
.end method

.method public setTriggerInitializationCompletedRequest(Z)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2382
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2383
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$2300(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Z)V

    return-object p0
.end method

.method public setUniversalRequestUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2256
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2257
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1700(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUniversalRequestUrlBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;
    .registers 3

    .line 2284
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2285
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->access$1900(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.InitializationResponse.ScarPlacementsDefaultEntryHolder (gatewayprotocol.v1.InitializationResponseOuterClass$InitializationResponse$ScarPlacementsDefaultEntryHolder)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$ScarPlacementsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScarPlacementsDefaultEntryHolder"
.end annotation


# static fields
.field public static final defaultEntry:Lcom/google/protobuf/MapEntryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapEntryLite<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1462
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    .line 1468
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    move-result-object v2

    .line 1464
    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/google/protobuf/MapEntryLite;->newDefaultInstance(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$ScarPlacementsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    return-void
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.InitializationResponseOrBuilder (gatewayprotocol.v1.InitializationResponseOuterClass$InitializationResponseOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponseOrBuilder;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializationResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract containsScarPlacements(Ljava/lang/String;)Z
.end method

.method public abstract getCountOfLastShownCampaigns()I
.end method

.method public abstract getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
.end method

.method public abstract getModules(I)Lgatewayprotocol/v1/ModuleOuterClass$Module;
.end method

.method public abstract getModulesCount()I
.end method

.method public abstract getModulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
.end method

.method public abstract getRequestUrlOverrides(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
.end method

.method public abstract getRequestUrlOverridesCount()I
.end method

.method public abstract getRequestUrlOverridesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScarEligibleFormats(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
.end method

.method public abstract getScarEligibleFormatsCount()I
.end method

.method public abstract getScarEligibleFormatsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScarEligibleFormatsValue(I)I
.end method

.method public abstract getScarEligibleFormatsValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScarPlacements()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScarPlacementsCount()I
.end method

.method public abstract getScarPlacementsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScarPlacementsOrDefault(Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
.end method

.method public abstract getScarPlacementsOrThrow(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
.end method

.method public abstract getTriggerInitializationCompletedRequest()Z
.end method

.method public abstract getUniversalRequestUrl()Ljava/lang/String;
.end method

.method public abstract getUniversalRequestUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasNativeConfiguration()Z
.end method

.method public abstract hasUniversalRequestUrl()Z
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.Placement (gatewayprotocol.v1.InitializationResponseOuterClass$Placement)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$PlacementOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adFormat_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 492
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;-><init>()V

    .line 495
    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    .line 496
    const-class v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 1

    .line 245
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;I)V
    .registers 2

    .line 245
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->setAdFormatValue(I)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 2

    .line 245
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)V
    .registers 1

    .line 245
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->clearAdFormat()V

    return-void
.end method

.method private clearAdFormat()V
    .registers 2

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 1

    .line 501
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
    .registers 1

    .line 371
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
    .registers 2

    .line 374
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 310
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 317
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 297
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 304
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 322
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 329
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .line 507
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 2

    .line 283
    invoke-virtual {p1}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return-void
.end method

.method private setAdFormatValue(I)V
    .registers 2

    .line 276
    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 444
    sget-object p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 485
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 479
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 464
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 466
    const-class p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    monitor-enter p2

    .line 467
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 469
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 472
    sput-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 474
    :cond_30
    :goto_30
    monitor-exit p2

    return-object p1

    :goto_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw p1

    :cond_34
    return-object p1

    .line 461
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    .line 452
    :pswitch_38
    const-string p1, "adFormat_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 455
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c"

    .line 457
    sget-object p3, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 449
    :pswitch_47
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V

    return-object p1

    .line 446
    :pswitch_4d
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;-><init>()V

    return-object p1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_47
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    .line 268
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    invoke-static {v0}, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->forNumber(I)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    if-nez v0, :cond_a

    .line 269
    sget-object v0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->UNRECOGNIZED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_a
    return-object v0
.end method

.method public getAdFormatValue()I
    .registers 2

    .line 260
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return v0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.Placement.Builder (gatewayprotocol.v1.InitializationResponseOuterClass$Placement$Builder)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$PlacementOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 387
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->access$000()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V
    .registers 2

    .line 380
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdFormat()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
    .registers 2

    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->access$300(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;)V

    return-object p0
.end method

.method public getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getAdFormatValue()I
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
    .registers 3

    .line 423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->access$200(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-object p0
.end method

.method public setAdFormatValue(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;
    .registers 3

    .line 405
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;->access$100(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;I)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.PlacementOrBuilder (gatewayprotocol.v1.InitializationResponseOuterClass$PlacementOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/InitializationResponseOuterClass$PlacementOrBuilder;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlacementOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
.end method

.method public abstract getAdFormatValue()I
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.RequestType (gatewayprotocol.v1.InitializationResponseOuterClass$RequestType)
.class public final enum Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
.super Ljava/lang/Enum;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$RequestTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final enum REQUEST_TYPE_AD:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final enum REQUEST_TYPE_AD_DATA_REFRESH:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_AD_DATA_REFRESH_VALUE:I = 0x8

.field public static final enum REQUEST_TYPE_AD_PLAYER_CONFIG:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_AD_PLAYER_CONFIG_VALUE:I = 0x5

.field public static final enum REQUEST_TYPE_AD_REVENUE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_AD_REVENUE_EVENT_VALUE:I = 0xa

.field public static final REQUEST_TYPE_AD_VALUE:I = 0x2

.field public static final enum REQUEST_TYPE_AD_VIEWER:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_AD_VIEWER_VALUE:I = 0xe

.field public static final enum REQUEST_TYPE_DIAGNOSTIC_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_DIAGNOSTIC_EVENT_VALUE:I = 0x4

.field public static final enum REQUEST_TYPE_GET_TOKEN_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_GET_TOKEN_EVENT_VALUE:I = 0x6

.field public static final enum REQUEST_TYPE_INITIALIZATION_COMPLETED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_INITIALIZATION_COMPLETED_VALUE:I = 0x1

.field public static final enum REQUEST_TYPE_LIFECYCLE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_LIFECYCLE_EVENT_VALUE:I = 0xc

.field public static final enum REQUEST_TYPE_MONITORING_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_MONITORING_EVENT_VALUE:I = 0xb

.field public static final enum REQUEST_TYPE_OPERATIVE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_OPERATIVE_EVENT_VALUE:I = 0x3

.field public static final enum REQUEST_TYPE_PRIVACY_UPDATE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_PRIVACY_UPDATE_VALUE:I = 0x7

.field public static final enum REQUEST_TYPE_REWARDED_OFFERS:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REQUEST_TYPE_REWARDED_OFFERS_VALUE:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum REQUEST_TYPE_TRANSACTION_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_TRANSACTION_EVENT_VALUE:I = 0x9

.field public static final enum REQUEST_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field public static final REQUEST_TYPE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 17

    .line 15
    sget-object v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v2, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_INITIALIZATION_COMPLETED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v4, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_OPERATIVE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v5, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_DIAGNOSTIC_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v6, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_PLAYER_CONFIG:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v7, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_GET_TOKEN_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v8, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_PRIVACY_UPDATE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v9, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_DATA_REFRESH:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v10, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_TRANSACTION_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v11, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_REVENUE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v12, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_MONITORING_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v13, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_LIFECYCLE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v14, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_REWARDED_OFFERS:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v15, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_VIEWER:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    sget-object v16, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->UNRECOGNIZED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    filled-new-array/range {v1 .. v16}, [Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 20
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 24
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_INITIALIZATION_COMPLETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_INITIALIZATION_COMPLETED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 28
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_AD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 32
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_OPERATIVE_EVENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_OPERATIVE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 36
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_DIAGNOSTIC_EVENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_DIAGNOSTIC_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 40
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_AD_PLAYER_CONFIG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_PLAYER_CONFIG:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 44
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_GET_TOKEN_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_GET_TOKEN_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 48
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_PRIVACY_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_PRIVACY_UPDATE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 52
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_AD_DATA_REFRESH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_DATA_REFRESH:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 56
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_TRANSACTION_EVENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_TRANSACTION_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 60
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_AD_REVENUE_EVENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_REVENUE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 64
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_MONITORING_EVENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_MONITORING_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 68
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_LIFECYCLE_EVENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_LIFECYCLE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 76
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_REWARDED_OFFERS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_REWARDED_OFFERS:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 81
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const-string v1, "REQUEST_TYPE_AD_VIEWER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_VIEWER:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 82
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    const/16 v1, 0xf

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->UNRECOGNIZED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 15
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->$values()[Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->$VALUES:[Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    .line 196
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p3, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 1

    packed-switch p0, :pswitch_data_32

    const/4 p0, 0x0

    return-object p0

    .line 186
    :pswitch_5
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_VIEWER:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 185
    :pswitch_8
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_REWARDED_OFFERS:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 184
    :pswitch_b
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_LIFECYCLE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 183
    :pswitch_e
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_MONITORING_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 182
    :pswitch_11
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_REVENUE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 181
    :pswitch_14
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_TRANSACTION_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 180
    :pswitch_17
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_DATA_REFRESH:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 179
    :pswitch_1a
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_PRIVACY_UPDATE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 178
    :pswitch_1d
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_GET_TOKEN_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 177
    :pswitch_20
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD_PLAYER_CONFIG:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 176
    :pswitch_23
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_DIAGNOSTIC_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 175
    :pswitch_26
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_OPERATIVE_EVENT:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 174
    :pswitch_29
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_AD:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 173
    :pswitch_2c
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_INITIALIZATION_COMPLETED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    .line 172
    :pswitch_2f
    sget-object p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->REQUEST_TYPE_UNSPECIFIED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;",
            ">;"
        }
    .end annotation

    .line 193
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 206
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$RequestTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-static {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->forNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 2

    .line 15
    const-class v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 1

    .line 15
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->$VALUES:[Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 153
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->UNRECOGNIZED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    if-eq p0, v0, :cond_7

    .line 157
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->value:I

    return v0

    .line 154
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.RequestType.AnonymousClass1 (gatewayprotocol.v1.InitializationResponseOuterClass$RequestType$1)
.class public Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$1;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 197
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$1;->findValueByNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 2

    .line 200
    invoke-static {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->forNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.RequestType.RequestTypeVerifier (gatewayprotocol.v1.InitializationResponseOuterClass$RequestType$RequestTypeVerifier)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$RequestTypeVerifier;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestTypeVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 211
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$RequestTypeVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$RequestTypeVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType$RequestTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 214
    invoke-static {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->forNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.RequestUrlOverride (gatewayprotocol.v1.InitializationResponseOuterClass$RequestUrlOverride)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestUrlOverride"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TYPE_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private requestType_:I

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 887
    new-instance v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;-><init>()V

    .line 890
    sput-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    .line 891
    const-class v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 1

    .line 541
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->clearUrl()V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 1

    .line 541
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object v0
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;I)V
    .registers 2

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setRequestTypeValue(I)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V
    .registers 2

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V
    .registers 1

    .line 541
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->clearRequestType()V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Ljava/lang/String;)V
    .registers 2

    .line 541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private clearRequestType()V
    .registers 2

    const/4 v0, 0x0

    .line 588
    iput v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return-void
.end method

.method private clearUrl()V
    .registers 2

    .line 625
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 1

    .line 896
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 1

    .line 715
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 2

    .line 718
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 661
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 666
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 673
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
            ">;"
        }
    .end annotation

    .line 902
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V
    .registers 2

    .line 580
    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return-void
.end method

.method private setRequestTypeValue(I)V
    .registers 2

    .line 573
    iput p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .registers 2

    .line 616
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 633
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 634
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 837
    sget-object p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_56

    .line 880
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 874
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 859
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 861
    const-class p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    monitor-enter p2

    .line 862
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 864
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 867
    sput-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 869
    :cond_30
    :goto_30
    monitor-exit p2

    return-object p1

    :goto_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw p1

    :cond_34
    return-object p1

    .line 856
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object p1

    .line 845
    :pswitch_38
    const-string p1, "requestType_"

    const-string p2, "url_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 849
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u0208"

    .line 852
    sget-object p3, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 842
    :pswitch_49
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V

    return-object p1

    .line 839
    :pswitch_4f
    new-instance p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;-><init>()V

    return-object p1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 2

    .line 565
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->forNumber(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 566
    sget-object v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;->UNRECOGNIZED:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    :cond_a
    return-object v0
.end method

.method public getRequestTypeValue()I
    .registers 2

    .line 557
    iget v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->requestType_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 599
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 608
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->url_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.RequestUrlOverride.Builder (gatewayprotocol.v1.InitializationResponseOuterClass$RequestUrlOverride$Builder)
.class public final Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 731
    invoke-static {}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$500()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$1;)V
    .registers 2

    .line 724
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 2

    .line 776
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$800(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public clearUrl()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 2

    .line 814
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$1000(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;)V

    return-object p0
.end method

.method public getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 2

    .line 759
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTypeValue()I
    .registers 2

    .line 741
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getRequestTypeValue()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 3

    .line 767
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$700(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V

    return-object p0
.end method

.method public setRequestTypeValue(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 3

    .line 749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$600(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;I)V

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 3

    .line 805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$900(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;
    .registers 3

    .line 825
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;->access$1100(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.InitializationResponseOuterClass.RequestUrlOverrideOrBuilder (gatewayprotocol.v1.InitializationResponseOuterClass$RequestUrlOverrideOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverrideOrBuilder;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestUrlOverrideOrBuilder"
.end annotation


# virtual methods
.method public abstract getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
.end method

.method public abstract getRequestTypeValue()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/google/protobuf/ByteString;
.end method
