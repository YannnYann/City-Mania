###### Class gatewayprotocol.v1.PiiOuterClass (gatewayprotocol.v1.PiiOuterClass)
.class public final Lgatewayprotocol/v1/PiiOuterClass;
.super Ljava/lang/Object;
.source "PiiOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiOuterClass$Pii;,
        Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;
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

###### Class gatewayprotocol.v1.PiiOuterClass.AnonymousClass1 (gatewayprotocol.v1.PiiOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/PiiOuterClass$1;
.super Ljava/lang/Object;
.source "PiiOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiOuterClass;
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

    .line 789
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.PiiOuterClass.Pii (gatewayprotocol.v1.PiiOuterClass$Pii)
.class public final Lgatewayprotocol/v1/PiiOuterClass$Pii;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PiiOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pii"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;",
        ">;",
        "Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADVERTISING_ID_FIELD_NUMBER:I = 0x1

.field public static final APPSET_ID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

.field public static final FID_FIELD_NUMBER:I = 0x4

.field public static final OPEN_ADVERTISING_TRACKING_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
            ">;"
        }
    .end annotation
.end field

.field public static final VENDOR_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private advertisingId_:Lcom/google/protobuf/ByteString;

.field private appsetId_:Ljava/lang/String;

.field private bitField0_:I

.field private fid_:Ljava/lang/String;

.field private openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

.field private vendorId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 843
    new-instance v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-direct {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;-><init>()V

    .line 846
    sput-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    .line 847
    const-class v1, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 117
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    .line 118
    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    .line 119
    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 1

    .line 111
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setAdvertisingId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1000(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setAppsetId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearAppsetId()V

    return-void
.end method

.method public static synthetic access$1200(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setAppsetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearAdvertisingId()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setVendorId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearVendorId()V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearOpenAdvertisingTrackingId()V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setFid(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearFid()V

    return-void
.end method

.method public static synthetic access$900(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setFidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAdvertisingId()V
    .registers 2

    .line 160
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAppsetId()V
    .registers 2

    .line 381
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 382
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAppsetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-void
.end method

.method private clearFid()V
    .registers 2

    .line 302
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 303
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getFid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    return-void
.end method

.method private clearOpenAdvertisingTrackingId()V
    .registers 2

    .line 238
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearVendorId()V
    .registers 2

    .line 199
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getVendorId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 1

    .line 852
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 1

    .line 476
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/PiiOuterClass$Pii;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 2

    .line 479
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 415
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 422
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 402
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 427
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 434
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
            ">;"
        }
    .end annotation

    .line 858
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdvertisingId(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setAppsetId(Ljava/lang/String;)V
    .registers 3

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 371
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-void
.end method

.method private setAppsetIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 394
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 395
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    .line 396
    iget p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    return-void
.end method

.method private setFid(Ljava/lang/String;)V
    .registers 3

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 292
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    return-void
.end method

.method private setFidBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 315
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 316
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    .line 317
    iget p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    return-void
.end method

.method private setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setVendorId(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 789
    sget-object p2, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 836
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 830
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 815
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 817
    const-class p2, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    monitor-enter p2

    .line 818
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 820
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 823
    sput-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 825
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

    .line 812
    :pswitch_36
    sget-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p1

    .line 797
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "advertisingId_"

    const-string v2, "vendorId_"

    const-string v3, "openAdvertisingTrackingId_"

    const-string v4, "fid_"

    const-string v5, "appsetId_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 805
    const-string p2, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\u1208\u0000\u0005\u1208\u0001"

    .line 808
    sget-object p3, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 794
    :pswitch_52
    new-instance p1, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;-><init>(Lgatewayprotocol/v1/PiiOuterClass$1;)V

    return-object p1

    .line 791
    :pswitch_58
    new-instance p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-direct {p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;-><init>()V

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

.method public getAdvertisingId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 136
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAppsetId()Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsetIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 357
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFidBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 278
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 214
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVendorId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAppsetId()Z
    .registers 2

    .line 332
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasFid()Z
    .registers 3

    .line 253
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.PiiOuterClass.Pii.Builder (gatewayprotocol.v1.PiiOuterClass$Pii$Builder)
.class public final Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PiiOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiOuterClass$Pii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;",
        ">;",
        "Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 496
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$000()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$1;)V
    .registers 2

    .line 489
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdvertisingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 2

    .line 535
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 536
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$200(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearAppsetId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 2

    .line 762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$1100(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearFid()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 2

    .line 681
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$800(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearOpenAdvertisingTrackingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 2

    .line 615
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$600(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearVendorId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 2

    .line 575
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$400(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public getAdvertisingId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppsetId()Ljava/lang/String;
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAppsetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppsetIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAppsetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getFid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFidBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getFidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVendorId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getVendorId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAppsetId()Z
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->hasAppsetId()Z

    move-result v0

    return v0
.end method

.method public hasFid()Z
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->hasFid()Z

    move-result v0

    return v0
.end method

.method public setAdvertisingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$100(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAppsetId(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$1000(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppsetIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 777
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$1200(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFid(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 668
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$700(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFidBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$900(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 602
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$500(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVendorId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .registers 3

    .line 562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$300(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.PiiOuterClass.PiiOrBuilder (gatewayprotocol.v1.PiiOuterClass$PiiOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;
.super Ljava/lang/Object;
.source "PiiOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PiiOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdvertisingId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAppsetId()Ljava/lang/String;
.end method

.method public abstract getAppsetIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFid()Ljava/lang/String;
.end method

.method public abstract getFidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVendorId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAppsetId()Z
.end method

.method public abstract hasFid()Z
.end method
