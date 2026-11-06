###### Class gatewayprotocol.v1.ErrorOuterClass (gatewayprotocol.v1.ErrorOuterClass)
.class public final Lgatewayprotocol/v1/ErrorOuterClass;
.super Ljava/lang/Object;
.source "ErrorOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ErrorOuterClass$Error;,
        Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;,
        Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
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

###### Class gatewayprotocol.v1.ErrorOuterClass.AnonymousClass1 (gatewayprotocol.v1.ErrorOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/ErrorOuterClass$1;
.super Ljava/lang/Object;
.source "ErrorOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass;
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

    .line 939
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.ErrorOuterClass.Error (gatewayprotocol.v1.ErrorOuterClass$Error)
.class public final Lgatewayprotocol/v1/ErrorOuterClass$Error;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ErrorOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x3

.field public static final ERROR_TEXT_FIELD_NUMBER:I = 0x2

.field public static final ERROR_TOKEN_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode_:I

.field private errorText_:Ljava/lang/String;

.field private errorToken_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 990
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-direct {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;-><init>()V

    .line 993
    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 994
    const-class v1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 482
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    .line 484
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 1

    .line 477
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/ErrorOuterClass$Error;Ljava/lang/String;)V
    .registers 2

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 1

    .line 477
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->clearErrorText()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/ErrorOuterClass$Error;I)V
    .registers 2

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorCodeValue(I)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V
    .registers 2

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 1

    .line 477
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->clearErrorCode()V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 477
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->setErrorToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$800(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 1

    .line 477
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->clearErrorToken()V

    return-void
.end method

.method private clearErrorCode()V
    .registers 2

    const/4 v0, 0x0

    .line 612
    iput v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return-void
.end method

.method private clearErrorText()V
    .registers 2

    .line 536
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-void
.end method

.method private clearErrorToken()V
    .registers 2

    .line 651
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 1

    .line 999
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 1

    .line 731
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 2

    .line 734
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 670
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 677
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 657
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 664
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 682
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 689
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
            ">;"
        }
    .end annotation

    .line 1005
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V
    .registers 2

    .line 600
    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return-void
.end method

.method private setErrorCodeValue(I)V
    .registers 2

    .line 589
    iput p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return-void
.end method

.method private setErrorText(Ljava/lang/String;)V
    .registers 2

    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    iput-object p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-void
.end method

.method private setErrorTextBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 548
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-void
.end method

