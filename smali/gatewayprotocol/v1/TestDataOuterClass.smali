###### Class gatewayprotocol.v1.TestDataOuterClass (gatewayprotocol.v1.TestDataOuterClass)
.class public final Lgatewayprotocol/v1/TestDataOuterClass;
.super Ljava/lang/Object;
.source "TestDataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TestDataOuterClass$TestData;,
        Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;
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

###### Class gatewayprotocol.v1.TestDataOuterClass.AnonymousClass1 (gatewayprotocol.v1.TestDataOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/TestDataOuterClass$1;
.super Ljava/lang/Object;
.source "TestDataOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataOuterClass;
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

    .line 882
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.TestDataOuterClass.TestData (gatewayprotocol.v1.TestDataOuterClass$TestData)
.class public final Lgatewayprotocol/v1/TestDataOuterClass$TestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TestDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

.field public static final FORCE_CAMPAIGN_ID_FIELD_NUMBER:I = 0x1

.field public static final FORCE_COUNTRY_FIELD_NUMBER:I = 0x2

.field public static final FORCE_COUNTRY_SUBDIVISION_FIELD_NUMBER:I = 0x3

.field public static final FORCE_EXCHANGE_TEST_MODE_FIELD_NUMBER:I = 0x4

.field public static final FORCE_GEO_KEY_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private forceCampaignId_:Ljava/lang/String;

.field private forceCountrySubdivision_:Ljava/lang/String;

.field private forceCountry_:Ljava/lang/String;

.field private forceExchangeTestMode_:I

