###### Class gatewayprotocol.v1.ModuleOuterClass (gatewayprotocol.v1.ModuleOuterClass)
.class public final Lgatewayprotocol/v1/ModuleOuterClass;
.super Ljava/lang/Object;
.source "ModuleOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleOuterClass$Module;,
        Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;
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

###### Class gatewayprotocol.v1.ModuleOuterClass.AnonymousClass1 (gatewayprotocol.v1.ModuleOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/ModuleOuterClass$1;
.super Ljava/lang/Object;
.source "ModuleOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleOuterClass;
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

    .line 377
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.ModuleOuterClass.Module (gatewayprotocol.v1.ModuleOuterClass$Module)
.class public final Lgatewayprotocol/v1/ModuleOuterClass$Module;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ModuleOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIG_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config_:Lcom/google/protobuf/ByteString;

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 427
    new-instance v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-direct {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;-><init>()V

    .line 430
    sput-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    .line 431
    const-class v1, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 1

    .line 49
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/ModuleOuterClass$Module;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->clearName()V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->setConfig(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->clearConfig()V

    return-void
.end method

.method private clearConfig()V
    .registers 2

    .line 161
    invoke-static {}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getDefaultInstance()Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 108
    invoke-static {}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getDefaultInstance()Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 1

    .line 436
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 1

    .line 241
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ModuleOuterClass$Module;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 2

    .line 244
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
            ">;"
        }
    .end annotation

    .line 442
    sget-object v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConfig(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 2

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 120
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 121
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 377
    sget-object p2, Lgatewayprotocol/v1/ModuleOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_56

    .line 420
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 414
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 399
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 401
    const-class p2, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    monitor-enter p2

    .line 402
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 404
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 407
    sput-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 409
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

    .line 396
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object p1

    .line 385
    :pswitch_38
    const-string p1, "name_"

    const-string p2, "config_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 389
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    .line 392
    sget-object p3, Lgatewayprotocol/v1/ModuleOuterClass$Module;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 382
    :pswitch_49
    new-instance p1, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;-><init>(Lgatewayprotocol/v1/ModuleOuterClass$1;)V

    return-object p1

    .line 379
    :pswitch_4f
    new-instance p1, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-direct {p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;-><init>()V

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

.method public getConfig()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 137
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->config_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

###### Class gatewayprotocol.v1.ModuleOuterClass.Module.Builder (gatewayprotocol.v1.ModuleOuterClass$Module$Builder)
.class public final Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ModuleOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleOuterClass$Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 257
    invoke-static {}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$000()Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ModuleOuterClass$1;)V
    .registers 2

    .line 250
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConfig()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 2

    .line 365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$500(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public clearName()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 2

    .line 310
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$200(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public getConfig()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setConfig(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 3

    .line 352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$400(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 3

    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$100(Lgatewayprotocol/v1/ModuleOuterClass$Module;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .registers 3

    .line 325
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$300(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.ModuleOuterClass.ModuleOrBuilder (gatewayprotocol.v1.ModuleOuterClass$ModuleOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;
.super Ljava/lang/Object;
.source "ModuleOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModuleOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfig()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method