.method private setErrorToken(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 638
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    iput-object p1, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 939
    sget-object p2, Lgatewayprotocol/v1/ErrorOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_58

    .line 983
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 977
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 962
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 964
    const-class p2, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    monitor-enter p2

    .line 965
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 967
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 970
    sput-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 972
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

    .line 959
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object p1

    .line 947
    :pswitch_38
    const-string p1, "errorText_"

    const-string p2, "errorCode_"

    const-string p3, "errorToken_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 952
    const-string p2, "\u0000\u0003\u0000\u0000\u0002\u0004\u0003\u0000\u0000\u0000\u0002\u0208\u0003\u000c\u0004\n"

    .line 955
    sget-object p3, Lgatewayprotocol/v1/ErrorOuterClass$Error;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 944
    :pswitch_4b
    new-instance p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$1;)V

    return-object p1

    .line 941
    :pswitch_51
    new-instance p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-direct {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;-><init>()V

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 577
    iget v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 578
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->UNRECOGNIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    :cond_a
    return-object v0
.end method

.method public getErrorCodeValue()I
    .registers 2

    .line 565
    iget v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorCode_:I

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .registers 2

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTextBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 511
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorText_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 627
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error;->errorToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

###### Class gatewayprotocol.v1.ErrorOuterClass.Error.Builder (gatewayprotocol.v1.ErrorOuterClass$Error$Builder)
.class public final Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ErrorOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 753
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$000()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ErrorOuterClass$1;)V
    .registers 2

    .line 746
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 2

    .line 887
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$600(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public clearErrorText()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 2

    .line 806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$200(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public clearErrorToken()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 2

    .line 927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$800(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCodeValue()I
    .registers 2

    .line 836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCodeValue()I

    move-result v0

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorTextBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 902
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 3

    .line 874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$500(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V

    return-object p0
.end method

.method public setErrorCodeValue(I)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 3

    .line 848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$400(Lgatewayprotocol/v1/ErrorOuterClass$Error;I)V

    return-object p0
.end method

.method public setErrorText(Ljava/lang/String;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 3

    .line 793
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$100(Lgatewayprotocol/v1/ErrorOuterClass$Error;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorTextBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 3

    .line 821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$300(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .registers 3

    .line 914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$700(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.ErrorOuterClass.ErrorOrBuilder (gatewayprotocol.v1.ErrorOuterClass$ErrorOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;
.super Ljava/lang/Object;
.source "ErrorOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorOrBuilder"
.end annotation


# virtual methods
.method public abstract getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
.end method

.method public abstract getErrorCodeValue()I
.end method

.method public abstract getErrorText()Ljava/lang/String;
.end method

.method public abstract getErrorTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getErrorToken()Lcom/google/protobuf/ByteString;
.end method

###### Class gatewayprotocol.v1.ErrorOuterClass.PublicErrorCode (gatewayprotocol.v1.ErrorOuterClass$PublicErrorCode)
.class public final enum Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
.super Ljava/lang/Enum;
.source "ErrorOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublicErrorCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final enum PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM_VALUE:I = 0xcb26

.field public static final enum PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM_VALUE:I = 0xcb24

.field public static final enum PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM_VALUE:I = 0xcb22

.field public static final enum PUBLIC_ERROR_CODE_INIT_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_NETWORK_VALUE:I = 0xcb25

.field public static final enum PUBLIC_ERROR_CODE_INIT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_NOT_FOUND_VALUE:I = 0xcb21

.field public static final enum PUBLIC_ERROR_CODE_INIT_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_PROTO_VALUE:I = 0xcb23

.field public static final enum PUBLIC_ERROR_CODE_INIT_UNKNOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_INIT_UNKNOWN_VALUE:I = 0xcb20

.field public static final enum PUBLIC_ERROR_CODE_LOAD_ADVIEWER:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_ADVIEWER_VALUE:I = 0xcb8b

.field public static final enum PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM_VALUE:I = 0xcb8a

.field public static final enum PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_NETWORK_VALUE:I = 0xcb89

.field public static final enum PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED_VALUE:I = 0xcb85

.field public static final enum PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_NO_FILL_VALUE:I = 0xcb84

.field public static final enum PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND_VALUE:I = 0xcb86

.field public static final enum PUBLIC_ERROR_CODE_LOAD_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_PROTO_VALUE:I = 0xcb87

.field public static final enum PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT_VALUE:I = 0xcb88

.field public static final enum PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN_VALUE:I = 0xcbe9

.field public static final enum PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_SHOW_EXPIRED_VALUE:I = 0xcbe8

.field public static final enum PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_SHOW_INTERNAL_VALUE:I = 0xcbea

.field public static final enum PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_TIMEOUT_VALUE:I = 0x2

.field public static final enum PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field public static final PUBLIC_ERROR_CODE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 22

    .line 15
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v2, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v3, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_UNKNOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v4, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v5, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v6, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v7, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v8, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v9, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v10, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v11, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v12, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v13, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v14, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v15, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v16, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v17, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_ADVIEWER:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v18, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v19, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v20, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    sget-object v21, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->UNRECOGNIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    filled-new-array/range {v1 .. v21}, [Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 20
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const-string v1, "PUBLIC_ERROR_CODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 28
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const-string v1, "PUBLIC_ERROR_CODE_TIMEOUT"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 36
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const-string v1, "PUBLIC_ERROR_CODE_INIT_UNKNOWN"

    const v2, 0xcb20

    invoke-direct {v0, v1, v3, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_UNKNOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 44
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/4 v1, 0x3

    const v2, 0xcb21

    const-string v3, "PUBLIC_ERROR_CODE_INIT_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 52
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/4 v1, 0x4

    const v2, 0xcb22

    const-string v3, "PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 60
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/4 v1, 0x5

    const v2, 0xcb23

    const-string v3, "PUBLIC_ERROR_CODE_INIT_PROTO"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 68
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/4 v1, 0x6

    const v2, 0xcb24

    const-string v3, "PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 76
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/4 v1, 0x7

    const v2, 0xcb25

    const-string v3, "PUBLIC_ERROR_CODE_INIT_NETWORK"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 84
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x8

    const v2, 0xcb26

    const-string v3, "PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 92
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x9

    const v2, 0xcb84

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_NO_FILL"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 100
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0xa

    const v2, 0xcb85

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 108
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0xb

    const v2, 0xcb86

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 116
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0xc

    const v2, 0xcb87

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_PROTO"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 124
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0xd

    const v2, 0xcb88

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 132
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0xe

    const v2, 0xcb89

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_NETWORK"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 140
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0xf

    const v2, 0xcb8a

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 148
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x10

    const v2, 0xcb8b

    const-string v3, "PUBLIC_ERROR_CODE_LOAD_ADVIEWER"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_ADVIEWER:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 156
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x11

    const v2, 0xcbe8

    const-string v3, "PUBLIC_ERROR_CODE_SHOW_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 164
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x12

    const v2, 0xcbe9

    const-string v3, "PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 172
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x13

    const v2, 0xcbea

    const-string v3, "PUBLIC_ERROR_CODE_SHOW_INTERNAL"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 173
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v1, 0x14

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->UNRECOGNIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 15
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->$values()[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->$VALUES:[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 384
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput p3, p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    if-eqz p0, :cond_49

    const/4 v0, 0x2

    if-eq p0, v0, :cond_46

    packed-switch p0, :pswitch_data_4c

    packed-switch p0, :pswitch_data_5e

    packed-switch p0, :pswitch_data_72

    const/4 p0, 0x0

    return-object p0

    .line 374
    :pswitch_10
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 373
    :pswitch_13
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 372
    :pswitch_16
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_EXPIRED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 371
    :pswitch_19
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_ADVIEWER:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 370
    :pswitch_1c
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 369
    :pswitch_1f
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 368
    :pswitch_22
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_UNSUPPORTED_PLACEMENT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 367
    :pswitch_25
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 366
    :pswitch_28
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_PLACEMENT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 365
    :pswitch_2b
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 364
    :pswitch_2e
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 363
    :pswitch_31
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_FILE_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 362
    :pswitch_34
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 361
    :pswitch_37
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_INTERNAL_SYSTEM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 360
    :pswitch_3a
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_PROTO:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 359
    :pswitch_3d
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_MISMATCHED_PLATFORM:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 358
    :pswitch_40
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NOT_FOUND:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 357
    :pswitch_43
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_UNKNOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 356
    :cond_46
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    .line 355
    :cond_49
    sget-object p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0

    :pswitch_data_4c
    .packed-switch 0xcb20
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0xcb84
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0xcbe8
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;",
            ">;"
        }
    .end annotation

    .line 381
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 394
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-static {p0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 15
    const-class v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 1

    .line 15
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->$VALUES:[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    .line 336
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->UNRECOGNIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    if-eq p0, v0, :cond_7

    .line 340
    iget v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->value:I

    return v0

    .line 337
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gatewayprotocol.v1.ErrorOuterClass.PublicErrorCode.AnonymousClass1 (gatewayprotocol.v1.ErrorOuterClass$PublicErrorCode$1)
.class public Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$1;
.super Ljava/lang/Object;
.source "ErrorOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$1;->findValueByNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 388
    invoke-static {p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object p1

    return-object p1
.end method

###### Class gatewayprotocol.v1.ErrorOuterClass.PublicErrorCode.PublicErrorCodeVerifier (gatewayprotocol.v1.ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier)
.class public final Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier;
.super Ljava/lang/Object;
.source "ErrorOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicErrorCodeVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 399
    new-instance v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode$PublicErrorCodeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 402
    invoke-static {p1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