.field private forceGeoKey_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 936
    new-instance v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-direct {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;-><init>()V

    .line 939
    sput-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    .line 940
    const-class v1, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCampaignId_:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountry_:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountrySubdivision_:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceGeoKey_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 1

    .line 128
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceCampaignId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/TestDataOuterClass$TestData;I)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceExchangeTestMode(I)V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->clearForceExchangeTestMode()V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceGeoKey(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->clearForceGeoKey()V

    return-void
.end method

.method public static synthetic access$1400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceGeoKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->clearForceCampaignId()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceCampaignIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceCountry(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->clearForceCountry()V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceCountryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceCountrySubdivision(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->clearForceCountrySubdivision()V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->setForceCountrySubdivisionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearForceCampaignId()V
    .registers 2

    .line 181
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 182
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getDefaultInstance()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCampaignId_:Ljava/lang/String;

    return-void
.end method

.method private clearForceCountry()V
    .registers 2

    .line 236
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 237
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getDefaultInstance()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountry_:Ljava/lang/String;

    return-void
.end method

.method private clearForceCountrySubdivision()V
    .registers 2

    .line 291
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 292
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getDefaultInstance()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivision()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountrySubdivision_:Ljava/lang/String;

    return-void
.end method

.method private clearForceExchangeTestMode()V
    .registers 2

    .line 371
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    const/4 v0, 0x0

    .line 372
    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceExchangeTestMode_:I

    return-void
.end method

.method private clearForceGeoKey()V
    .registers 2

    .line 436
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 437
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getDefaultInstance()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceGeoKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceGeoKey_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 1

    .line 945
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 1

    .line 531
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 2

    .line 534
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 477
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 457
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 464
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 482
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 489
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
            ">;"
        }
    .end annotation

    .line 951
    sget-object v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setForceCampaignId(Ljava/lang/String;)V
    .registers 3

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 175
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCampaignId_:Ljava/lang/String;

    return-void
.end method

.method private setForceCampaignIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 190
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 191
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCampaignId_:Ljava/lang/String;

    .line 192
    iget p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    return-void
.end method

.method private setForceCountry(Ljava/lang/String;)V
    .registers 3

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 230
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountry_:Ljava/lang/String;

    return-void
.end method

.method private setForceCountryBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 245
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 246
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountry_:Ljava/lang/String;

    .line 247
    iget p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    return-void
.end method

.method private setForceCountrySubdivision(Ljava/lang/String;)V
    .registers 3

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 285
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountrySubdivision_:Ljava/lang/String;

    return-void
.end method

.method private setForceCountrySubdivisionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 300
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 301
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountrySubdivision_:Ljava/lang/String;

    .line 302
    iget p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    return-void
.end method

.method private setForceExchangeTestMode(I)V
    .registers 3

    .line 355
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 356
    iput p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceExchangeTestMode_:I

    return-void
.end method

.method private setForceGeoKey(Ljava/lang/String;)V
    .registers 3

    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    .line 426
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceGeoKey_:Ljava/lang/String;

    return-void
.end method

.method private setForceGeoKeyBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 449
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 450
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceGeoKey_:Ljava/lang/String;

    .line 451
    iget p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 882
    sget-object p2, Lgatewayprotocol/v1/TestDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 929
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 923
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 908
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 910
    const-class p2, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    monitor-enter p2

    .line 911
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 913
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 916
    sput-object p1, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 918
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

    .line 905
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    return-object p1

    .line 890
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "forceCampaignId_"

    const-string v2, "forceCountry_"

    const-string v3, "forceCountrySubdivision_"

    const-string v4, "forceExchangeTestMode_"

    const-string v5, "forceGeoKey_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 898
    const-string p2, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1208\u0000\u0002\u1208\u0001\u0003\u1208\u0002\u0004\u100b\u0003\u0005\u1208\u0004"

    .line 901
    sget-object p3, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 887
    :pswitch_52
    new-instance p1, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;-><init>(Lgatewayprotocol/v1/TestDataOuterClass$1;)V

    return-object p1

    .line 884
    :pswitch_58
    new-instance p1, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-direct {p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getForceCampaignId()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCampaignId_:Ljava/lang/String;

    return-object v0
.end method

.method public getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 165
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCampaignId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountry()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getForceCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 220
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountry_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivision()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountrySubdivision_:Ljava/lang/String;

    return-object v0
.end method

.method public getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 275
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceCountrySubdivision_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceExchangeTestMode()I
    .registers 2

    .line 339
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceExchangeTestMode_:I

    return v0
.end method

.method public getForceGeoKey()Ljava/lang/String;
    .registers 2

    .line 399
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceGeoKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getForceGeoKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 412
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->forceGeoKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasForceCampaignId()Z
    .registers 3

    .line 148
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasForceCountry()Z
    .registers 2

    .line 203
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasForceCountrySubdivision()Z
    .registers 2

    .line 258
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasForceExchangeTestMode()Z
    .registers 2

    .line 322
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasForceGeoKey()Z
    .registers 2

    .line 387
    iget v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.TestDataOuterClass.TestData.Builder (gatewayprotocol.v1.TestDataOuterClass$TestData$Builder)
.class public final Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataOuterClass$TestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 547
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$000()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$1;)V
    .registers 2

    .line 540
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearForceCampaignId()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 2

    .line 592
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceCountry()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 2

    .line 649
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 650
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$500(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceCountrySubdivision()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 2

    .line 706
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 707
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$800(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceExchangeTestMode()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 2

    .line 789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceGeoKey()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 2

    .line 855
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public getForceCampaignId()Ljava/lang/String;
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountry()Ljava/lang/String;
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivision()Ljava/lang/String;
    .registers 2

    .line 679
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceExchangeTestMode()I
    .registers 2

    .line 754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceExchangeTestMode()I

    move-result v0

    return v0
.end method

.method public getForceGeoKey()Ljava/lang/String;
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceGeoKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceGeoKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceGeoKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasForceCampaignId()Z
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCampaignId()Z

    move-result v0

    return v0
.end method

.method public hasForceCountry()Z
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCountry()Z

    move-result v0

    return v0
.end method

.method public hasForceCountrySubdivision()Z
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCountrySubdivision()Z

    move-result v0

    return v0
.end method

.method public hasForceExchangeTestMode()Z
    .registers 2

    .line 737
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceExchangeTestMode()Z

    move-result v0

    return v0
.end method

.method public hasForceGeoKey()Z
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceGeoKey()Z

    move-result v0

    return v0
.end method

.method public setForceCampaignId(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 583
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 584
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCampaignIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceCountry(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 640
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCountryBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 660
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$600(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceCountrySubdivision(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$700(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCountrySubdivisionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$900(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceExchangeTestMode(I)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1000(Lgatewayprotocol/v1/TestDataOuterClass$TestData;I)V

    return-object p0
.end method

.method public setForceGeoKey(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 842
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceGeoKeyBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .registers 3

    .line 870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.TestDataOuterClass.TestDataOrBuilder (gatewayprotocol.v1.TestDataOuterClass$TestDataOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;
.super Ljava/lang/Object;
.source "TestDataOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TestDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getForceCampaignId()Ljava/lang/String;
.end method

.method public abstract getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getForceCountry()Ljava/lang/String;
.end method

.method public abstract getForceCountryBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getForceCountrySubdivision()Ljava/lang/String;
.end method

.method public abstract getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getForceExchangeTestMode()I
.end method

.method public abstract getForceGeoKey()Ljava/lang/String;
.end method

.method public abstract getForceGeoKeyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasForceCampaignId()Z
.end method

.method public abstract hasForceCountry()Z
.end method

.method public abstract hasForceCountrySubdivision()Z
.end method

.method public abstract hasForceExchangeTestMode()Z
.end method

.method public abstract hasForceGeoKey()Z
.end method
