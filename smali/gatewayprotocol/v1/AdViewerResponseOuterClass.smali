###### Class gatewayprotocol.v1.AdViewerResponseOuterClass (gatewayprotocol.v1.AdViewerResponseOuterClass)
.class public final Lgatewayprotocol/v1/AdViewerResponseOuterClass;
.super Ljava/lang/Object;
.source "AdViewerResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;,
        Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;
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

###### Class gatewayprotocol.v1.AdViewerResponseOuterClass.AnonymousClass1 (gatewayprotocol.v1.AdViewerResponseOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;
.super Ljava/lang/Object;
.source "AdViewerResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseOuterClass;
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

    .line 473
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponse (gatewayprotocol.v1.AdViewerResponseOuterClass$AdViewerResponse)
.class public final Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AdViewerResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewerResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x1

.field public static final PAYLOAD_VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

.field private payloadVersion_:I

.field private payload_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 525
    new-instance v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;-><init>()V

    .line 528
    sput-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    .line 529
    const-class v1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 68
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 1

    .line 62
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->clearPayload()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;I)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->setPayloadVersion(I)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->clearPayloadVersion()V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->clearError()V

    return-void
.end method

.method private clearError()V
    .registers 2

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 211
    iget v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    return-void
.end method

.method private clearPayload()V
    .registers 2

    .line 107
    invoke-static {}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getDefaultInstance()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPayloadVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payloadVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 1

    .line 534
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object v0
.end method

.method private mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 4

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_22

    .line 195
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 196
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 197
    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    goto :goto_24

    .line 199
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 201
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 1

    .line 291
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 2

    .line 294
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 249
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
            ">;"
        }
    .end annotation

    .line 540
    sget-object v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 2

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 182
    iget p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPayloadVersion(I)V
    .registers 2

    .line 134
    iput p1, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payloadVersion_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 473
    sget-object p2, Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 518
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 512
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 497
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 499
    const-class p2, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    monitor-enter p2

    .line 500
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 502
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 505
    sput-object p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 507
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

    .line 494
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object p1

    .line 481
    :pswitch_38
    const-string p1, "bitField0_"

    const-string p2, "payload_"

    const-string p3, "payloadVersion_"

    const-string v0, "error_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 487
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0004\u0003\u1009\u0000"

    .line 490
    sget-object p3, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 478
    :pswitch_4d
    new-instance p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;-><init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;)V

    return-object p1

    .line 475
    :pswitch_53
    new-instance p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-direct {p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    .line 170
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_8

    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayloadVersion()I
    .registers 2

    .line 122
    iget v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->payloadVersion_:I

    return v0
.end method

.method public hasError()Z
    .registers 3

    .line 159
    iget v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponse.Builder (gatewayprotocol.v1.AdViewerResponseOuterClass$AdViewerResponse$Builder)
.class public final Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdViewerResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 311
    invoke-static {}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$000()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;)V
    .registers 2

    .line 304
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 2

    .line 461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$700(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public clearPayload()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 2

    .line 350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$200(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public clearPayloadVersion()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 2

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$400(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadVersion()I
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getPayloadVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 3

    .line 450
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$600(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 3

    .line 438
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$500(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 3

    .line 425
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$500(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 3

    .line 337
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$100(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayloadVersion(I)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .registers 3

    .line 377
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$300(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;I)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponseOrBuilder (gatewayprotocol.v1.AdViewerResponseOuterClass$AdViewerResponseOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;
.super Ljava/lang/Object;
.source "AdViewerResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdViewerResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
.end method

.method public abstract getPayload()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPayloadVersion()I
.end method

.method public abstract hasError()Z
.end method
