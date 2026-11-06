###### Class gatewayprotocol.v1.TimestampsOuterClass (gatewayprotocol.v1.TimestampsOuterClass)
.class public final Lgatewayprotocol/v1/TimestampsOuterClass;
.super Ljava/lang/Object;
.source "TimestampsOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;,
        Lgatewayprotocol/v1/TimestampsOuterClass$TimestampsOrBuilder;
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

###### Class gatewayprotocol.v1.TimestampsOuterClass.AnonymousClass1 (gatewayprotocol.v1.TimestampsOuterClass$1)
.class public synthetic Lgatewayprotocol/v1/TimestampsOuterClass$1;
.super Ljava/lang/Object;
.source "TimestampsOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsOuterClass;
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

    .line 492
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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

###### Class gatewayprotocol.v1.TimestampsOuterClass.Timestamps (gatewayprotocol.v1.TimestampsOuterClass$Timestamps)
.class public final Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TimestampsOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TimestampsOuterClass$TimestampsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timestamps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TimestampsOuterClass$TimestampsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_DURATION_IN_FOREGROUND_FIELD_NUMBER:I = 0x3

.field public static final SESSION_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private sessionDurationInForeground_:J

.field private sessionTimestamp_:J

.field private timestamp_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 544
    new-instance v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-direct {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;-><init>()V

    .line 547
    sput-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    .line 548
    const-class v1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 1

    .line 65
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public static synthetic access$100(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;Lcom/google/protobuf/Timestamp;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->setTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method public static synthetic access$200(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;Lcom/google/protobuf/Timestamp;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->mergeTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method public static synthetic access$300(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->clearTimestamp()V

    return-void
.end method

.method public static synthetic access$400(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;J)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->setSessionTimestamp(J)V

    return-void
.end method

.method public static synthetic access$500(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->clearSessionTimestamp()V

    return-void
.end method

.method public static synthetic access$600(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;J)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->setSessionDurationInForeground(J)V

    return-void
.end method

.method public static synthetic access$700(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->clearSessionDurationInForeground()V

    return-void
.end method

.method private clearSessionDurationInForeground()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 221
    iput-wide v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->sessionDurationInForeground_:J

    return-void
.end method

.method private clearSessionTimestamp()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->sessionTimestamp_:J

    return-void
.end method

.method private clearTimestamp()V
    .registers 2

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 136
    iget v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 1

    .line 553
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method private mergeTimestamp(Lcom/google/protobuf/Timestamp;)V
    .registers 4

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_22

    .line 120
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 122
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    goto :goto_24

    .line 124
    :cond_22
    iput-object p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 126
    :goto_24
    iget p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 1

    .line 301
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 2

    .line 304
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 240
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 247
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 227
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 234
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
            ">;"
        }
    .end annotation

    .line 559
    sget-object v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSessionDurationInForeground(J)V
    .registers 3

    .line 207
    iput-wide p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->sessionDurationInForeground_:J

    return-void
.end method

.method private setSessionTimestamp(J)V
    .registers 3

    .line 163
    iput-wide p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->sessionTimestamp_:J

    return-void
.end method

.method private setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .registers 2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iput-object p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 107
    iget p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 492
    sget-object p2, Lgatewayprotocol/v1/TimestampsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 537
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 531
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 516
    :pswitch_19
    sget-object p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 518
    const-class p2, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    monitor-enter p2

    .line 519
    :try_start_20
    sget-object p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 521
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 524
    sput-object p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 526
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

    .line 513
    :pswitch_35
    sget-object p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object p1

    .line 500
    :pswitch_38
    const-string p1, "bitField0_"

    const-string p2, "timestamp_"

    const-string p3, "sessionTimestamp_"

    const-string v0, "sessionDurationInForeground_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 506
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u0002\u0003\u0002"

    .line 509
    sget-object p3, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 497
    :pswitch_4d
    new-instance p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;-><init>(Lgatewayprotocol/v1/TimestampsOuterClass$1;)V

    return-object p1

    .line 494
    :pswitch_53
    new-instance p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-direct {p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;-><init>()V

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

.method public getSessionDurationInForeground()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->sessionDurationInForeground_:J

    return-wide v0
.end method

.method public getSessionTimestamp()J
    .registers 3

    .line 151
    iget-wide v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->sessionTimestamp_:J

    return-wide v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .registers 2

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 3

    .line 84
    iget v0, p0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

###### Class gatewayprotocol.v1.TimestampsOuterClass.Timestamps.Builder (gatewayprotocol.v1.TimestampsOuterClass$Timestamps$Builder)
.class public final Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TimestampsOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TimestampsOuterClass$TimestampsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TimestampsOuterClass$TimestampsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 321
    invoke-static {}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$000()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TimestampsOuterClass$1;)V
    .registers 2

    .line 314
    invoke-direct {p0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSessionDurationInForeground()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 2

    .line 480
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$700(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public clearSessionTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 2

    .line 431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$500(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public clearTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 2

    .line 391
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$300(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public getSessionDurationInForeground()J
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->getSessionDurationInForeground()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimestamp()J
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->getSessionTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasTimestamp()Z
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public mergeTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 3

    .line 380
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 381
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$200(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setSessionDurationInForeground(J)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 4

    .line 464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 465
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$600(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;J)V

    return-object p0
.end method

.method public setSessionTimestamp(J)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 4

    .line 418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$400(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;J)V

    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/Timestamp$Builder;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 3

    .line 368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$100(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;
    .registers 3

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;->access$100(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

###### Class gatewayprotocol.v1.TimestampsOuterClass.TimestampsOrBuilder (gatewayprotocol.v1.TimestampsOuterClass$TimestampsOrBuilder)
.class public interface abstract Lgatewayprotocol/v1/TimestampsOuterClass$TimestampsOrBuilder;
.super Ljava/lang/Object;
.source "TimestampsOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimestampsOrBuilder"
.end annotation


# virtual methods
.method public abstract getSessionDurationInForeground()J
.end method

.method public abstract getSessionTimestamp()J
.end method

.method public abstract getTimestamp()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract hasTimestamp()Z
.end method
